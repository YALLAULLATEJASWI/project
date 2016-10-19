<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<style>
.navb{
opacity:1;
}
ul {
	list-style: none;
	padding: 0; 
	margin: 0;
}

.menu {
	display: flex;
	justify-content: space-around;
}

li {
	hover: none;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 50%;
	margin: 0 auto;
}
</style>
<meta charset="ISO-8859-1">
<title>M U S I C A</title>
<link href="<c:url value="/resources/css/owl.carousel.css" />" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/footer-distributed-with-address-and-phones.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/HomePage.css" />"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- //for-mobile-apps -->

<link href="<c:url value="/resources/css/animate.min.css" />"
	rel="stylesheet"> 
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/simpleCart.min.js"></script>
<!-- //for bootstrap working -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.slide.js"></script>

<!-- //for bootstrap working -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap-3.1.1.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
<link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'></
</head>
<body>
	<div class="w3-top">
		<nav class="navb">
			<ul class="w3-navbar w3-black w3-card-2 w3-medium  "
				style="opacity: 0.9">
				<li><a href="Welcomepage"
					class="w3-hover-none w3-text-sand w3-hover-text-white"><i
						class="fa fa-home"></i> C U B O  M U S I C A </a></li>
				<c:choose>
					<c:when test="${LoggedIn}">

						<li style="float: right"><a href="perform_logout"
							class="w3-hover-none w3-text-sand w3-hover-text-white"><i
								class="fa fa-sign-out"></i></a></li>
						<c:choose>
							<c:when test="${!Administrator}">
								<li style="float: right"><a href="viewcart"
									class="w3-hover-none w3-text-sand w3-hover-text-white"><i
										class="fa fa-shopping-cart"></i> <span
										class="w3-badge w3-white">${cartsize}</span></a></li>
							</c:when>
						</c:choose>

						<li style="float: right"><a href="#"
							class="w3-hover-none w3-text-sand w3-hover-text-white"><i
								class="fa fa-user"></i> Hi, ${name}</a></li>
					</c:when>
              
					<c:otherwise>
						<li style="float: right"><a href="Register"
							class="w3-hover-none w3-text-sand w3-hover-text-white"><i
								class="fa fa-user-plus"></i></a></li>
						<li style="float: right"><a href="login"
							class="w3-hover-none w3-text-sand w3-hover-text-white"><i
								class="fa fa-sign-in"></i></a></li>
					</c:otherwise>
				</c:choose>
			</ul>

			<c:choose>
				<c:when test="${!Administrator}">
					<!-- Category List -->
					<c:if test="${!empty categoryList}">
						<div>
							<ul
								class="w3-navbar w3-grey w3-round w3-small menu w3-card-4 "
								Style="width:100%; margin-left: 0%; margin-top: 11px;">
								<c:forEach items="${categoryList}" var="category">
									<li><a href="view/${category.id}" class="w3-hover-none"><i
											class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>
											${category.name}</a></li>
								</c:forEach>

							</ul>
						</div>
					</c:if>
				</c:when>

				<c:when test="${Administrator}">
					<ul
						class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 "
						Style="width: 100%; margin-left: 0%; margin-top: 11px;">
						<!-- 		<li><a href="Report" class="w3-hover-none"><i
								class="fa fa-cog fa-spin  fa-fw"></i> <span class="sr-only">Loading...</span>
								Recent Order</a></li> -->
						<li><a href="product" class="w3-hover-none"><i
								class="fa fa-refresh fa-spin  fa-fw"></i> <span class="sr-only">Loading...</span>
								Products</a></li>
						<li><a href="category" class="w3-hover-none"><i
								class="fa fa-refresh fa-spin  fa-fw"></i> <span class="sr-only">Loading...</span>
								Category</a></li>
						<li><a href="supplier" class="w3-hover-none"><i
								class="fa fa-refresh fa-spin  fa-fw"></i> <span class="sr-only">Loading...</span>
								Supplier</a></li>
					</ul>
				</c:when>
			</c:choose>
		</nav>
	</div>



	<c:choose>
		<c:when test="${IfViewCartClicked}">
			<c:import url="/WEB-INF/jsp/cart.jsp">
			</c:import>
		</c:when>
		<c:when test="${IndividualItemClicked}">
			<c:import url="/WEB-INF/jsp/IndividualItem.jsp">
			</c:import>
		</c:when>
		<c:when test="${IfPaymentClicked}">
			<c:import url="/WEB-INF/jsp/Payment.jsp">
			</c:import>
		</c:when>
	</c:choose>
	<!-- Category List End -->
	<c:choose>
		<c:when test="${IfLoginClicked}">
			<c:import url="/WEB-INF/jsp/logins.jsp">
			</c:import>
		</c:when>
		<c:when test="${IfRegisterClicked}">
			<c:import url="/WEB-INF/jsp/registers.jsp">
			</c:import>
		</c:when>
		<c:when test="${ViewCategoryClicked}">
			<c:import url="/WEB-INF/jsp/viewitem.jsp">
			</c:import>
		</c:when>
	</c:choose>

	<c:choose>
		<c:when test="${ProductPageClicked}">
			<c:import url="/WEB-INF/jsp/AdminProduct.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${CategoryPageClicked}">
			<c:import url="/WEB-INF/jsp/AdminCategory.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${SupplierPageClicked}">
			<c:import url="/WEB-INF/jsp/AdminSupplier.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${AdminReportClicked} ">
			<c:import url="/WEB-INF/jsp/AdminReport.jsp">
			</c:import>
		</c:when>
	</c:choose>

	<%-- <!-- carousel -->
	<c:choose>
		<c:when test="${!Administrator}">
			<c:if test="${empty HideOthers}">
			<div>
					<div id="carousel-home" class="carousel slide">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li class="item1 active"></li>
							<li class="item2"></li>
							<li class="item3"></li>
							<li class="item4"></li>
							<li class="item5"></li>
						</ol>
						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img
									src="<c:url value="http://wallpapercave.com/wp/UJu9M7U.jpg"></c:url>"
									alt="instruments">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
							<div class="item">
								<img
									src="<c:url value="http://www.publicdomainpictures.net/pictures/30000/velka/violin-1351433844a59.jpg"></c:url>"
									alt="instruments">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
							<div class="item">
								<img
									src="<c:url value="http://wallpapercave.com/wp/UJu9M7U.jpg"></c:url>"
									alt="instruments">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
							<div class="item">
								<img
									src="<c:url value="http://wallpapercave.com/wp/UJu9M7U.jpg"></c:url>"
									alt="instruments">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
							<div class="item">
								<img
									src="<c:url value="http://wallpapercave.com/wp/UJu9M7U.jpg"></c:url>"
									alt="instruments">
								<div class="carousel-caption">
									<span></span>
								</div>
							</div>
							</div>
						<!-- Controls -->
						<a class="left carousel-control" role="button"
							href="#carousel-home" style="color: black"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control " href="#carousel-home"
							role="button" style="color: black"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</c:if>
		</c:when>
	</c:choose>
	<!-- Corousel End -->
 --%>
