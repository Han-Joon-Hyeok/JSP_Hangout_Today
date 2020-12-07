<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*" %>
	
<%@ page import= "org.Hangout.hangoutDAO" %>

<%
		String[] datetime = new String[2];
		
		ResultSet rs = null;
		hangoutDAO dao = hangoutDAO.getInstance();
		try{
			rs = dao.showHangout();
		} catch(SQLException e) {
		out.print("exception : " + e.toString());
		}
%>

<!DOCTYPE html>
<html>
  <head>
    <title>오늘머해 : 실시간 모임 위치 찾기</title>
    
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBd5KOpYuVdgz1cHoGUqNXrv0URkf4hIHE&callback=initMap&libraries=places&v=weekly"
      defer
    ></script>
    <style type="text/css">
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }

      /* Optional: Makes the sample page fill the window. */
      html,
      body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    <script>
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
      let map;
      let service;
      let infowindow;

      function initMap() {
        const sydney = new google.maps.LatLng(37.715, 126.734);
        infowindow = new google.maps.InfoWindow();
        map = new google.maps.Map(document.getElementById("map"), {
          center: sydney,
          zoom: 15,
        });
        const request = {
        
       		query:
        <% if(rs != null){
        	while(rs.next()){
   		%>
   			 "<%=rs.getString("moim_addr") %> ",
		<%
        	}
        }
        
        %>
          //query: "쇠재로 133",
          fields: ["name", "geometry"],
        };
        service = new google.maps.places.PlacesService(map);
        service.findPlaceFromQuery(request, (results, status) => {
          if (status === google.maps.places.PlacesServiceStatus.OK) {
            for (let i = 0; i < results.length; i++) {
              createMarker(results[i]);
            }
            map.setCenter(results[0].geometry.location);
          }
        });
      }
      
      
      
      function moimMarker(request){
    	  
      }

       function createMarker(place) {
        const marker = new google.maps.Marker({
          map,
          position: place.geometry.location,
        });
        google.maps.event.addListener(marker, "click", () => {
          infowindow.setContent(place.name);
          infowindow.open(map);
        });
      }
      
    </script>
  </head>
  <body>
    <div id="map"></div>
  </body>
</html>