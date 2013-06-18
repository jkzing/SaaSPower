var trueStr = new String('true');

$(document).ready(function() {
	$('#nbtn-search').live('click', function() {
		$.post('cdug/ajax/cdugkeynews', 
				{
					key: $('#appendedPrependedInput').val()
				}, function(data, status) {
					if (status == 'success') {
						console.log(data);
						newsList = data.newslist;
						$('#n-list').empty();
						$.each(newsList, function(i, item) {
							var newsHTML = '<ul class="news-list pull-left">'; 
							if(item.pic == null) {
								newsHTML += '<li class="pull-left"><img src="assets/img/news_default.jpg"></li>';
							} else {
								newsHTML += '<li class="pull-left"><img src="' + item.pic.URL + '"></li>';
							}
							newsHTML += '<li><h4><a href="cdug/info/news?id=' + item.id + '">' + item.title + '</a></h4></li>' +
										'<li><strong>发布时间：' + item.createTime + '</strong></li>' +
										'<li>' + item.content + '</li></ul>';
							$('#n-list').append(newsHTML);
						});
					} else {
						
					}
		});
	});
	
	$('#nslc-span').live('change', function() {
		$.post('cdug/ajax/cdugspannews', 
				{
					span: $(this).val()
				}, function(data, status) {
					if (status == 'success') {
						console.log(data);
						newsList = data.newslist;
						$('#n-list').empty();
						$.each(newsList, function(i, item) {
							var newsHTML = '<ul class="news-list pull-left">'; 
							if(item.pic == null) {
								newsHTML += '<li class="pull-left"><img src="assets/img/news_default.jpg"></li>';
							} else {
								newsHTML += '<li class="pull-left"><img src="' + item.pic.URL + '"></li>';
							}
							newsHTML += '<li><h4><a href="cdug/info/news?id=' + item.id + '">' + item.title + '</a></h4></li>' +
										'<li><strong>发布时间：' + item.createTime + '</strong></li>' +
										'<li>' + item.content + '</li></ul>';
							$('#n-list').append(newsHTML);
						});
					} else {
						
					}
		});
	});

	$('#mb-logon').live('click', function() {
		$.post('cdug/ajax/checkusr', 
				{
					userName: $(this).parent().find('#usrname').val(), 
					password: $(this).parent().find('#passwd').val()
				}, function(data, status) {
					if (status == 'success') {
						console.log(data);
						var okStr = new String(data.ok);
						if (okStr.valueOf() == trueStr.valueOf()) {
							$('#ml-form').submit();
						} else {
							alert("用户名或密码错误！");
						}
					} else {
						
					}
		});
	});
	
	$('#b-logon').live('click', function() {
		$.post('cdug/ajax/checkusr', 
				{
					userName: $(this).parent().parent().parent().find('#inputEmail').val(), 
					password: $(this).parent().parent().parent().find('#inputPasswd').val()
				}, function(data, status) {
					if (status == 'success') {
						console.log(data);
						var okStr = new String(data.ok);
						if (okStr.valueOf() == trueStr.valueOf()) {
							$('#l-form').submit();
						} else {
							alert("用户名或密码错误！");
						}
					} else {
						
					}
		});
	});
});

window.alert = function(txt)
{
	var shield = document.createElement("DIV");
	shield.id = "shield";
	shield.style.position = "absolute";
	shield.style.left = "0px";
	shield.style.top = "0px";
	shield.style.width = "100%";
	shield.style.height = document.body.scrollHeight+"px";
	shield.style.background = "#333";
	shield.style.textAlign = "center";
	shield.style.zIndex = "10000";
	shield.style.filter = "alpha(opacity=0)";
	var alertFram = document.createElement("DIV");
	alertFram.id="alertFram";
	alertFram.style.position = "absolute";
	alertFram.style.left = "50%";
	alertFram.style.top = "50%";
	alertFram.style.marginLeft = "-150px";
	alertFram.style.marginTop = "-30px";
	alertFram.style.width = "300px";
	alertFram.style.height = "80px";
	alertFram.style.background = "#ccc";
	alertFram.style.textAlign = "center";
	alertFram.style.lineHeight = "150px";
	alertFram.style.zIndex = "10001";
	strHtml = "<ul style='list-style:none;margin:0px;padding:0px;width:100%'> ";
	strHtml += " <li style='background:#2668b4;text-align:left;padding-left:20px;font-size:14px;font-weight:bold;height:25px;line-height:25px;border:1px solid #F9CADE;'>[系统提示]</li> ";
	strHtml += " <li style='background:#fff;text-align:center;font-size:12px;height:80px;line-height:80px;border-left:1px solid #F9CADE;border-right:1px solid #F9CADE;'>"+txt+"</li> ";
	strHtml += " <li style='background:#FDEEF4;text-align:center;font-weight:bold;height:25px;line-height:25px; border:1px solid #F9CADE;'><input type='button' value='确 定' onclick='doOk()' /></li> ";
	strHtml += "</ul> ";
	alertFram.innerHTML = strHtml;
	document.body.appendChild(alertFram);
	document.body.appendChild(shield);
	var c = 0;
	this.doAlpha = function(){
	    if (c++ > 20){clearInterval(ad);return 0;}
	    shield.style.filter = "alpha(opacity="+c+");";
}
 var ad = setInterval("doAlpha()",5);
 this.doOk = function(){
     alertFram.style.display = "none";
     shield.style.display = "none";
 }
 alertFram.focus();
 document.body.onselectstart = function(){return false;};
}