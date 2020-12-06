<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='header.jsp' %>

    <section>
        <div id="main-wrapper">

            <div id="title">
                <h1>오늘머해?</h1>
                <h3>취향 및 위치 기반 실시간 소모임</h3>
            </div>
            <div class="search-box">
                <form action="" method="POST">
                    <input type="text" name="search" class="search" placeholder="함께 하고 싶은 모임을 검색해보세요">
                    <button type="submit" class="icon big">🔍</button>
                </form>
            </div>
            <div class="create-box">
                <p>원하는 모임이 없다면?</p>
                <button class="black-btn" onclick="location.href='moim-edit.jsp'">모임 만들기</button>
            </div>
            <div class="today">
                <div class="title">
                    <div class="title-left">
                        <h4>오늘 모집 중인 모임⚡</h4>
                        <h5>번개로 만날 사람 헤쳐모여!</h5>
                    </div>
                    <div class="title-right">
                        <button class="map"><a href="#">🗺지도에서 모임 찾기</a></button>
                    </div>
                </div>
                <section class="one-time slider">
                    <div class="item">
                        <span class="icon">🕵️‍♀️</span>
                        <h3>어몽어스</h3>
                        <h4>흰색 무빙이 임포네!</h4>
                        <p>8명 참여 중!</p>
                    </div>
                    <div class="item">
                        <span class="icon">🚴‍♂️</span>
                        <h3>자전거</h3>
                        <h4>날도 좋은데 한강 ㄱ?</h4>
                        <p>15명 참여 중!</p>
                    </div>
                    <div class="item">
                        <span class="icon">🚎</span>
                        <h3>리그오브레전드</h3>
                        <h4>캐리할 기사님 모셔요</h4>
                        <p>4명 참여 중!</p>
                    </div>
                    <div class="item">
                        <span class="icon">🦾</span>
                        <h3>헬스</h3>
                        <h4>3대 100미만 환영!</h4>
                        <p>14명 참여 중!</p>
                    </div>
                    <div class="item">
                        <span class="icon">🤑</span>
                        <h3>주식 스터디</h3>
                        <h4>동학개미운동 대비반</h4>
                        <p>90명 참여 중!</p>
                    </div>
                    <div class="item">
                        <span class="icon">👨‍🌾</span>
                        <h3>모내기</h3>
                        <h4>어이 김씨! 새참 먹구 햐~</h4>
                        <p>40명 참여 중!</p>
                    </div>
                </section>
            </div>

            <div class="today category">
                <div class="title">
                    <div class="title-left">
                        <h4>이런 모임은 어때요?</h4>
                        <h5>전국 각지에서 다양한 모임을 즐겨보세요!</h5>
                    </div>
                    <div class="title-right">
                        <button class="map"><a href="category.jsp">👀전체 카테고리에서 보기</a></button>
                    </div>
                </div>
                <div class="category-list">
                    <div class="list-item">
                        <span class="icon">📕</span>
                        <h3>독서</h3>
                        <h4>마음의 양식을 쌓아보아요</h4>
                        <p>40개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🎞</span>
                        <h3>영화</h3>
                        <h4>팝콘 남았는데 같이 먹으면서 보실?</h4>
                        <p>5개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🎨</span>
                        <h3>미술</h3>
                        <h4>미대생과 함께하는 원데이 클래스</h4>
                        <p>9개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🏓</span>
                        <h3>탁구</h3>
                        <h4>마음의 양식을 쌓아보아요</h4>
                        <p>5개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🏊‍♀️</span>
                        <h3>수영</h3>
                        <h4>음파음파 음파파</h4>
                        <p>3개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🧘‍♀️</span>
                        <h3>요가</h3>
                        <h4>힐링으로 떠나는 요가 여행.</h4>
                        <p>8개 모임</p>
                    </div>
                </div>
            </div>
            
            <button class="map-button" onclick="location.href='#'">
                <h2>🗺모임지도 전체 보기</h2>
            </button>

        </div>
    </section>

<%@ include file='footer.jsp' %>