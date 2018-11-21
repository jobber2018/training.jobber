<?php 
	include("header.php");
?>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="/favicon.ico">
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    
    <title>Đăng ký khóa học</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    
    <meta property="og:site_name" content="ITTraining.vn"/>
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content=""/>
    <meta property="og:type" content="article"/>
    <link href="/style/mdbootstrap4/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet"  href="/style/mdbootstrap4/css/mdb.min.css" type="text/css" media="all">
    <link rel="stylesheet"  href="/style/mdbootstrap4/css/style.css" type="text/css" media="all">
    
    <!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/docs/4.1/examples/carousel/carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
    .bg-dark {
		background-color: #188ac9!important;
	}
    </style>
    </head>
<body>
<?php include_once("menu.php")?>
<style>
.carousel{margin-bottom:15px}
.md-accordion{padding-top:15px}
.counter-up .cover {
    background-color: rgba(0,7,11,.8);
}
.page-header {
    margin: 0 0 60px;
    padding: 0;
    border: none;
}
.page-header h2 {
    text-transform: uppercase;
}
.counter-up .fact-inner .counter {
    font-size: 60px;
}
#counter-section, #counter-up-trigger{height:530px}
.cover {
    position: absolute;
    background-color: rgba(0, 7, 9, 0.66);
    padding: 20px;
}
.cover {
    height: 100%;
}
.cover {
    left: 0;
    top: 0;
    width: 100%;
}
.counter-up {
    position: relative;
    background-color: #171717;
    padding: 80px 0 50px;
}
.text-white {
    color: #FFF;
}
.parallax {
    position: relative;
    background-position: 0 0;
    background-attachment: fixed;
    -webkit-background-size: cover;
    background-size: cover;
}
.marketing {
    box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
}
.card-header h5 {
    font-size: 1.1rem;
}
.accordion.md-accordion.accordion-5 .card .card-header {
    background-color: #188ac9;
    -webkit-transition: .3s;
    -o-transition: .3s;
transition: .3s;
}
</style>
<main role="main">

  <section id="counter-section">
    <div id="counter-up-trigger" class="counter-up text-white parallax" data-stellar-background-ratio="0.5" style="background-image: url(https://www.maintenancebooker.org.uk/images/headers/register-pageheader.jpg); background-position: 0px 20px;">
      <div class="cover"></div>
      <div class="page-header-wrapper">
        <div class="container">
          <div class="page-header text-center wow fadeInDown animated" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInDown;">
            <h2 class="name-course">đăng ký <?php echo $_GET["course-name"]; ?></h2>
            <div class="devider"></div>
                <p class="subtitle">Vui lòng để lại thông tin liên lạc, chúng tôi sẽ liên lạc lại ngay sau khi nhận được yêu cầu.</p>
          </div>
        </div>
      </div>
      <div class="container">
      	<div class="row">
        	<div class="col-md-4 mb-4"></div>
            <div class="col-md-4 mb-4" style="background: rgba(0, 139, 204, 0.43); padding-top: 20px;">
            	<p><input id="name" name="name" class="contactname inp" style="width:100%" placeholder="Họ và Tên" value="Hoang Manh Truong"></p>
                <p><input id="email" name="email" class="contactemail inp" style="width:100%" placeholder="Email" value="truonghm1980@gmail.com"></p>
                <p><input id="phone" name="phone" class="contactphone inp" style="width:100%" placeholder="Phone" value="0936408"></p>
                <p><button class="btn submitbtn" style="background: #008bcc;" onClick="sendMail();">Đăng ký</button></p>
            </div>
            <div class="col-md-4 mb-4"></div>
        </div>
        
    </div>
  </section>
  </div>
  <script type="text/javascript">
  	function sendMail(){
		var name = $("#name").val();
		var email = $("#email").val();
		var phone = $("#phone").val();
		
		if(name==""){
			alert("Vui lòng nhập tên liên hệ!");
			$("#name").focus();
			return;
		}else if(email=="" || !validateEmail(email)){
			alert("Vui lòng nhập đúng định dạng email");
			$("#email").focus();
			return;
		}else if(!validatePhone(phone)){
			alert("Vui lòng nhập đúng điện thoại");
			$("#phone").focus();
			return;
		}
		var data = {
			name:name,
			email:email,
			phone:phone
		};
		
		console.log(data);
		$.ajax({
		  type: "POST",
		  contentType:"application/json; charset=utf-8",
		  dataType : 'json',
		  url: "send-mail-dang-ky-khoa-hoc.html",
		  data: JSON.stringify(data),
		  success: function(result)
           {
			   if(result.success==true){ console.log(result.success);}
			   else{console.log(result.message);} 
           }
		});
	}
	
	function validateEmail($email) {
	  var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	  return emailReg.test( $email );
	}
	function validatePhone(phone) {
		var filter = /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
		if (filter.test(phone)) {
			return true;
		}
		else {
			return false;
		}
	}
  </script>
  <?php include("footer.php");?>
