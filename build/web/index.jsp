<%-- 
    Document   : LoginCliente
    Created on : 14/11/2018, 14:22:37
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<title>NyahFood</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--Animation-->
<script src="js/wow.min.js"></script>
<link href="css/animate.css" rel='stylesheet' type='text/css' />
<script>
	new WOW().init();
</script>
<script src="js/simpleCart.min.js"> </script>	
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
<script src="jquery-3.2.1.min.js"></script>
               <script>
                      $(function(){ 
                                $("#header").load("Header.jsp");
                               
                       });
                 </script>
</head>
<body>
    <!-- header-section-starts -->
	<div id="header"></div>
		<div class="banner wow fadeInUp" data-wow-delay="0.4s" id="Home">
		    <div class="container">
				<div class="banner-info">
					<div class="banner-info-head text-center wow fadeInLeft" data-wow-delay="0.5s">
						<h1>Mais de 5 Restaurantes</h1>
						<div class="line">
							<h2> Esperando você!</h2>
						</div>
					</div>
					<div class="form-list wow fadeInRight" data-wow-delay="0.5s">
						<form>
						  <ul class="navmain">
							<li><span>Location Name</span>
							 <input type="text" class="text" value="Secunderabad" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Secunderabad';}">
							</li>
							<li><span>Restaurant Name</span>
							 <input type="text" class="text" value="Swagath Grand" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Swagath Grand';}">
							</li>
							<li><span>Cuisine Name</span>
							 <input type="text" class="text" value="Chicken Biriyani" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Chicken Biriyani';}">
						    </li>
						  </ul>
						</form>
						</div>
					<!-- start search-->
		 <div class="main-search">
	        <form action="search.html">
	           <input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" class="text"/>
	            <input type="submit" value=""/>
	        </form>
	        <div class="close"><img src="images/cross.png" /></div>
	    </div>
	    <div class="srch"><button></button></div>
		<script type="text/javascript">
	         $('.main-search').hide();
	        $('button').click(function (){
	            $('.main-search').show();
	            $('.main-search text').focus();
	        }
	        );
	        $('.close').click(function(){
	            $('.main-search').hide();
	        });
	    </script>
					
				</div>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="content">
		<div class="ordering-section" id="Order">
			<div class="container">
				<div class="ordering-section-head text-center wow bounceInRight" data-wow-delay="0.4s">
					<h3>Pedir comida nunca foi tão fácil</h3>
					<div class="dotted-line">
						<h4>Apenas siga 4 passos </h4>
					</div>
				</div>
				<div class="ordering-section-grids">
					<div class="col-md-3 ordering-section-grid">
						<div class="ordering-section-grid-process wow fadeInRight" data-wow-delay="0.4s">
							<i class="one"></i><br>
							<i class="one-icon"></i>
							<p>Escolha <span>Seu Restaurante</span></p>
							<label></label>
						</div>
					</div>
					<div class="col-md-3 ordering-section-grid">
						<div class="ordering-section-grid-process wow fadeInRight" data-wow-delay="0.4s">
							<i class="two"></i><br>
							<i class="two-icon"></i>
							<p>Escolha  <span>Sua comida</span></p>
							<label></label>
						</div>
					</div>
					<div class="col-md-3 ordering-section-grid">
						<div class="ordering-section-grid-process wow fadeInRight" data-wow-delay="0.4s">
							<i class="three"></i><br>
							<i class="three-icon"></i>
							<p>Pague   <span> na entrega </span></p>
							<label></label>
						</div>
					</div>
					<div class="col-md-3 ordering-section-grid">
						<div class="ordering-section-grid-process wow fadeInRight" data-wow-delay="0.4s">
							<i class="four"></i><br>
							<i class="four-icon"></i>
							<p>Desfrute <span>sua comida </span></p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="special-offers-section">
			<div class="container">
				<div class="special-offers-section-head text-center dotted-line">
					<h4>Best Ofertas</h4>
				</div>
				<div class="special-offers-section-grids">
				 <div class="m_3"><span class="middle-dotted-line"> </span> </div>
				   <div class="container">
					  <ul id="flexiselDemo3">
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/p1.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
									<h4>Frago Frito</h4>
									<p>O melhor frango já frito que você irá comer. </p>
									<input type="button" value="Pedir">
									<span></span>
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/p2.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
									<h4>Sopa pra nóis</h4>
									<p>A melhor sopa já feita que você irá comer. </p>
									<input type="button" value="Pedir">
									<span></span>
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/p1.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
									<h4>Frago Frito</h4>
									<p>O melhor frango já frito que você irá comer com outro tempero. </p>
									<input type="button" value="Pedir">
									<span></span>
								</div>
								
								<div class="clearfix"></div>
								</div>
						</li>
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/p2.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
									<h4>Frago Frito de Novo</h4>
									<p>Só existe frango frito nesse delivery. </p>
									<input type="button" value="Pedir">
									<span></span>
								</div>
								
								<div class="clearfix"></div>
								</div>
					    </li>
					 </ul>
				 <script type="text/javascript">
					$(window).load(function() {
						
						$("#flexiselDemo3").flexisel({
							visibleItems: 3,
							animationSpeed: 1000,
							autoPlay: false,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: { 
								portrait: { 
									changePoint:480,
									visibleItems: 1
								}, 
								landscape: { 
									changePoint:640,
									visibleItems: 2
								},
								tablet: { 
									changePoint:768,
									visibleItems: 3
								}
							}
						});
						
					});
				    </script>
				    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
				</div>
			</div>
		</div>
		</div>
		<div class="popular-restaurents" id="Popular-Restaurants">
			<div class="container">
				<div class="col-md-4 top-restaurents">
					<div class="top-restaurent-head">
						<h3>Top's Restaurantes</h3>
					</div>
					<div class="top-restaurent-grids">
						<div class="top-restaurent-logos">
							<div class="res-img-1 wow bounceIn" data-wow-delay="0.4s">
								<img src="images/restaurent-1.jpg" class="img-responsive" alt="" />
							</div>
							<div class="res-img-2 wow bounceIn" data-wow-delay="0.4s">
							    <img src="images/restaurent-2.jpg" class="img-responsive" alt="" />
							</div>
							<div class="res-img-1 wow bounceIn" data-wow-delay="0.4s">
							    <img src="images/restaurent-3.jpg" class="img-responsive" alt="" />
							</div>
							<div class="res-img-2 wow bounceIn" data-wow-delay="0.4s">
							    <img src="images/restaurent-4.jpg" class="img-responsive" alt="" />
							</div>
							<div class="res-img-1 nth-grid1 wow bounceIn" data-wow-delay="0.4s">
							    <img src="images/restaurent-5.jpg" class="img-responsive" alt="" />
							</div>
							<div class="res-img-2 nth-grid1 wow bounceIn" data-wow-delay="0.4s">
							    <img src="images/restaurent-6.jpg" class="img-responsive" alt="" />
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-8 top-cuisines">
					<div class="top-cuisine-head">
						<h3>Top's Comidas</h3>
					</div>
					<div class="top-cuisine-grids">
						<div class="top-cuisine-grid wow bounceIn" data-wow-delay="0.4s">
						    <a href=""><img src="images/cuisine1.jpg" class="img-responsive" alt="" /> </a>
							<label>Pizza</label>
					    </div>
						<div class="top-cuisine-grid wow bounceIn" data-wow-delay="0.4s">
						    <a href=""><img src="images/cuisine2.jpg" class="img-responsive" alt="" /> </a>
							<label>Lanche</label>
					    </div>
						<div class="top-cuisine-grid wow bounceIn" data-wow-delay="0.4s">
						    <a href=""><img src="images/cuisine3.jpg" class="img-responsive" alt="" /> </a>
							<label>Omelete</label>
					    </div>
						<div class="top-cuisine-grid nth-grid wow bounceIn" data-wow-delay="0.4s">
						    <a href=""><img src="images/cuisine4.jpg" class="img-responsive" alt="" /> </a>
							<label>Dodó</label>
					    </div>
						<div class="top-cuisine-grid nth-grid1 wow bounceIn" data-wow-delay="0.4s">
						    <a href=""><img src="images/cuisine5.jpg" class="img-responsive" alt="" /> </a>
							<label>Bife Boi</label>
					    </div>
						<div class="top-cuisine-grid nth-grid1 wow bounceIn" data-wow-delay="0.4s">
						    <a href=""><img src="images/cuisine6.jpg" class="img-responsive" alt="" /> </a>
							<label>Sonho</label>
					    </div>
						<div class="top-cuisine-grid nth-grid1 wow bounceIn" data-wow-delay="0.4s">
						    <a href=""><img src="images/cuisine7.jpg" class="img-responsive" alt="" /> </a>
							<label>Pizza</label>
					    </div>
						<div class="top-cuisine-grid nth-grid nth-grid1 wow bounceIn" data-wow-delay="0.4s">
						    <a href=""><img src="images/cuisine8.jpg" class="img-responsive" alt="" /> </a>
							<label>Salada</label>
					    </div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="service-section">
			<div class="service-section-top-row">
				<div class="container">
					<div class="service-section-top-row-grids wow bounceInLeft" data-wow-delay="0.4s">
					<div class="col-md-3 service-section-top-row-grid1">
						<h3>Aproveite sua comida em qualquer lugar!</h3>
					</div>
					<div class="col-md-2 service-section-top-row-grid2">
						<ul>
							<li><i class="arrow"></i></li>
							<li class="lists">No seu serviço</li>
						</ul>
						<ul>
							<li><i class="arrow"></i></li>
							<li class="lists">Em sua casa</li>
						</ul>
						<ul>
							<li><i class="arrow"></i></li>
							<li class="lists"> Na casa de amigos </li>
						</ul>
					</div>
					<div class="col-md-5 service-section-top-row-grid3">
						<img src="images/lunch.png" class="img-responsive" alt="" />
					</div>
					<div class="col-md-2 service-section-top-row-grid4 wow swing animated" data-wow-delay= "0.4s">
						<a href="order.html"><input type="submit" value="Pedir Agora"></a>
					</div>
					<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="service-section-bottom-row">
				<div class="container">
					<div class="col-md-4 service-section-bottom-grid wow bounceIn "data-wow-delay="0.2s">
						<div class="icon">
							<img src="images/icon1.jpg" class="img-responsive" alt="" />
						</div>
						<div class="icon-data">
							<h4>100% Garantia</h4>
							<p>Comida pedida é comida entregue. </p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-4 service-section-bottom-grid wow bounceIn "data-wow-delay="0.2s">
						<div class="icon">
							<img src="images/icon2.jpg" class="img-responsive" alt="" />
						</div>
						<div class="icon-data">
							<h4>Totalmente Seguro</h4>
							<p>Seus dados nunca serão repassados para outros!</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-4 service-section-bottom-grid wow bounceIn "data-wow-delay="0.2s">
						<div class="icon">
							<img src="images/icon3.jpg" class="img-responsive" alt="" />
						</div>
						<div class="icon-data">
							<h4>Acompanhe seu pedido</h4>
							<p>Acompanhe em tempo real seu pedido. </p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- content-section-ends -->
	<!-- footer-section-starts -->
	<div class="footer">
		<div class="container">
			<p class="wow fadeInLeft" data-wow-delay="0.4s">&copy; 2018 NyahFood</p>
		</div>
	</div>
	<!-- footer-section-ends -->
	  <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>