<br>
<br>
<br>

<!-- banner -->
<c:choose>
		<c:when test="${!Administrator}">
			<c:if test="${empty HideOthers}">
	<div class="banner">
	
	
	<div class="banner-right">
					<ul id="flexiselDemo2">			
						<li><div class="banner-grid">
						<h2>Featured Products</h2>
						<div class="wome">
								<a href="single.html" ><img class="img-responsive" src="http://g-ecx.images-amazon.com/images/G/31/img16/MI/tile_drum._V270745554_.jpg" alt="" />
								</a>
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="http://g-ecx.images-amazon.com/images/G/31/img16/MI/tile_drum._V270745554_.jpg" alt=""></a>
									<h6 ><a href="single.html">InStRuMeNtS</a></h6>
									<p class="ba-price"><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>							
								</div>							
							</div></li>
						<li><div class="banner-grid">
						<h2>Featured Products</h2>
						<div class="wome">
								<a href="single.html" ><img class="img-responsive" src="http://g-ecx.images-amazon.com/images/G/31/img16/MI/tile_drum._V270745554_.jpg" alt="" />
								</a>	
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="http://g-ecx.images-amazon.com/images/G/31/img16/MI/tile_drum._V270745554_.jpg" alt=""></a>
									<h6 ><a href="single.html">InStRuMeNtS</a></h6>
									<p class="ba-price"><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>						
								</div>						
							</div></li>
						<li><div class="banner-grid">
						<h2>Featured Products</h2>
						<div class="wome">
								<a href="single.html" ><img class="img-responsive" src="http://g-ecx.images-amazon.com/images/G/31/img16/MI/tile_drum._V270745554_.jpg" alt="" />
								</a>	
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="http://g-ecx.images-amazon.com/images/G/31/img16/MI/tile_drum._V270745554_.jpg" alt=""></a>
									<h6 ><a href="single.html">InStRuMeNtS</a></h6>
									<p class="ba-price"><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>						
								</div>						
							</div></li>
						
					
					</ul>
					<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo2").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 5000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 1
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 1
		    		}
		    	}
		    });
		    
		});
	</script>
		<!-- <script type="text/javascript" src="js/jquery.flexisel.js"></script> -->
		<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.flexisel.js"></script>

					</div>

				
				</div>

	</div>
