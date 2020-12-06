var categories = document.querySelectorAll(".title-left h5 a")

for (var i = 0; i<categories.length; i++){
    categories[i].addEventListener('click', function(){
        if (this.className == 'off'){
            let selectedItem = document.querySelector(".title-left h5 a.selected")
            selectedItem.className = "off"
            this.className = "selected"
        }
    })
}