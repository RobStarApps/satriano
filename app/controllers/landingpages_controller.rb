class LandingpagesController < ApplicationController
	

	 def show

	 	#reload_skills
	 	
  		@landingpage=Landingpage.new
  		
 	
		@search_skills=Array.new

	 	instrument=Skill.where(:slug => params[:instrument]).first

	 	

	 	if instrument!=nil
 		
 			@search_skills.push(instrument)
 		
	 	end

	 	reload_skills


	 	if request.location!=nil


		@location=Hash.new
		@location["city"]=request.location.city
		@location["latitude"]=request.location.latitude
		@location["longitude"]=request.location.longitude
		@location["country"]=request.location.country



	 	if params[:city]!=nil
	 		city=params[:city]
	 		coordinates=Geocoder.coordinates(city+", "+request.location.country);

		
			@location["latitude"]=coordinates[0];
			@location["longitude"]=coordinates[1];

	 		@location["country"]=request.location.country
	 	end	


	 else
	 	@location=Hash.new
		@location["city"]='Hamburg'
		@location["latitude"]=53.5526
		@location["longitude"]=9.92219
		@location["country"]='germany'
	end

	 end




def add_filter

param=landingpage_params;

search_skills=Array.new
search_skills=session[:search_skills]
search_skills.push(Skill.find(param[:skill_id]))

session[:search_skills]=search_skills

 show
 render "show"

end

def delete_filter


    session[:search_skills].delete_if {|key, value| value == Skill.find(params[:format])} 
     
    redirect_to guitar_path

end	


def landingpage_params 
  params.require(:search_skill).permit(:skill_id)
 end


def reload_skills
    
    if session[:search_skills]!=nil
       session[:search_skills].each do |sk|
		
				@search_skills.push(sk);
       end
	end
    @instruments=Skill.where(:type_id => Type.where(:slug=>'instrument').first.id) & Skill.where.not(:id=>@search_skill_ids)
    @availabilities=Skill.where(:type_id => Type.where(:slug=>'availability').first.id) & Skill.where.not(:id=>@search_skill_ids)
    @transportations=Skill.where(:type_id => Type.where(:slug=>'transportation').first.id) & Skill.where.not(:id=>@search_skill_ids)
    @targets=Skill.where(:type_id => Type.where(:slug=>'target').first.id) & Skill.where.not(:id=>@search_skill_ids)
    @languages=Skill.where(:type_id => Type.where(:slug=>'language').first.id) & Skill.where.not(:id=>@search_skill_ids)

 end

  def user_skill_params 
  params.require(:user_skill).permit(:skill_id)
  end

end