<!-- //banner -->
<!--content-->
		<div class="content">
		<div class="content-head">
					
					<div class="col-md-6 col-m1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-1">
						<div class="col-md-6 col-2">
							<a href="single.html"><img src="http://g-ecx.images-amazon.com/images/G/31/img16/MI/tile_drum._V270745554_.jpg" class="img-responsive" alt="">
							</a></div>
							<div class="col-md-6 col-p">
								<h5>For All Collections</h5>
								<p>Musical instrument classification is a discipline in its own right, and many systems of classification have been in the site.
								 Instruments can be classified by their effective range, their material composition, their size, etc</p>
								<a href="single.html" class="shop" data-hover="Shop Now">Shop Now</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-1">
						<div class="col-md-6 col-p">
								<h5>For All Collections</h5>
								<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
								praesentium voluptatum deleniti atque</p>
								<a href="single.html" class="shop" data-hover="Shop Now">Shop Now</a>
							</div>
						<div class="col-md-6 col-2">
							<a href="single.html"><img src="http://www.vintageandrare.com/blog/wp-content/uploads/2013/04/Lospennato1.jpg" class="img-responsive" alt="">
							</a></div>
							<div class="clearfix"> </div>
						</div>
						</div>
					
					<div class="col-md-6 col-m2 animated wow fadeInRight" data-wow-delay=".1s">
					
						<!---->
						 <!-- requried-jsfiles-for owl -->
<!-- <link href="css/owl.carousel.css" rel="stylesheet"> -->
			
