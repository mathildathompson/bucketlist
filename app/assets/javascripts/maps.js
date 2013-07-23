var markers=[];

var map; 

  function initMap() {
    var mapOptions = {
      center: new google.maps.LatLng(48.8530, 2.3498),
      zoom:12,
      mapTypeControlOptions: {
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
      }
    };

    var styles = [
  {
    featureType: "road",
    elementType: "geometry",
    stylers: [
    { lightness: 100 },
    { visibility: "simplified" }
    ]
  },{
    featureType: "road",
    elementType: "labels",
    stylers: [
    { visibility: "off" }
    ]
  }
  ];

  var styledMap = new google.maps.StyledMapType(styles,
   {name: "Styled Map"});

  map = new google.maps.Map($("#map-canvas")[0], mapOptions);
  map.mapTypes.set('map_style', styledMap);
  map.setMapTypeId('map_style');
};

  var latlng = [];

  function addMarker(latitude, longitude, title) {
    var markerLatlng = new google.maps.LatLng(latitude, longitude);
    var marker = new google.maps.Marker({
      		position: markerLatlng,
      		map : map, 
      		title : title
      	});
      }

      function deleteOverlays() {
        clearOverlays();
        markers = [];
      }

  