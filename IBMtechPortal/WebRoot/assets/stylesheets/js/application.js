$(document).ready(function() {
	$('ul#e-ul li:last').addClass('el-last');
	var introAlbum = $('.intro-gallery').tn3({
		skinDir:"assets/tn3album/skins",
		skin: "tn3e",
		delay: 3000,
		autoplay: true,
		imageClick:"fullscreen",
		image:{
			maxZoom:1.5,
			crop:true,
			clickEvent:"dblclick",
			transitions:[{
				type:"blinds"
				},{
				type:"grid"
				},{
				type:"grid",
				duration:460,
				easing:"easeInQuad",
				gridX:1,
				gridY:8,
				// flat, diagonal, circle, random
				sort:"random",
				sortReverse:false,
				diagonalStart:"bl",
				// fade, scale
				method:"scale",
				partDuration:360,
				partEasing:"easeOutSine",
				partDirection:"left"
			}]
		}
	});
	$('.tn3-gallery div:last').remove();
	console.log('hi');
});

function iTopbar(page) {
	$('#' + page).children("a").addClass("active");
}

function iSidebar(page) {
	$('#' + page).children("a").addClass("active");
}