<link href="<c:url value="/resources/css/owl.carousel.css" />"
	rel="stylesheet">		  
					  <script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/owl.carousel.js"></script>	
							
							
							
							   <!--  <script src="js/owl.carousel.js"></script> -->
							        <script>
									    $(document).ready(function() {
									      $("#owl-demo").owlCarousel({
									        items : 2,
									        lazyLoad : false,
									        autoPlay : true,
									        navigation : true,
									        navigationText :  true,
									        pagination : false,
									      });
									    });
									  </script>
							 <!-- //requried-jsfiles-for owl -->
							 <!-- start content_slider -->
						       <div id="owl-demo" class="owl-carousel">
					                <div class="item">					                	 
										  
											<a href="single.html"><img class="img-responsive" src=http://stat.homeshop18.com/homeshop18/images/productImages/965/casio-sa47-keyboard-musical-instrument-large_b56a1f672ee23c5b5c5b1b41b46caa67.jpg alt="" /></a>  
											<a href="single.html" class="shop-2" >Shop Now</a>
								
					                </div>
								<!-- 	<div class="item">					                	  
										
											<a href="single.html"><img class="http://www.pyleaudio.com/images/categories/PTCDCS3UIP.jpg" alt="" /></a>  
											<a href="single.html" class="shop-2">Shop Now</a>									
																		
					                </div> -->
									
									<div class="item">					                	 
									
											<a href="single.html"><img class="img-responsive" src="http://www.pyleaudio.com/images/categories/PTCDCS3UIP.jpg" alt="" /> </a> 
											<a href="single.html" class="shop-2">Shop Now</a>									
																			
					                </div>
									<div class="item">					                	  
										
											<a href="single.html"><img class="img-responsive" src="http://g03.a.alicdn.com/kf/HTB1VuSnIVXXXXbXaXXXq6xXFXXXG/Lowest-price-Musical-Instruments-23-Guitar-Mini-Guitar-Basswood-Kid-s-Musical-Toy-Acoustic-Stringed-Instrument.jpg" alt="" /></a>  
											<a href="single.html" class="shop-2">Shop Now</a>									
																		
					                </div>
							</div>
					   </div>
					   <div class="clearfix"></div>
			</div>	
					</div>
				
			<!---->
			
				<div class="content-top">
					<div class="col-md-5 col-md1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-3">
							<a href="single.html"><img src="http://www.yareah.com/wp-content/uploads/2016/01/6-5.jpg" class="img-responsive " alt="">
							<div class="col-pic">	
								<h5> GUITARS</h5>
							<!-- 	<p>At vero eos et accusamus et</p> -->
							</div></a>
						</div>
						
					</div>
					<div class="col-md-7 col-md2 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="https://lh3.googleusercontent.com/-xfS6usTqYWA/VVnFiwrdxZI/AAAAAAAAAHI/l-1cDVKrhpU/s426/Guidance-For-Choosing-a-Musical-Instrument.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="http://spirittourism.com/wp-content/uploads/2015/04/Brass-Instruments-300x300.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="" alt=""></a>
									<h6><a href="single.html">InStRuMeNtS</a></h6>
									<!-- <p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a> -->
								</div>
							</div>
						</div>
				
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="http://www.musicinstrumentsforkids.com/wp-content/uploads/2016/01/Rhythm-Band-School-Children-Kids-Musical-Instrument-10-Tuneable-Hand-Drum-0-300x300.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="https://s-media-cache-ak0.pinimg.com/564x/29/39/f7/2939f769e61b521fed985781915247f8.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="" alt=""></a>
									<h6><a href="single.html">InStRuMeNtS</a></h6><!-- 
									<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a> -->
								</div>
							</div>
						</div>
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="http://i.ebayimg.com/images/g/ezcAAOSwAYtWIHIa/s-l300.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
											<img  src="https://s-media-cache-ak0.pinimg.com/originals/24/0b/d7/240bd73648f7a656af047f291b8c6a49.jpg" class="img-responsive"  alt="">
										</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="" alt=""></a>
									<h6><a href="single.html">InStRuMeNtS</a></h6>
									<!-- <p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								 --></div>
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="content-top">
					
					<div class="col-md-7 col-md2 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="http://www.annuo.org/wp-content/uploads/2015/07/35.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="http://i.ebayimg.com/00/s/MTYwMFgxNjAw/z/mDcAAOSweW5VP25j/$_35.JPG" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="" alt=""></a>
									<h6><a href="single.html">InStRuMeNtS</a></h6>
									<!-- <p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								 --></div>
							</div>
							
						</div>
				
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="http://musicartists.org/wp-content/uploads/2015/02/World-Musical-Instruments.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="http://www.siliconindia.com:81/news/newsimages/special/z9vKI5gq.jpeg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="" alt=""></a>
									<h6><a href="single.html">InStRuMeNtS</a></h6>
									<!-- <p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								 --></div>
							</div>
						</div>
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.html">
											<div class="grid-img">
												<img  src="https://s-media-cache-ak0.pinimg.com/564x/bc/4a/00/bc4a00db9094d9b66873cbb94f162d2c.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="https://images-na.ssl-images-amazon.com/images/I/41USRztnPuL._SY300_.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="" alt=""></a>
									<h6><a href="single.html">InStRuMeNtS</a></h6>
								<!-- 	<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								 --></div>
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
					<div class="col-md-5 col-md1 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-3">
							<a href="single.html"><img src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/36bb1d11127989.560f228435539.jpg" class="img-responsive " alt="">
							<div class="col-pic">
								<h5> STRINGS</h5>
								<!-- <p>At vero eos et accusamus et</p> -->
							</div></a>
						</div>
						
					</div>
					<div class="clearfix"></div>
				</div>
