var likes = document.querySelectorAll(".icon-area span.icon.like")

for (let i = 0; i<likes.length; i++){
    likes[i].addEventListener('click', function(){

        if(likes[i].classList.contains("checked")){
            let response = confirm("좋아요를 취소하시겠습니까?")
            if (response){
                alert("좋아요를 취소했습니다.")
                likes[i].classList.remove("checked")
                likes[i].classList.add("like")
            }
        }
        else{
            let response = confirm("좋아요를 누르시겠습니까?")
            if(response){
                alert("좋아요가 추가되었습니다.")
                likes[i].classList.remove("like")
                likes[i].classList.add("checked")
            }
        }
    })
}