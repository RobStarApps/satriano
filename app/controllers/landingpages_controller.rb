class LandingpagesController < ApplicationController
	
 	before_filter :init_Landingpage


	def init_Landingpage
		 		@landingpage=Landingpage.new
  		
 				@search_skills=Array.new


 				@result_array=Array.new

	if session[:search_skills]==nil
			session[:search_skills]=Array.new
		
	end

	if session[:location]==nil
			session[:location]=Hash.new
		
	end

	end

	 def show

	 	#reload_skills
	 	
 

	 	instrument=Skill.where(:slug => params[:instrument]).first
	

	 	if instrument!=nil
 		
 			session[:search_skills].push(instrument.id)
 		
	 	end

	 	reload_skills

		getLocation
	
		get_results

	 end

def getLocation

	if request.location!=nil


		@location=Hash.new
		

		@location["postcode"]=request.location.data["zipcode"]

		@location["distance"]=10;
		@location["latitude"]=request.location.latitude
		@location["longitude"]=request.location.longitude
		@location["country"]=request.location.country



	 	if params[:city]!=nil
	 		city=params[:city]
	 		coordinates=Geocoder.coordinates(city+", "+request.location.country)

			@location["distance"]=10;
			@location["latitude"]=coordinates[0]
			@location["longitude"]=coordinates[1]
			
	 		@location["country"]=request.location.country
	 	end	


	 else
	 	@location=Hash.new
		@location["city"]='Hamburg'
		@location["distance"]=10;
		@location["latitude"]=53.5526
		@location["longitude"]=9.92219
		@location["country"]='germany'
	end

	session[:location]=@location
end	

def reload_location
@location=Hash.new
@location=session[:location]

end	



def get_results

plusMinusPerDistanceKM=0.008*session[:location]["distance"];

lowerLat=@location["latitude"]-plusMinusPerDistanceKM
upperLat=@location["latitude"]+plusMinusPerDistanceKM

lowerLong=@location["longitude"]-plusMinusPerDistanceKM
upperLong=@location["longitude"]+plusMinusPerDistanceKM


addresses=UserAddress.where(:latitude => lowerLat..upperLat, :longitude => lowerLong..upperLong);

addresses.each do |address|

  user_skills=address.user.user_skills.group(:skill_id).map(&:skill_id)

 if session[:search_skills].length>0 && user_skills.length>0
    
    
    check=session[:search_skills]-user_skills

 	if check.empty?
 		 result=Hash.new
 		  result["user"]=address.user
 		  result["address"]=address
	 	 @result_array.push(result)

 	 end

 end	
end





end

def add_filter



param=landingpage_params;



if params[:postcode]!=nil

	coordinates=Geocoder.coordinates(params[:postcode])
if coordinates!=nil
		
	session[:location]["latitude"]=coordinates[0]
	session[:location]["longitude"]=coordinates[1]
	session[:location]["postcode"]=params[:postcode]
end


end	

if params[:distance]!=nil

	session[:location]["distance"]=params[:distance].to_i
end	



if params[:search_skill]!=nil
	skill_id=params[:search_skill][:skill_id].to_i
	if skill_id!=0 && session[:search_skills].include?(skill_id)==false

		search_skills=Array.new
		search_skills=session[:search_skills]
		search_skills.push(skill_id)
		session[:search_skills]=search_skills
end

end

reload_location
reload_skills
get_results

 render "show"

end

def delete_filter


    session[:search_skills].delete_if  { |a| a ==params[:format].to_i } 

 
    reload_skills

	reload_location
	get_results

  render "show"

end	


def landingpage_params 
  params.permit(:skill_id, :postcode, :distance)
 end


def reload_skills
    
    if session[:search_skills]!=nil
       session[:search_skills].each do |sk|
		
				@search_skills.push(Skill.find(sk));
       end
	end
    @instruments=Skill.where(:type_id => Type.where(:slug=>'instrument').first.id) & Skill.where.not(:id=>@search_skill_ids)
    @availabilities=Skill.where(:type_id => Type.where(:slug=>'availability').first.id) & Skill.where.not(:id=>@search_skill_ids)
    @transportations=Skill.where(:type_id => Type.where(:slug=>'transportation').first.id) & Skill.where.not(:id=>@search_skill_ids)
    @targets=Skill.where(:type_id => Type.where(:slug=>'target').first.id) & Skill.where.not(:id=>@search_skill_ids)
    @languages=Skill.where(:type_id => Type.where(:slug=>'language').first.id) & Skill.where.not(:id=>@search_skill_ids)

 end



end
