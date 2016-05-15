<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Envor HTML5/CSS3 Template">
    <meta name="author" content="Suono Libero ( @rivathemes.com )">
    <link rel="shortcut icon" href="favicon.ico">

    <title>Envor HTML5/CSS3 Template</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Custom CSS -->
    <link href="css/animate.css" rel="stylesheet" type="text/css">
    <link href="css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
    <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/colorbox-skins/4/colorbox.css" type="text/css">
        <link href="css/main.css" rel="stylesheet" type="text/css">
    

    <link href="css/header/h1.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">
    <link href="css/color1.css" rel="stylesheet" type="text/css" id="envor-site-color">
    <link href="css/rivathemes.css" rel="stylesheet" type="text/css">

    <!-- LayerSlider styles -->
    <link rel="stylesheet" href="css/layerslider/css/layerslider.css" type="text/css">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="js/vendor/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
  </head>

    <body>
  

    <!--[if lt IE 7]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
    <![endif]-->
   
   	<%@include file="./header.jsp" %>
   
   <div class="envor-content" style="padding-top: 0px;">
      <section class="envor-desktop-breadscrubs">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="envor-desktop-breadscrubs-inner">
                <a href="index.html">首页</a><i class="fa fa-angle-double-right"></i>开班信息
              </div>
            </div>
          </div>
        </div>
      </section>
      
      <section class="envor-section">
        <div class="container">
          <div class="row" style="margin-bottom: 30px">
          <div class='col-lg-12'>
			<article >
                  
                <header>
                  <h3 style="margin-top: 0px;"><i class="fa fa-pencil"></i> <span>${grade.name }</span>  <span class="label label-success">${grade.state }</span></h3>
             
                </header>
                <p>开班时间：2016-01-12</p>
                  <p>课程介绍：欢迎大家报名，包就业！  ${grade.remark }</p>
                    <p>课表：</p>
              	<table class="table table-bordered">
				<tbody>
					<tr>
						<td>星期一</td>
						<td>
						<ul>
						<c:forEach items="${week1 }" var="bean">
							 <li>
		                      <span>${bean.begin }-${bean.begin }<a href="viewcategory?id=${bean.category.id }">${bean.category.name }</a> （${bean.teacher.name }） </span>
		                    </li>
						</c:forEach>
                		  </ul>
						</td>
					 </tr>
					<tr>
						<td>星期二</td>
						<td><ul>
						<c:forEach items="${week2 }" var="bean">
							 <li>
		                      <span>${bean.begin }-${bean.begin }<a href="viewcategory?id=${bean.category.id }">${bean.category.name }</a>（${bean.teacher.name }） </span>
		                    </li>
						</c:forEach>
                		  </ul></td>
					 </tr>
					 <tr>
						<td>星期三</td>
						<td><ul>
						<c:forEach items="${week3 }" var="bean">
							 <li>
		                      <span>${bean.begin }-${bean.begin }<a href="viewcategory?id=${bean.category.id }">${bean.category.name }</a>（${bean.teacher.name }） </span>
		                    </li>
						</c:forEach>
                		  </ul></td>
					 </tr>
					 
					 <tr>
						<td>星期四</td>
						<td><ul>
						<c:forEach items="${week4 }" var="bean">
							 <li>
		                      <span>${bean.begin }-${bean.begin }<a href="viewcategory?id=${bean.category.id }">${bean.category.name }</a>（${bean.teacher.name }） </span>
		                    </li>
						</c:forEach>
                		  </ul></td>
					 </tr>
					 
					 
					 <tr>
						<td>星期五</td>
						<td><ul>
						<c:forEach items="${week5 }" var="bean">
							 <li>
		                      <span>${bean.begin }-${bean.begin }<a href="viewcategory?id=${bean.category.id }">${bean.category.name }</a>（${bean.teacher.name }） </span>
		                    </li>
						</c:forEach>
                		  </ul></td>
					 </tr>
					 
					 
					  
					 <tr>
						<td>星期六</td>
						<td><ul>
						<c:forEach items="${week6 }" var="bean">
							 <li>
		                      <span>${bean.begin }-${bean.begin }<a href="viewcategory?id=${bean.category.id }">${bean.category.name }</a> （${bean.teacher.name }） </span>
		                    </li>
						</c:forEach>
                		  </ul></td>
					 </tr>
					 
					 
					  
					 <tr>
						<td>星期日</td>
						<td><ul>
						<c:forEach items="${week7 }" var="bean">
							 <li>
		                      <span>${bean.begin }-${bean.begin }<a href="viewcategory?id=${bean.category.id }">${bean.category.name }</a>（${bean.teacher.name }） </span>
		                    </li>
						</c:forEach>
                		  </ul></td>
					 </tr>
				</tbody>
			</table>
              </article>   
              <p style="text-align: center">
                <a href="report" class="envor-btn envor-btn-primary envor-btn-normal"><i class="glyphicon glyphicon-check"></i> 立即报名!</a>
              </p>        		 		
          </div>
        </div>
      </section>
    </div>
    
	<%@include file="./footer.jsp" %>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/vendor/jquery-1.11.0.min.js"></script>

    <script src="js/vendor/core-1.0.5.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.min.js"></script>
    <script src="js/jquery.mousewheel.min.js"></script>
    <script src="js/jquery.colorbox-min.js"></script>
    <script src="js/preloadCssImages.jQuery_v5.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <!--
    * jQuery with jQuery Easing, and jQuery Transit JS
    //-->
    <script src="js/layerslider/jquery-easing-1.3.js" type="text/javascript"></script>
    <script src="js/layerslider/jquery-transit-modified.js" type="text/javascript"></script>
    <!--
    * LayerSlider from Kreatura Media with Transitions
    -->
    <script src="js/layerslider/layerslider.transitions.js" type="text/javascript"></script>
    <script src="js/layerslider/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
    <script src="js/jquery.rivathemes.js"></script>
    <script type="text/javascript">
    $('document').ready(function() {
        /*

        Sorting

        */
        $('#faq-sorting').rivaSorting({
          showAll : 1
        });
        /*

        Footer News Slider

        */
        $('#footer-news').rivaSlider({
          visible : 1,
          selector : 'envor-post-preview'
        });
    });

      $('document').ready(function() {
          /*

          Home Page Layer Slider

          */
          $('#layerslider').layerSlider({
            skinsPath               : 'css/layerslider/skins/',
            skin : 'fullwidth',
            thumbnailNavigation : 'hover',
            hoverPrevNext : false,
            responsive : false,
            responsiveUnder : 1170,
            sublayerContainer : 1170
          });
          /*

          Latest Projects Slider
          
          */
          $('#latest-projects').rivaSlider({
            visible : 4,
            selector : 'envor-project'
          });
          /*

          Our Partners Slider

          */
          $('#our-partners').rivaCarousel({
            visible : 5,
            selector : 'envor-partner-logo',
            mobile_visible : 1
          });
          /*

          Footer News Slider

          */
          $('#footer-news').rivaSlider({
            visible : 1,
            selector : 'envor-post-preview'
          });
          /*

          Testimonials #1 Carousel

          */
          $('#clients-testimonials').rivaCarousel({
            visible : 1,
            selector : 'envor-testimonials-1',
            mobile_visible : 1
          });
      });
    </script>
    <script src="js/envor.js"></script>
    <script type="text/javascript">
      $('document').ready(function() {
          /*

          Preload Images

          */
          var imgs = new Array(), $imgs = $('img');
          for (var i = 0; i < $imgs.length; i++) {
            imgs[i] = new Image();
            imgs[i].src = $imgs.eq(i).attr('src');
          }
          Core.preloader.queue(imgs).preload(function() {
            var images = $('a').map(function() {
                    return $(this).attr('href');
            }).get();
            Core.preloader.queue(images).preload(function() {
                  $.preloadCssImages();
            })
          })
                  $('#envor-preload').hide();
      });
      /*

      Windows Phone 8 и Internet Explorer 10

      */
      if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
        var msViewportStyle = document.createElement("style")
        msViewportStyle.appendChild(
          document.createTextNode(
            "@-ms-viewport{width:auto!important}"
          )
        )
        document.getElementsByTagName("head")[0].appendChild(msViewportStyle)
      }
    </script>
  </body>
</html>