// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap


function refreshMap(canvas, latitude, longitude, marks){



google.maps.visualRefresh = true;

var gmap;


function initialize() {
	 //geocoder = new google.maps.Geocoder();
  var mapOptions = {
    zoom: 10,
    center: new google.maps.LatLng(latitude, longitude)
  };
  gmap = new google.maps.Map(document.getElementById(canvas),
      mapOptions);

   	for(i=0; i<marks.length;i++){

   		  myLatlng = new google.maps.LatLng(marks[i].latitude, marks[i].longitude);
   
         marker = new google.maps.Marker({
            map: gmap,
            position: myLatlng,
            title:marks[i].title
        });
   	}

}


google.maps.event.addDomListener(window, 'load', initialize);


}


