<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*" %>
	
<%@ page import = "java.util.*" %>
	
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
		
		List<String> address_list = new ArrayList<String>();
		List<String> moim_titles = new ArrayList<String>();
		List<String> moim_content = new ArrayList<String>();
		List<String> moim_people = new ArrayList<String>();
		
		
		if( rs != null ){
			while(rs.next()){
				String Temp = rs.getString("moim_addr");
				String Temp_title = rs.getString("Title");
				String Temp_content = rs.getString("Txt");
				String Temp_people = rs.getString("Personnel");
				
				address_list.add(Temp);
				moim_titles.add(Temp_title);
				moim_content.add(Temp_content);
				moim_people.add(Temp_people);
			}
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
    <link rel="stylesheet" type="text/css" href="../css/map.css">
    <script>
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
      let map;
      let service;
      let infowindow;

      function initMap() {
        const seoul = new google.maps.LatLng(37.715, 126.734);
        infowindow = new google.maps.InfoWindow();
        map = new google.maps.Map(document.getElementById("map"), {
          center: seoul,
          zoom: 15,
        });
        <% if(address_list != null){
	        	for(int i=0; i<address_list.size(); i++){
   		%> 
        			moimMarker("<%= address_list.get(i) %>", "<%= moim_titles.get(i) %>", "<%= moim_content.get(i) %>", "<%= moim_people.get(i) %>");
        <%
	        	}
        }
        %>
      }
      
      function moimMarker(data, title, content, people){

		const request = {
  			query: data,  		   		
	        fields: ["name", "geometry"],};
  		    service = new google.maps.places.PlacesService(map);
  		    service.findPlaceFromQuery(request, (results, status) => {
  		    if (status === google.maps.places.PlacesServiceStatus.OK) {
  		       	for (let i = 0; i < results.length; i++) {
  		    	   	  createMarker(results[i], title, content, people);
  		        }
  		        map.setCenter(results[0].geometry.location);
  		        }
  		    });
 		}

       function createMarker(place, title, content, people) {
        const marker = new google.maps.Marker({
          map,
          position: place.geometry.location,
        });
        const contentString =
        	"<table border='1'>"+ 
        	"<tr><td>모임명</td><td>" + title + "</td></tr>"+
        	"<tr><td>모임내용</td><td>" + content + "</td></tr>"+
        	"<tr><td>모임위치</td><td>" + place.name + "</td></tr>"+
        	"<tr><td>인원제한</td><td>" + people + "</td></tr>"+
			"</table>"+
        	"<button> 신청하기 </button>"
        	;
        google.maps.event.addListener(marker, "click", () => {
          infowindow.setContent(contentString);
          infowindow.open(map, marker);
        });
      }
      
    </script>
  </head>
  <body>
    <div id="map"></div>
  </body>
</html>