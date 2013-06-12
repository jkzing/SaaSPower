$(document).ready(function() {
	$('ul#e-ul li:last').addClass('el-last');
	console.log('hi');
});

function iTopbar(page) {
	$('#' + page).children("a").addClass("active");
}

function iSidebar(page) {
	$('#' + page).children("a").addClass("active");
}