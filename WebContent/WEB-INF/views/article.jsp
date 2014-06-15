<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ include file="/common/import.jsp"%>
<%@ include file="/common/taglib.jsp"%>
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>test</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
		<meta name="viewport" content="width=device-width, initial-scale=1.0" >
		<meta name="format-detection" content="telephone=no" >

		<link rel="stylesheet" href="css/style.css">

	</head>

	<body>	
		
<header>
			<div class="container">
				<div class="block">
					<strong class="logo"><a href="http://http://www.fourcorners.com.cn/">Fucking Young</a></strong>
					<ul class="socials">
						<li>
							<a target="_blank" href="http://twitter.com/fuckingyoung" class="ico">twitter</a>
						</li>
						<li>
							<a target="_blank" href="http://facebook.com/fuuuckingyoung" class="ico ico-2">facebook</a>
						</li>
						<li>
							<a target="_blank" href="http://youtube.com/user/fuckingyoungmagazine" class="ico ico-3">Youtube</a>
						</li>
						<li>
							<a target="_blank" href="http://pinterest.com/fuckingyoung" class="ico ico-4">pinterest</a>
						</li>
					</ul>
					<ul id="menu-header-derecha" class="add-menu">
						<li id="menu-item-117014" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-117014">
							<a href="http://fuckingyoung.es/about/">About</a>
						</li>
						<li id="menu-item-117015" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-117015">
							<a href="http://fuckingyoung.es/contribute/">Contribute</a>
						</li>
					</ul>
					<div class="ad-block">
						<a href="http://goo.gl/Euqz6h" target="_blank"><img src="http://fuckingyoung.es/wp-content/uploads/2014/05/davidelfin-top.gif" /></a>
					</div>
				</div><!-- /block -->
			</div><!-- /container -->
			
			<div class="panel">
				<div class="panel-in" id="panel">
					<div class="holder">
						<strong class="logo"><a href="http://www.fourcorners.com.cn/">FourCorners</a></strong>
						<div class="drop">
							<nav class="menu-principal-container">
								<ul id="menu-principal" class="">
									<li id="menu-item-117018" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-117018">
										<a href="http://fuckingyoung.es/">关于我们</a>
									</li>
									<li id="menu-item-117020" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-117020">
										<a href="http://fuckingyoung.es/category/video/">合作范畴</a>
									</li>
									<li id="menu-item-117022" class="menu-item menu-item-type-love menu-item-object-cpt-archive menu-item-117022">
										<a href="http://fuckingyoung.es/loves/">产品展示</a>
									</li>
									<li id="menu-item-117023" class="menu-item menu-item-type-product menu-item-object-cpt-archive menu-item-117023">
										<a href="http://fuckingyoung.es/store/">新闻中心</a>
									</li>
									<li id="menu-item-117019" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-117019">
										<a href="http://fuckingyoung.es/magazine/">售后服务</a>
									</li>
									<li id="menu-item-117019" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-117019">
										<a href="http://fuckingyoung.es/magazine/">招聘信息</a>
									</li>
									<li id="menu-item-117019" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-117019">
										<a href="http://fuckingyoung.es/magazine/">在线商城</a>
									</li>
								</ul>
							</nav>
							
							
							<div class="search-form">
								<form action="http://fuckingyoung.es" method="get">
									<div class="text">
										<input name="s" type="text" value="search..." >
										<a href="#" class="btn-close">close</a>
									</div>
								</form>
							</div>
						</div>
						<a href="#" class="btn-menu">Menu</a>
					</div>
				</div>
			</div><!-- /panel -->
		</header><!-- /header -->

		
		
<div class="fybg">		
	 
			
			<div class="filter-panel">
				<div id="filter-sticky-wrapper" class="sticky-wrapper" style="height: 76px;">
					<div class="filter-in" id="filter" style="">
						<div class="block">
							<strong class="str">Filter by:</strong>
							<ul class="filter-cats">
								
							</ul>
						</div>
					</div>
				</div>
			</div>

<article class="posts" id="posts-1">
	
	
			
		<c:if test="${ not empty content}"> 
             ${content.fullContent}
	    </c:if>
			
			
		</article>
		
			
	</div>	

	</body>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate.min.js"></script>
     <script type="text/javascript" src="js/jquery.masonry.min.js"></script>
	 <script type="text/javascript" src="js/jquery.sticky.js"></script>
	  <script type="text/javascript" src="js/scripts.js"></script>

</html>
    
    