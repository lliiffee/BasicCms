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
	<!--
		<div class="visual">
				<div class="block">
					<div class="flexslider" id="flexslider-1">
						<ul class="slides">
							
						</ul>
						<ol class="flex-control-nav flex-control-paging">
							
						</ol>
						<ul class="flex-direction-nav">
							
						</ul>
					</div>
				</div>
			</div>
			-->			
			
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
	
	
			
		<c:if test="${ not empty pageList}"> 
     
			    <c:forEach var="ct" items="${pageList}" > 
					    <div class="post item">
						<div class="img">
							<a href="${ct.contentLink}"><img width="300" height="auto" src="${ct.sumImg}" class="attachment-medium wp-post-image" alt="Prada-SS14-Eyewear-Campaign_fy1" /></a>
						</div>
						<h2><a href="${ct.contentLink}">${ct.contentTitle}</a></h2>
						</p>
						</p>
						</p>
						<p>
							 ${ct.fullContent}
						</p>
						<div class="meta">
							<em class="date">meta 8 May</em> — <a href="http://fuckingyoung.es/category/campaigns/" title="View all posts in Campaigns" rel="category tag">Campaigns</a>. <a href="http://fuckingyoung.es/category/collection/eyewear/" title="View all posts in Eyewear" rel="category tag">Eyewear</a>. <a href="http://fuckingyoung.es/category/campaigns/spring-summer/" title="View all posts in Spring/Summer" rel="category tag">Spring/Summer</a>
						</div>
					</div>
					
					
			    </c:forEach>
	    </c:if>
			
			
		</article>
		
			<div class="page-control">
				<ul class="paging">
					<li class="active">
						<a href="./Fucking Young!_files/Fucking Young!.htm">1</a>,
					</li>
					<li>
						<a href="http://fuckingyoung.es/page/2/">2</a>,
					</li>
					<li>
						<a href="http://fuckingyoung.es/page/3/">3</a>,
					</li>
					<li>
						<a href="http://fuckingyoung.es/page/4/">4</a>,
					</li>
					<li>
						<a href="http://fuckingyoung.es/page/5/">5</a>,
					</li>
					<li>
						<a href="http://fuckingyoung.es/page/6/">6</a>,
					</li>
					<li>
						<a href="http://fuckingyoung.es/page/7/">7</a>...
					</li>
				</ul>
				<div class="r-part">
					<div class="page-search">
						<form id="pagesearch" action="http://fuckingyoung.es/page/2/">
							<div class="text">
								<input type="text" value="Type page / search...">
							</div>
						</form>
					</div>

					<ul class="paging">
						<li>
							…
						</li>
						<li>
							<a href="http://fuckingyoung.es/page/511/">511</a>
						</li>
					</ul>
				</div>

				<span class="next-page"><a href="http://fuckingyoung.es/page/2/">Next Page »</a></span>
			</div>
			
	</div>	

	</body>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate.min.js"></script>
     <script type="text/javascript" src="js/jquery.masonry.min.js"></script>
	 <script type="text/javascript" src="js/jquery.sticky.js"></script>
	  <script type="text/javascript" src="js/scripts.js"></script>

</html>
    
    