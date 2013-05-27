var formIdCount = 0;
var formCount = 1;
var validation = true;

$(document).ready(function(){

	$('#showForm').live("click", function() {
		$(this).parent().parent().find('#showFormIcon').toggleClass("icon-chevron-down").toggleClass("icon-chevron-right");
		$(this).parent().parent().find('#signupFormDiv').toggle(300);
		if ($(this).parent().parent().find('#inputName').val() == "") {
			$(this).parent().parent().find('#displayName').text("请输入姓名...");
		} else {
			$(this).parent().parent().find('#displayName').text($(this).parent().parent().find('#inputName').val());
		}
	});

	$('.inputName').live("change", function() {
		if ($(this).val().length < 1) {
			$(this).parent().find('#icon-name').removeClass("icon-ok").addClass("icon-remove").show();
			$(this).parent().find('#tip-name').text("姓名不能为空");
			validation = validation && false;
		} else {
			$(this).parent().find('#icon-name').removeClass("icon-remove").addClass("icon-ok").show();
			$(this).parent().find('#tip-name').text("");
			validation = validation && true;
		}
	});
	
	$('.inputMobile').live("change", function() {
		var index = $(this).parent().attr('id');
		var mobileRegex =  /^([0-9]{11})?$/;
		if (!(mobileRegex.test($(this).val()) && $(this).val().length >= 1)) {
			$('#icon-mobile-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-mobile-' + index).text("请输入正确的手机号");
			validation = validation && false;
		} else {
			$('#icon-mobile-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-mobile-' + index).text("");
			validation = validation && true;
		}
	});
	
	$('.inputEmail').live("change", function() {
		var index = $(this).parent().attr('id');
		var emailRegex = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		if (!emailRegex.test($(this).val())) {
			$('#icon-email-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-email-' + index).text("请输入正确的邮箱地址");
			validation = validation && false;
		} else {
			$('#icon-email-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-email-' + index).text("");
			validation = validation && true;
		}
	});
	
	$('.inputWorkdep').live("change", function() {
		var index = $(this).parent().attr('id');
		if ($(this).val().length < 1) {
			$('#icon-company-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-company-' + index).text("工作单位不能为空");
			validation = validation && false;
		} else {
			$('#icon-company-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-company-' + index).text("");
			validation = validation && true;
		}
	});
	
	$('.inputPostcode').live("change", function() {
		var index = $(this).parent().attr('id');
		var postcodeRegex = /^[1-9][0-9]{5}$/;
		if (!postcodeRegex.test($(this).val())) {
			$('#icon-postcode-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-postcode-' + index).text("请输入正确的邮政编码");
			validation = validation && false;
		} else {
			$('#icon-postcode-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-postcode-' + index).text("");
			validation = validation && true;
		}
	});
	
	$('.inputAddress').live("change", function() {
		var index = $(this).parent().attr('id');
		if ($(this).val().length < 1) {
			$('#icon-address-' + index).removeClass("icon-ok").addClass("icon-remove").show();
			$('#tip-address-' + index).text("地址不能为空");
			validation = validation && false;
		} else {
			$('#icon-address-' + index).removeClass("icon-remove").addClass("icon-ok").show();
			$('#tip-address-' + index).text("");
			validation = validation && true;
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

	$('#male').live("click", function() {
		$(this).parent().children('#ih-gender').val("male");
	})

	$('#female').live("click", function() {
		$(this).parent().children('#ih-gender').val("female");
	})
	
});

$('#signupForm').submit(function(e) {
	validation = true;
	$('.inputName').change();
	$('.inputMobile').change();
	$('.inputEmail').change();
	$('.inputWorkdep').change();
	$('.inputPostcode').change();
	$('.inputAddress').change();
	if (!validation) {
		e.preventDefault();
	}
});

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
						"<button type='button' class='btn btn-mini btn-after' id='showForm'><i class='icon-chevron-down' id='showFormIcon'></i></button>" +
						"<strong id='displayName'>正在填写...</strong>" +
				  	"</span>" +
				  	"<div class='row s-inputfield' id='signupFormDiv'>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label s-leftlabel' for='inputName_" + formIdCount + "'>姓名</label>" +
				  			"<div class='controls s-leftcontrol'>" +
				  				"<input type='text' class='inputName' id='inputName_" + formIdCount + "' name='name' placeholder='姓名...'>" +
				  				"<span><i class='' id='icon-name'></i></span>" +
		                  		"<span><small id='tip-name'></small></span>" +
				  			"</div>" +
				  		"</div>" +
				  		"<div class='control-group pull-left'>" +
				  			"<label class='control-label s-rightlabel' for='inputGender_" + formIdCount + "'>性别</label>" +
				  			"<div class='controls s-rightcontrol'>" +
				  				"<div class='btn-group' id='inputGender_" + formIdCount + "' data-toggle='buttons-radio'>" +
				  					"<button type='button' class='btn btn-primary' id='male'>男</button>" +
				  					"<button type='button' class='btn btn-primary' id='female'>女</button>" +
				  					"<input type='hidden' id='ih-gender' name='sex' value='male'>" +
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
