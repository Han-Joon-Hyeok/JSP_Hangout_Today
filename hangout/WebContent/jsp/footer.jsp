<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

    <footer>
        <p class="copyright">
            Copyright ⓒ 오래다녔조 <br><br>
            2020-2학기 [객체지향언어] 팀프로젝트 <br><br>
            김영웅 송원준 한준혁
        </p>
    </footer>

    <a id="TOP_BTN" href="#">👆</a>
    
    <script src="../js/base.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="../js/slick.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
      $(document).on('ready', function () {
  
        $('.one-time').slick({
          dots: false,
          slidesToShow: 3,
          slidesToScroll: 1,
          touchMove: false,
          centerMode: true,
        });
      })
    </script>

    <script>
        $(function(){
            $(window).scroll(function(){
                if ($(this).scrollTop() > 100){
                    $("#TOP_BTN").fadeIn();
                }
                else{
                    $("#TOP_BTN").fadeOut();
                }
            });

            $("#TOP_BTN").on('click', function(){
                $('html, body').stop().animate({scrollTop:0}, 1000);
                return false;
            });
        });
    </script>
</body>
</html>