</c:if>
		</c:when>
	</c:choose>
	<!-- Product List-->

	<c:if test="${empty HideOthers}">

		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty productList6}">
					<div>
						<%-- <div align="center"
							style="background-color: #111111; height: 141px; padding-top: 20px">
							<img alt="Empty Cart"
								src="<c:url value="/resources/images/Black-Friday-Banner.jpg"></c:url>">


						</div> --%>
						<!-- <ul> -->
						<div class="row  "
							style="padding-top: 20px; padding-botton: 20px; padding-left: 20px; padding-bottom: 20px;">
							<!-- <h3 style="margin-left: 15px">Latest Products</h3> -->
							<c:forEach items="${productList6}" var="product">
								<div class="col-xs-2 w3-animate-zoom">
									<div class="img">
										<img height="192px" width="192px" alt="${product.id}"
											src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>">
										<div class="desc w3-white" style="opacity: 0.9">
											<p>
												${product.name}<br> <i class="fa fa-inr"
													aria-hidden="true"></i> ${product.price}
												<%-- <c:choose>
													<c:when test="${LoggedIn}">
														<form action="addtoCart/${userId}/${product.id}">
															<input type="number" value="1" name="quantity"
																class="btn btn-xs btn-primary   col-xs-6 "> <input
																type="submit" value="Add"
																class="btn btn-xs col-xs-6 btn-primary">
														</form>
													</c:when>
												</c:choose> --%>
											</p>

										</div>
									</div>
								</div>

								<%-- <li><a href=" ${product.id}" class="w3-hover-none">${product.name}</a></li>
								<li><img alt="Image"
									src="<c:url value="/WEB-INF/resources/images/product/${product.id}.jpg"></c:url>"></li>
								
								<c:choose>
									<c:when test="${LoggedIn}">
											<li><a href="addtoCart/${userId}/${product.id}"
						class="w3-hover-none">Add to Cart</a></li>
										<li>
											<form action="addtoCart/${userId}/${product.id}">
												<input type="number" value="1" name="quantity"> <input
													type="submit" value="Add to Cart">
											</form>
										</li>
									</c:when>
								</c:choose> --%>
							</c:forEach>
						</div>
						 <!-- </ul>  -->
					</div>
				</c:if>
			</c:when>
		</c:choose>
	</c:if>

	<%-- <div class="row w3-card-8 w3-margin" style="margin-bottom: 0px">
		<br>
		<div class="col-xs-2 ">
			<div class="thumbnail">
				<img height="150px" width="150px" alt="${product.id}"
					src="<c:url value="/WEB-INF/resources/images/product/Lap.jpg"></c:url>">
				<div class="caption">
					<p>
						<input type="number" value="1" name="quantity"
							class="btn btn-xs btn-primary   col-xs-6 "> <a href="#"
							class="btn btn-xs btn-primary col-xs-6" role="button">Add</a>
					</p>
				</div>
			</div>
		</div>
	</div> --%>
	<!-- Product List End -->

