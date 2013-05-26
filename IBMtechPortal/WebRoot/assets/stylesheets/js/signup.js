var formIdCount = 0;
var formCount = 1;

$(document).ready(function(){
	var array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
	for (var i in array) {
		$('#showForm_' + i).live("click", {i:i}, showFormHandler);
		$('#inputName_' + i).live("change", {i:i}, nameChangeHandler);
	}
	
	function showFormHandler(event) {
		var i = event.data.i;
		$('#showFormIcon_' + i).toggleClass("icon-chevron-down").toggleClass("icon-chevron-right");
		$('#signupFormDiv_' + i).toggle(300);
		if ($('#inputName_' + i).val() == "") {
			$('#displayName_' + i).text("请输入姓名...");
		} else {
			$('#displayName_' + i).text($('#inputName_' + i).val());
		}
	}
	
	function nameChangeHandler(event) {
		var i = event.data.i;
		if ($(this).val().length < 1) {
			$('#icon-name-' + i).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-name-' + i).text("姓名不能为空");
		} else {
			$('#icon-name-' + i).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-name-' + i).text("");
		}
	}
	
	$('.inputMobile').live("change", function() {
		var index = $(this).parent().attr('id');
		var mobileRegex =  /^([0-9]{11})?$/;
		if (!mobileRegex.test($(this).val())) {
			$('#icon-mobile-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-mobile-' + index).text("请输入正确的手机号");
		} else {
			$('#icon-mobile-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-mobile-' + index).text("");
		}
	});
	
	$('.inputEmail').live("change", function() {
		var index = $(this).parent().attr('id');
		var emailRegex = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		if (!emailRegex.test($(this).val())) {
			$('#icon-email-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-email-' + index).text("请输入正确的邮箱地址");
		} else {
			$('#icon-email-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-email-' + index).text("");
		}
	});
	
	$('.inputWorkdep').live("change", function() {
		var index = $(this).parent().attr('id');
		if ($(this).val().length < 1) {
			$('#icon-company-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-company-' + index).text("工作单位不能为空");
		} else {
			$('#icon-company-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-company-' + index).text("");
		}
	});
	
	$('.inputPostcode').live("change", function() {
		var index = $(this).parent().attr('id');
		var postcodeRegex = /^[1-9][0-9]{5}$/;
		if (!postcodeRegex.test($(this).val())) {
			$('#icon-postcode-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-postcode-' + index).text("请输入正确的邮政编码");
		} else {
			$('#icon-postcode-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-postcode-' + index).text("");
		}
	});
	
	$('.inputAddress').live("change", function() {
		var index = $(this).parent().attr('id');
		if ($(this).val().length < 1) {
			$('#icon-address-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-address-' + index).text("地址不能为空");
		} else {
			$('#icon-address-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-address-' + index).text("");
		}
	});

	$('#removeForm').live("click", function() {
		if (formCount > 1) {
			$(this).parent().parent().remove();
			--formCount;
		}
	})

	$('.sform-inner').live("click", function() {
		$('.sform-inner').removeClass("sform-active");
		$(this).addClass("sform-active");
		currentActForm = $(this).attr("id");
	});
	
});

// $('#submitFormBtn').click(function() {
// 	//submitForm();
// });

// function submitForm(){
// 	for (var i = 0; i <= formIdCount; ++i) {
// 		$('#signupForm_' + i).submit();
// 	}
// }



$('#addFormBtn').click(function() {
	if (formIdCount > 20) {
		alert("每次最多添加20人！");
		return;
	}
	++formIdCount;
	++formCount;
	var formTxt = 	"<div class='sform-inner'>" +
					"<span class='btn-controls'>" +
						"<button type='button' class='btn btn-mini btn-after' id='removeForm'><i class='icon-minus'></i></button>" +
						"<button type='button' class='btn btn-mini btn-after' id='showForm_" + formIdCount + "'><i class='icon-chevron-down' id='showFormIcon_" + formIdCount + "'></i></button>" +
						"<strong id='displayName_" + formIdCount + "'>正在填写...</strong>" +
				  	"</span>" +
				  	"<div class='row s-inputfield' id='signupFormDiv_" + formIdCount + "'>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label s-leftlabel' for='inputName_" + formIdCount + "'>姓名</label>" +
				  			"<div class='controls s-leftcontrol'>" +
				  				"<input type='text' id='inputName_" + formIdCount + "' name='name' placeholder='姓名...'>" +
				  				"<span><i class='' id='icon-name-" + formIdCount + "'></i></span>" +
		                  		"<span><small id='tip-name-" + formIdCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label s-rightlabel' for='inputGender_" + formIdCount + "'>性别</label>" +
				  			"<div class='controls s-rightcontrol'>" +
				  				"<div class='btn-group' id='inputGender_" + formIdCount + "' data-toggle='buttons-radio'>" +
				  					"<button type='button' class='btn btn-primary'>男</button>" +
				  					"<button type='button' class='btn btn-primary'>女</button>" +
				  				"</div>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label s-leftlabel' for='inputMobile_" + formIdCount + "'>手机</label>" +
				  			"<div class='controls s-leftcontrol' id='" + formIdCount + "'>" +
				  				"<input type='text' class='inputMobile' id='inputMobile_" + formIdCount + "' name='phone' placeholder='手机...'>" +
				  				"<span><i class='' id='icon-mobile-" + formIdCount + "'></i></span>" +
		                  		"<span><small id='tip-mobile-" + formIdCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label s-rightlabel' for='inputEmail_" + formIdCount + "'>Email</label>" +
				  			"<div class='controls s-rightcontrol' id='" + formIdCount +"'>" +
				  				"<input type='text' class='inputEmail' id='inputEmail_" + formIdCount + "' name='email' placeholder='邮箱...'>" +
				  				"<span><i class='' id='icon-email-" + formIdCount + "'></i></span>" +
	                  			"<span><small id='tip-email-" + formIdCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label s-leftlabel' for='inputWorkdep_" + formIdCount + "'>工作单位</label>" +
				  			"<div class='controls s-leftcontrol' id='" + formIdCount + "'>" +
				  				"<input type='text' class='inputWorkdep' id='inputWorkdep_" + formIdCount + "' name='company' placeholder='工作单位...'>" +
				  				"<span><i class='' id='icon-company-" + formIdCount + "'></i></span>" +
	                  			"<span><small id='tip-company-" + formIdCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label s-rightlabel' for='inputPostcode_" + formIdCount + "'>邮编</label>" +
				  			"<div class='controls s-rightcontrol' id='" + formIdCount + "'>" +
				  				"<input type='text' class='inputPostcode' id='inputPostcode_" + formIdCount + "' name='com_postCode' placeholder='邮编...'>" +
				  				"<span><i class='' id='icon-postcode-" + formIdCount + "'></i></span>" +
	                  			"<span><small id='tip-postcode-" + formIdCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label s-singlelabel' for='inputAddress_" + formIdCount + "'>地址</label>" +
				  			"<div class='controls s-singlecontrol' id='" + formIdCount + "'>" +
				  				"<input type='text' class='input-xlarge inputAddress' id='inputAddress_" + formIdCount + "' name='com_address' placeholder='地址...'>" +
				  				"<i class='' id='icon-address-" + formIdCount + "'></i>" +
	                  			"<span><small id='tip-address-" + formIdCount + "'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  "</div>" + 
				  "</div>";
	$('#addForm').before(formTxt);
});
