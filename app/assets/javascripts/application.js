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
//= require jquery.masonry.min.js
//= require jquery.isotope.min.js
//= require fancybox
//= require bootstrap
//= require_tree .
//= require ckeditor/init
<script type="text/javascript"
								  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCz3cAvwY90pEX2qnzKga6LP8B3kTkPRzE&sensor=false">
</script>

<script type="text/javascript">

function initialize() {
        var myLatlng = new google.maps.LatLng(<%= @card.latitude %>, <%= @card.longitude %>);

        var mapOptions = {
          center: myLatlng,
          zoom: 8,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("map"),
            mapOptions);
        
         var marker = new google.maps.Marker({
			      position: myLatlng,
			      map: map,
			      title: 'Hello World!'
			  });
			}

google.maps.event.addDomListener(window, 'load', initialize);

	$("#locations").prepend('<div id="map"></div>');

</script>



