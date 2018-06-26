function selectTab(element){
	console.log("i ran");
	var id = element.getAttribute('data-tab');
	document.querySelector('.tab.active').classList.remove('active');
	document.querySelector('sq-btn.active').classList.remove('active');
	document.querySelector('#' + id).classList.add('active');
	element.classList.add('active');
}
