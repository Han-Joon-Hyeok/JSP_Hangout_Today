// 좋아요 추가 및 감소

var likes = document.querySelectorAll(".icon-area span.icon.like")
var like_num = document.querySelectorAll(".icon-area span.like_num")

for (let i = 0; i<likes.length; i++){
    likes[i].addEventListener('click', function(){
	var current_like = parseInt(like_num[i].innerHTML);
        if(likes[i].classList.contains("checked")){
            let response = confirm("좋아요를 취소하시겠습니까?")
            if (response){
                alert("좋아요를 취소했습니다.")
                likes[i].classList.remove("checked")
                likes[i].classList.add("like")
				current_like -= 1;
				
            }
        }
        else{
            let response = confirm("좋아요를 누르시겠습니까?")
            if(response){
                alert("좋아요가 추가되었습니다.")
                likes[i].classList.remove("like")
                likes[i].classList.add("checked")
				
				current_like += 1;
				
				
            }
        }
		like_num[i].innerHTML = current_like;
    })
}

// 댓글 갯수 세기

var post_num = document.querySelectorAll(".comments");
var comment_btn = document.querySelector(".btn.submit");
var comment_num = document.querySelectorAll(".icon-area span.comment_num");
for(let i=0; i<post_num.length; i++){
	window.addEventListener('load', function(){
		comment_num[i].innerHTML = post_num.length;
	})
}