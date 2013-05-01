// $(document).ready(function() {
// 	function initialize() {
//         var mapOptions = {
//           center: new google.maps.LatLng(40.7399977, -73.9900976),
//           zoom: 6,
//           mapTypeId: google.maps.MapTypeId.ROADMAP
//         };
//         var map = new google.maps.Map(document.getElementById("map-canvas"),
//             mapOptions);
//       }
//       google.maps.event.addDomListener(window, 'load', initialize);

var map;

         function initMap() {
         var mapOptions = {
         center: new google.maps.LatLng(40.7399977, -73.9900976),
         zoom:12,
         mapTypeId: google.maps.MapTypeId.ROADMAP
         };

       map = new google.maps.Map($("#map-canvas") [0], mapOptions);
       }

      function addMarker(latitude, longitude, title) {
      	var marker = new google.maps.Marker({
      		position:new google.maps.LatLng(40.7399977, -73.9900976), 
      		map : map, 
      		title : "Hello World"
      	});
      }