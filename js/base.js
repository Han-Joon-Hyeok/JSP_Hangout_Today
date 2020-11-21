var burger  = document.getElementById('line-wrapper')
var menu  = document.getElementById('menu')

burger.addEventListener('click', function() {
	if (this.className == 'on') {
        this.classList.remove('on');
        menu.classList.remove('on');
    }
	else {
        this.classList.add('on');
        menu.classList.add('on');
    }
});

