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
                            <a href="moim.jsp" class="off">모임 게시판</a>
                            <a href="review.jsp" class="selected">리뷰 게시판</a>
                        </h5>
                    </div>
                    <div class="title-right">
                        <button class="map"><a href="review-edit.jsp">✍ 리뷰 작성하기</a></button>
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
                    <div class="review">
                        <div class="user-info">
                            <div class="icon-area">
                                <span class="icon">👱‍♂️</span>
                            </div>
                            <div class="user-area">
                                <h3>서대문구핵주먹</h3>
                                <p>서울 서대문구 <span>작성일 : 2020.11.16</span></p>
                            </div>
                        </div>
                        <div class="moim-review">
                            <h3>모임명 : <span>[다함께 모여서 빡독!]</span></h3>
                            <hr>
                            <p>
                                이번에 모임에 처음 참여해봤는데, 너무 재미있었어요! 다음에도 이런 모임 있으면 꼭 가려구요! 다른 분들도 다함께 모여서 놀아봐요!
                            </p>
                        </div>
                        <div class="user-response">
                            <div class="icon-area">
                                <span class="icon like"></span>
                                <span>좋아요 <span class="like">3</span></span>
                                <span>댓글 <span class="comment">2</span></span>
                            </div>
                            <div class="comments">
                                <div class="user">
                                    <div class="icon-area">
                                        <span class="icon">😍</span>
                                    </div>
                                    <div class="user-area">
                                        <span class="user-name">불암산다람쥐</span>
                                        <span class="time">3시간 전</span>
                                        <p class="content">핵주먹님 실물영접해서 영광이었습니다ㅎㅎ 다음에 또 뵈요!</p>
                                    </div>
                                </div>
                            </div>
                            <div class="comments">
                                <div class="user">
                                    <div class="icon-area">
                                        <span class="icon">😂</span>
                                    </div>
                                    <div class="user-area">
                                        <span class="user-name">은평구전기톱</span>
                                        <span class="time">1시간 전</span>
                                        <p class="content">만나서 너무 반가웠어요! 자주 뵐 수 있으면 좋겠어요 ㅎㅎ</p>
                                    </div>
                                </div>
                            </div>
                            <div class="create-comment">
                                <form action="">
                                    <div class="icon-area">
                                        <span class="icon">🤗</span>
                                        <input type="text" placeholder="댓글 추가하기" class="input-comment">
                                    </div>
                                    <div class="button-area">
                                        <button class="btn cancel" type="reset">
                                            취소
                                        </button>
                                        <button class="btn submit" type="submit">
                                            작성
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="review">
                        <div class="user-info">
                            <div class="icon-area">
                                <span class="icon">👱‍♂️</span>
                            </div>
                            <div class="user-area">
                                <h3>미국산코알라</h3>
                                <p>경기도 오산시 <span>작성일 : 2020.12.07</span></p>
                            </div>
                        </div>
                        <div class="moim-review">
                            <h3>모임명 : <span>[꽐라와 콜라 중 택1을 해라 너]</span></h3>
                            <p>
                                너무 의미있는 모임이었어요 :) 요즘은 코로나 때문에 모이기 많이 힘들어서 소규모로 진행되서 오히려 좋았던 것 같아요!
                            </p>
                        </div>
                        <div class="user-response">
                            <div class="icon-area">
                                <span class="icon like"></span>
                                <span>좋아요 <span class="like">0</span></span>
                                <span>댓글 <span class="comment">0</span></span>
                            </div>
                        
                            <div class="create-comment">
                                <form action="">
                                    <div class="icon-area">
                                        <span class="icon">🤗</span>
                                        <input type="text" placeholder="댓글 추가하기" class="input-comment">
                                    </div>
                                    <div class="button-area">
                                        <button class="btn cancel" type="reset">
                                            취소
                                        </button>
                                        <button class="btn submit" type="submit">
                                            작성
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    
    <script src="../js/review.js"></script>
    
    
<%@ include file='footer.jsp' %>