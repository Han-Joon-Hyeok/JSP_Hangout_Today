<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file='header.jsp' %>


    <section>
        <div id="main-wrapper">
            <div id="title">
                <h1>오늘머해?</h1>
                <h3>취향 및 위치 기반 실시간 소모임</h3>
            </div>

            <div class="today category">
                <div class="title">
                    <div class="title-left">
                        <h4>게시판 목록</h4>
                        <h5>
                            <a href="moim.jsp" class="selected">모임 게시판</a>
                            <a href="review.jsp" class="off">리뷰 게시판</a>
                        </h5>
                    </div>
                    <div class="title-right">
                        <button class="map"><a href="moim-edit.jsp">🗽 새로운 모임 만들기</a></button>
                    </div>
                </div>
                <div class="moim-wrapper">
                    <div class="list-item moim">
                        <span class="icon">📕</span>
                        <h3>독서</h3>
                        <h4>마음의 양식을 쌓아보아요</h4>
                        <p>40개 모임</p>
                    </div>
                </div>
                <div class="category-list">
                    <%-- <div class="list-item post">
                        <span class="icon">👩</span>
                        <h3>경기도 파주시 금촌2동</h3>
                        <h4>렘브란트와 고대 미술사에 관해서</h4>
                        <p>(2020.11.17 18:00~20:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">👧</span>
                        <h3>서울특별시 서대문구 남가좌동</h3>
                        <h4>독서 토론 같이 하실래요?</h4>
                        <p>(2020.11.18 14:00~15:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">👶</span>
                        <h3>서울특별시 마포구 서교동</h3>
                        <h4>비트코인과 주식, 투자의 왕도</h4>
                        <p>(2020.11.18 19:00~20:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">👳‍♂️</span>
                        <h3>대구광역시 중구 성내1동</h3>
                        <h4>대구 역사의 시작, 그 흔적을 찾아서</h4>
                        <p>(2020.11.19 10:00~12:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">👮‍♀️</span>
                        <h3>서울특별시 용산구 남영동</h3>
                        <h4>독립운동의 뿌리를 찾아서</h4>
                        <p>(2020.11.20 14:00~16:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">💂‍♂️</span>
                        <h3>강원도 강릉시 송정동</h3>
                        <h4>도깨비는 진짜 있을까?</h4>
                        <p>(2020.11.21 18:30~20:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">👷‍♀️</span>
                        <h3>제주특별자치도 서귀포시 정방동</h3>
                        <h4>이중섭, 파란만장했던 발자취</h4>
                        <p>(2020.11.22 14:00~15:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">🦸‍♂️</span>
                        <h3>전라남도 목포시 용당2동</h3>
                        <h4>같이 책 읽어요 :)</h4>
                        <p>(2020.11.22 18:00~20:00)</p>
                    </div> --%>
                    <div class="list-item post">
                    	<span class="icon">🦸‍♂️</span>
                        <h3>전라남도 목포시 용당2동</h3>
                        <h4>같이 책 읽어요 :)</h4>
                        <p>(2020.11.22 18:00~20:00)</p>
                    	<div class="black-bg">
                    		<div class="modal-wrap">
                    			<div class="modal-close">
                    				<a href="">close</a>
                    			</div>
	                    		<div class="modal-content">
	                    			<form method="POST" action="moim-submit.jsp">
	                    				<label for="review-title" class="block">모임 주최자 : </label><input type="text" name="title" id="review-title" class="" value="" readonly>
                                    	<label for="review-content" class="block">모임내용 : </label><textarea name="content" id="review-content" readonly ></textarea>
                                    	<label for="review-location" class="block">모임위치 : </label><input type="text" name="location" id="review-location" class=""  readonly>
                                    	<label for="review-people" class="block">인원현황 : </label> <input type="text" readonly>
                                    	<input class="black-btn" type="submit" value="신청하기">
	                    			</form>
	                    			
	                    		</div>
                    		</div>
                    	</div>
                    </div>
                    
                </div>
            </div>

            <button class="map-button" onclick="location.href='#'">
                <h2>🗺지도에서 모임 전체 보기</h2>
            </button>
        </div>
    </section>
    
    <script>
 	
   	 function popUp() {
   		 this.querySelector(".black-bg").classList.add("on");
   		 this.querySelector(".modal-wrap").classList.add("on");
	 }   
   	    
   	 function popClose() {
   		
   		//var post = this.parentNode.parentNode.parentNode;
   		//console.log(post.querySelector(".black-bg"));
   		//post.querySelector(".black-bg").classList.remove("on");
   		//post.querySelector(".modal-wrap").close();
   		
 	 }

     var posts = document.querySelectorAll('.list-item.post');
     
     var modal = document.querySelectorAll('.mordal_wrap');
     var black_bg = document.querySelectorAll('.black-bg');
     
     for(let i=0; i<posts.length; i++){
         posts[i].addEventListener('click', popUp);
         close_btn = posts[i].querySelector(".modal-close");
         close_btn.addEventListener('click', popClose);
     }
     
	</script>
    
<%@ include file='footer.jsp' %>