var e = document.getElementById('line-wrapper')
e.addEventListener('click', function() {
	if (this.className == 'on') this.classList.remove('on');
	else this.classList.add('on');
});