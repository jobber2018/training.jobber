<?php 
	include("header.php");	
	$courseId =  $_GET["courseId"];
	$sql = "SELECT * FROM course where id=".$courseId;
	
	$result = $conn->query($sql);
	$courseRow = $result->fetch_assoc();
	
?>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="/favicon.ico">
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    
    <title><?php echo $courseRow["seo_title"]?></title>
    <meta name="keywords" content="<?php echo $courseRow["seo_keyword"]?>">
    <meta name="description" content="<?php echo $courseRow["seo_des"]?>">
    
    <meta property="og:site_name" content="ITTraining.vn"/>
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content=""/>
    <meta property="og:type" content="article"/>
    <meta property="og:title" content="<?php echo $courseRow["seo_title"]?>"/>
    <meta property="og:description" content="<?php echo $courseRow["seo_des"]?>"/>
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
    <div id="counter-up-trigger" class="counter-up text-white parallax" data-stellar-background-ratio="0.5" style="background-image: url(<?php echo $courseRow["bag"]?>); background-position: 0px 20px;">
      <div class="cover"></div>
      <div class="page-header-wrapper">
        <div class="container">
          <div class="page-header text-center wow fadeInDown animated" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInDown;">
            <h2 class="name-course"><?php echo $courseRow["course_name"]?></h2>
            <div class="devider"></div>
            <p class="subtitle"><?php echo $courseRow["sologan"]?></p>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="fact text-center col-md-3 col-sm-6">
            <div class="fact-inner"> <i class="fa fa-book fa-3x"></i>
              <div class="extra-space-l"></div>
              <span class="counter" id="count-chapter">
			  <?php 
			 $sql = "SELECT COUNT(*) chapter FROM  `course_outline` WHERE parent =0 AND course_id =".$courseId;
			  $result = $conn->query($sql);
              $resultChapter = $result->fetch_assoc();
			  
			  echo $resultChapter["chapter"]
			  ?>
              </span>
              <p class="lead">Chapter</p>
            </div>
          </div>
          
          <div class="fact text-center col-md-3 col-sm-6">
            <div class="fact-inner"> <i class="fa fa-user-circle fa-3x"></i>
              <div class="extra-space-l"></div>
              <span class="counter" id="count-video">2</span>
              <p class="lead">Teacher</p>
            </div>
          </div>
          <div class="fact text-center col-md-3 col-sm-6">
            <div class="fact-inner"> <i class="fa fa-mortar-board fa-3x"></i>
              <div class="extra-space-l"></div>
              <span class="counter" id="count-hours">
			  <?php 
			 $sql = "SELECT COUNT(*) lesson FROM  `course_outline` WHERE parent >0 AND course_id =".$courseId;
			  $result = $conn->query($sql);
              $resultLesson = $result->fetch_assoc();
			  
			  echo $resultLesson["lesson"]
			  ?>
			  </span>
              <p class="lead">Lesson</p>
            </div>
          </div>
          <div class="fact last text-center col-md-3 col-sm-6">
            <div class="fact-inner"> <i class="fa fa-clock-o fa-3x"></i>
              <div class="extra-space-l"></div>
              <span class="counter" id="count-minute"><?php echo $resultLesson["lesson"]*3;?></span>
              <p class="lead">Hours</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <!-- Marketing messaging and featurettes
      ================================================== --> 
  <!-- Wrap the rest of the page in another container to center all the content. -->
  
  <div class="container ">
    <div class="row">
      <div class="col-md-8 mb-8 marketing" style="margin-top: 15px;padding-top: 15px;">
        <?php echo $courseRow["description"]?>
      </div>
      <div class="col-md-4 mb-4"> 
        <!--Accordion wrapper-->
        <div class="accordion md-accordion accordion-5" id="accordionEx5" role="tablist" aria-multiselectable="true"> 
          <!-- Accordion card -->
          <div class="card mb-4"> 
            <!-- Card header -->
            <div class="card-header p-0 z-depth-1" role="tab" id="heading30"> <a data-toggle="collapse" data-parent="#accordionEx5" href="#collapse30" aria-expanded="true" aria-controls="collapse30"> <i class="fa fa-bookmark fa-2x p-3 mr-4 float-left black-text" aria-hidden="true"></i>
              <h4 class="text-uppercase white-text mb-0 py-3 mt-1"> Học phí </h4>
              </a> </div>
            
            <!-- Card body -->
            <div id="collapse30" class="collapse show" role="tabpanel" aria-labelledby="heading30" data-parent="#accordionEx5">
              <div class="card-body z-depth-1">
                <h2 style="font-weight:bold; text-align:center; color:#fd7e14"><?php echo number_format($courseRow["money"])?> VNĐ</h2>
              </div>
            </div>
          </div>
          <!-- Accordion card --> 
          
          <!-- Accordion card -->
          <div class="card mb-4"> 
            <!-- Card header -->
            <div class="card-header p-0 z-depth-1" role="tab" id="heading31"> <a data-toggle="collapse" data-parent="#accordionEx5" href="#collapse31" aria-expanded="true" aria-controls="collapse31"> <i class="fa fa-commenting-o fa-2x p-3 mr-4 float-left black-text" aria-hidden="true"></i>
              <h4 class="text-uppercase white-text mb-0 py-3 mt-1"> Thời gian </h4>
              </a> </div>
            
            <!-- Card body -->
            <div id="collapse31" class="collapse" role="tabpanel" aria-labelledby="heading31" data-parent="#accordionEx5">
              <div class="card-body z-depth-1">
                <p class="mb-0"><?php echo $courseRow["time_training"]?></p>
              </div>
            </div>
          </div>
          <!-- Accordion card --> 
          
          <!-- Accordion card -->
          <div class="card mb-4"> 
            <!-- Card header -->
            <div class="card-header p-0 z-depth-1" role="tab" id="heading32"> <a data-toggle="collapse" data-parent="#accordionEx5" href="#collapse32" aria-expanded="true" aria-controls="collapse32"> <i class="fa fa-cogs fa-2x p-3 mr-4 float-left black-text" aria-hidden="true"></i>
              <h4 class="text-uppercase white-text mb-0 py-3 mt-1"> Giáo viên </h4>
              </a> </div>
            
            <!-- Card body -->
            <div id="collapse32" class="collapse" role="tabpanel" aria-labelledby="heading32" data-parent="#accordionEx5">
              <div class="card-body z-depth-1">
                <p class="mb-0">                
					<?php 
					$sql = "SELECT * FROM teacher where id=".$courseRow["teacher_id"];					
					$result = $conn->query($sql);?>
                    <table>
                    <?php while($row = $result->fetch_assoc()) {?>
                    	<tr>
                        	<td style="padding-right:10px;"><img src="/imgs/avt/<?php echo $row["avt"]?>" width="60px" /></td>
                            <td style="font-weight:bold; text-align:left; width:100%"><?php echo $row["name"]?></td>
                        </tr>
                        <tr>
                        	<td colspan="2" style="padding-top:10px"><?php echo $row["des"]?></td>
                            
                        </tr>
                        <?php } ?>
                    </table>
                </p>                
              </div>
            </div>
          </div>
          <!-- Accordion card --> 
        </div>
        <!--/.Accordion wrapper--> 
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 mb-12 marketing" style="margin-top:15px; padding-bottom:15px"> 
        <!--Accordion wrapper-->
        <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true"> 
          
          <?php
		  	//$courseId =  $_GET["courseId"];
			$sql = "SELECT * FROM course_outline where parent=0 and course_id=".$courseId;
			$show=1;
			$result = $conn->query($sql);
			if ($result->num_rows > 0) {
			// output data of each row
				while($row = $result->fetch_assoc()) {
					?>
            <!-- Accordion card -->
              <div class="card"> 
                <!-- Card header -->
                <div class="card-header" role="tab" id="heading<?php echo $row["id"] ?>"> <a data-toggle="collapse" data-parent="#accordionEx" href="#collapse<?php echo $row["id"] ?>" aria-expanded="true" aria-controls="collapse<?php echo $row["id"] ?>">
                  <h5 class="mb-0"><?php echo $row["lesson_name"] ?></h5>
                  </a> </div>
                <!-- Card body -->
                <div id="collapse<?php echo $row["id"] ?>" class="collapse <?php if($show==1) echo 'show';?>" role="tabpanel" aria-labelledby="heading<?php echo $row["id"] ?>" data-parent="#accordionEx">
                  <div class="card-body">
                  <table class="table table-hover mb-0">
                  	<?php
                    	$sql = "SELECT * FROM course_outline where parent=".$row["id"];
						$lessonResult = $conn->query($sql);
						while($row1 = $lessonResult->fetch_assoc()) {
							echo '<tr>';
							echo '<td><i class="fa fa-file-code-o" aria-hidden="true"></i></td>';
							echo '<td width="100%">'.$row1["lesson_name"].'</td>';
							echo '</tr>';
						}
					?>
                    </table>
                  </div>
                </div>
              </div>
              <!-- Accordion card --> 
            
                    <?php
					$show=2;					
				}
			}
          ?>
        </div>
      </div>
    </div>
    <!-- Accordion wrapper --> 
  </div>
  <!-- /.container -->
  <?php include("footer.php");?>
