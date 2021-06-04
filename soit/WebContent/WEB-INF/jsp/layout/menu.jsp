<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu.jsp</title>
</head>
<body>
    <!-- Main Wrapper Start -->
    <div class="wrapper">
        <!-- Header Start -->
        <header class="header header-default site-header">
            <div class="header__outer">
                <div class="header">
                    <div class="container">
                        <div class="header__main">
                            <div class="header__col header__left">
                                <a href="index.html" class="logo">
                                    <figure class="logo--normal">
                                        <a href="${pageContext.request.contextPath }/main.do">
                                        <img src="${pageContext.request.contextPath }/bootstrap/assets/img/logo/logo.png" alt="Logo"></a>
                                    </figure>
                                    <figure class="logo--transparency">
                                        <a href="${pageContext.request.contextPath }/main.do">
                                        <img src="${pageContext.request.contextPath }/bootstrap/assets/img/logo/logo.png" alt="Logo"></a>
                                    </figure>
                                </a>
                            </div>
                            <div class="header__col header__center">
                                <nav class="main-navigation d-none d-lg-block">
                                    <ul class="mainmenu">
                                        <li class="mainmenu__item menu-item-has-children position-relative">
                                            <a href="${pageContext.request.contextPath }/productAll.do" class="mainmenu__link">All</a>
                                        </li>
                                        <li class="mainmenu__item menu-item-has-children position-static">
                                            <a href="${pageContext.request.contextPath }/productRing.do" class="mainmenu__link">Ring</a>
                                        </li>
                                        <li class="mainmenu__item menu-item-has-children position-relative">
                                            <a href="${pageContext.request.contextPath }/productEarring.do" class="mainmenu__link">Earring</a>
                                        </li>
                                        <li class="mainmenu__item menu-item-has-children position-relative">
                                            <a href="${pageContext.request.contextPath }/productNecklace.do" class="mainmenu__link">Necklace</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="header__col header__right">
                                <div class="toolbar-item d-none d-lg-block">
                                    	<c:if test="${empty id }">
                                    		<a href="${pageContext.request.contextPath }/memberLoginForm.do" class="toolbar-btn">
                                    		<span>Login</span></a>
										</c:if>
										<c:if test="${!empty id }">
                                   			 <a href="${pageContext.request.contextPath }/memberLoginOut.do" class="toolbar-btn">
                                    		<span>Logout</span></a>
										</c:if>
                                </div>
                                <div class="toolbar-item d-block d-lg-none">
                                    <a href="#offcanvasnav" class="hamburger-icon js-toolbar menu-btn">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </a>
                                </div>
                                
                                <!-- myPage -->
                                <div class="toolbar-item d-none d-lg-block">
										<c:if test="${!empty id }">
                                   			 <a href="${pageContext.request.contextPath }/memberMyPage.do" class="toolbar-btn">
                                    		<span>my Page</span></a>
										</c:if>
                                </div>
                                
                                <!-- cart -->
                                <div class="toolbar-item mini-cart-btn">
                                    <a href="#miniCart" class="toolbar-btn js-toolbar">
                                    	<c:if test="${!empty id }">
                                            <i class="flaticon-bag"></i>
										</c:if>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="header-sticky-height"></div>
            </div>
        </header>
    
</body>
</html>