<!-- <!-- 	<footer class="footer-distributed w3-card-4 w3-purple w3-margin-0"
		style="opacity: 0.9">
		<div class="footer-left" style="margin-top: 10px">
			<p>Payment Options</p>
			<a href="#"><i class="fa fa-paypal" aria-hidden="true"></i> </a> . <a
				href="#"><i class="fa fa-cc-amex" aria-hidden="true"></i> </a> . <a
				href="#"><i class="fa fa-cc-mastercard" aria-hidden="true"></i>
			</a> . <a href="#"><i class="fa fa-cc-visa" aria-hidden="true"></i> </a>
			. <a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i>
			</a> . <a href="#"><i class="fa fa-google-wallet" aria-hidden="true"></i>
			</a> . <a href="#"><i class="fa fa-cc-stripe" aria-hidden="true"></i>
			</a>
			<p></p>
			<p></p>
			<p>
				C U B O  M U S I C A <i class="fa fa-copyright" aria-hidden="true"> 2016</i>
			</p>
			<p></p>
			<div class="footer-icons">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-linkedin"></i></a>
			</div>
		</div>
		<div class="footer-center">
			<div>
				<i class="fa fa-map-marker"></i>
				<p>
					<span>Houston,Clear Lake</span>
				</p>
			</div>
			<div>
				<i class="fa fa-phone"></i>
				<p>+1 832 762 0570</p>
			</div>
			<div>
				<i class="fa fa-envelope"></i>
				<p>
					<a href="mailto:support@company.com">support@cubomusica.com</a>
				</p>
			</div>
		</div>
		<div class="footer-right">
			<p class="footer-company-about">
				<span>About the company</span> <a href="http://www.secura.e-sim.org"
					title="Musica, website template creation">Musica</a>is direct online retailer for musical instruments.We also offer a wide range of services to the music entertainment industry.
					The Cubo is well known for our focus on customer service and it has become one of the most trusted names in the industry. 
					Our vision is to dominate all aspects of the music industry including music creation, production, education, consumption, artist relations,curation and culture.
					Cubo Musica was started in 2016. Starting with zero capital and a simple business plan
					in growing the Cubo into the leading online retailer in the music industry.
			</p>
		</div>
	</footer> --> 


	<!-- Carousel Script -->
	<!--  -->
	<script>
		$(document).ready(function() {
			// Activate Carousel
			$("#carousel-home").carousel();

			// Enable Carousel Indicatorsvh
			$(".item1").click(function() {
				$("#carousel-home").carousel(0);
			});
			$(".item2").click(function() {
				$("#carousel-home").carousel(1);
			});
			$(".item3").click(function() {
				$("#carousel-home").carousel(2);
			});
			$(".item4").click(function() {
				$("#carousel-home").carousel(3);
			});
			$(".item5").click(function() {
				$("#carousel-home").carousel(4);
			});
			$(".item6").click(function() {
				$("#carousel-home").carousel(5);
			});

			// Enable Carousel Controls
			$(".left").click(function() {
				$("#carousel-home").carousel("prev");
			});
			$(".right").click(function() {
				$("#carousel-home").carousel("next");
			});
		});
	</script>
	<!-- Carousel Script End  -->
<div class="social animated wow fadeInDown" data-wow-delay=".1s">
	<div class="container">
		<div class="col-sm-3 social-ic">
			<a href="#">FACEBOOK</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">TWITTER</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">GOOGLE+</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">PINTEREST</a>
		</div>
	<div class="clearfix"></div>
	</div>
</div>

<!-- footer -->
	<div class="footer">
		<div class="container">
		<div class="footer-top">
		<div class="col-md-9 footer-top1">
		<h4>Cubo Musica </h4>
		<p>CUBO is direct online retailer for musical instruments.We also offer a wide range of services to the music entertainment industry.</p>
		</div>
		<div class="col-md-3 footer-top2">
		<a value="contact" href="contact.jsp">Contact Us</a>
		</div>
		<div class="clearfix"> </div>
		</div>
			<div class="footer-grids">
				<div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".5s">
					<h3>About Us</h3>
					<p>The Cubo is well known for our focus on customer service and it has become one of the most trusted names in the industry. 
					Our vision is to dominate all aspects of the music industry including music creation, production, education, consumption, artist relations,curation and culture.
					Cubo Musica was started in 2016.<span>Starting with zero capital and a simple business plan
					in growing the Cubo into the leading online retailer in the music industry.</span></p>
				</div>
				<div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".6s">
					<h3>Contact Info</h3>
					<ul>
						<li><i class="glyphicon glyphicon-map-marker" ></i>1234k Avenue, 4th block, <span>New York City.</span></li>
						<li class="foot-mid"><i class="glyphicon glyphicon-envelope" ></i><a href="mailto:info@example.com">info@example.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" ></i>+1234 567 567</li>
					</ul>
				</div>
				<div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".7s">
				<h3>Sign up for newsletter </h3>
				<form>
					<input type="text" placeholder="Email"  required="">
					<input type="submit" value="Submit">
				</form>
			
				</div>
			
				<div class="clearfix"> </div>
			</div>
			
			<div class="copy-right animated wow fadeInUp" data-wow-delay=".5s">
				<p>&copy 2016. All rights reserved | Design by <a href="http://w3layouts.com/">TEJASWI</a></p>
			</div>
		</div>
	</div>
<!-- //footer -->
</body>
</html>
