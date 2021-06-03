<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!-- Main Content Wrapper Start -->
<div  class="main-content-wrapper">
    <div class="shop-page-wrapper ptb--80">
        <div class="container">
            <div class="row">
                <div class="col-12">
					<div style="text-align: center; float:right; padding-bottom:2%;"> 
						<c:if test="${id eq 'admin' }">
							<button type="button" class="btn btn-size-sm"onclick="location.href='noticeForm.do'">writing</button>
						</c:if>
					</div>	
					<div style="content: ''; dispaly: table; clear: both;">
					</div>
                    <div class="shop-products">
                        <div class="row">
                            <div class="col-xl-4 col-sm-6 mb--50">
                                <div class="payne-product">
                                    <div class="product__inner">
                                        <div class="product__image">
                                            <figure class="product__image--holder">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-03-270x300.jpg" alt="Product">
                                            </figure>
                                            <a href="product-details.html" class="product__overlay"></a>
                                            <div class="product__action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="sr-only">Add to wishlist</span>
                                                </a>
                                                <a href="compare.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                                <a href="cart.html" class="action-btn">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="sr-only">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__info">
                                            <div class="product__info--left">
                                                <h3 class="product__title">
                                                    <a href="product-details.html">Lexbaro Begadi</a>
                                                </h3>
                                                <div class="product__price">
                                                    <span class="money">132.00</span>
                                                    <span class="sign">$</span>
                                                </div>
                                            </div>
                                            <div class="product__info--right">
                                                <span class="product__rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="payne-product-list">
                                    <div class="product__inner">
                                        <figure class="product__image">
                                            <a href="product-details.html" class="d-block">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-03-270x300.jpg" alt="Products">
                                            </a>
                                            <div class="product__thumbnail-action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                            </div>
                                        </figure>
                                        <div class="product__info">
                                            <h3 class="product__title">
                                                <a href="product-details.html">Lexbaro Begadi</a>
                                            </h3>
                                            <div class="product__price">
                                                <span class="money">132.00</span>
                                                <span class="sign">$</span>
                                            </div>
                                            <span class="product__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                            <p class="product__short-description">
                                                Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                            </p>  
                                            <div class="d-flex product__list-action">
                                                <a href="cart.html" class="btn btn-size-sm">Add To Cart</a>
                                                <a href="compare.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 mb--50">
                                <div class="payne-product">
                                    <div class="product__inner">
                                        <div class="product__image">
                                            <figure class="product__image--holder">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-04-270x300.jpg" alt="Product">
                                            </figure>
                                            <a href="product-details.html" class="product-overlay"></a>
                                            <div class="product__action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="sr-only">Add to wishlist</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                                <a href="cart.html" class="action-btn">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="sr-only">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__info">
                                            <div class="product__info--left">
                                                <h3 class="product__title">
                                                    <a href="product-details.html">Lexbaro Begadi</a>
                                                </h3>
                                                <div class="product__price">
                                                    <span class="money">132.00</span>
                                                    <span class="sign">$</span>
                                                </div>
                                            </div>
                                            <div class="product__info--right">
                                                <span class="product__rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="payne-product-list">
                                    <div class="product__inner">
                                        <figure class="product__image">
                                            <a href="product-details.html" class="d-block">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-04-270x300.jpg" alt="Products">
                                            </a>
                                            <div class="product__thumbnail-action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                            </div>
                                        </figure>
                                        <div class="product__info">
                                            <h3 class="product__title">
                                                <a href="product-details.html">Lexbaro Begadi</a>
                                            </h3>
                                            <div class="product__price">
                                                <span class="money">132.00</span>
                                                <span class="sign">$</span>
                                            </div>
                                            <span class="product__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                            <p class="product__short-description">
                                                Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                            </p>  
                                            <div class="d-flex product__list-action">
                                                <a href="cart.html" class="btn btn-size-sm">Add To Cart</a>
                                                <a href="compare.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 mb--50">
                                <div class="payne-product">
                                    <div class="product__inner">
                                        <div class="product__image">
                                            <figure class="product__image--holder">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-05-270x300.jpg" alt="Product">
                                            </figure>
                                            <a href="product-details.html" class="product-overlay"></a>
                                            <div class="product__action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="sr-only">Add to wishlist</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                                <a href="cart.html" class="action-btn">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="sr-only">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__info">
                                            <div class="product__info--left">
                                                <h3 class="product__title">
                                                    <a href="product-details.html">Lexbaro Begadi</a>
                                                </h3>
                                                <div class="product__price">
                                                    <span class="money">132.00</span>
                                                    <span class="sign">$</span>
                                                </div>
                                            </div>
                                            <div class="product__info--right">
                                                <span class="product__rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="payne-product-list">
                                    <div class="product__inner">
                                        <figure class="product__image">
                                            <a href="product-details.html" class="d-block">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-05-270x300.jpg" alt="Products">
                                            </a>
                                            <div class="product__thumbnail-action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                            </div>
                                        </figure>
                                        <div class="product__info">
                                            <h3 class="product__title">
                                                <a href="product-details.html">Lexbaro Begadi</a>
                                            </h3>
                                            <div class="product__price">
                                                <span class="money">132.00</span>
                                                <span class="sign">$</span>
                                            </div>
                                            <span class="product__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                            <p class="product__short-description">
                                                Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                            </p>  
                                            <div class="d-flex product__list-action">
                                                <a href="cart.html" class="btn btn-size-sm">Add To Cart</a>
                                                <a href="compare.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 mb--50">
                                <div class="payne-product">
                                    <div class="product__inner">
                                        <div class="product__image">
                                            <figure class="product__image--holder">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-06-270x300.jpg" alt="Product">
                                            </figure>
                                            <a href="product-details.html" class="product-overlay"></a>
                                            <div class="product__action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="sr-only">Add to wishlist</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                                <a href="cart.html" class="action-btn">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="sr-only">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__info">
                                            <div class="product__info--left">
                                                <h3 class="product__title">
                                                    <a href="product-details.html">Lexbaro Begadi</a>
                                                </h3>
                                                <div class="product__price">
                                                    <span class="money">132.00</span>
                                                    <span class="sign">$</span>
                                                </div>
                                            </div>
                                            <div class="product__info--right">
                                                <span class="product__rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="payne-product-list">
                                    <div class="product__inner">
                                        <figure class="product__image">
                                            <a href="product-details.html" class="d-block">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-06-270x300.jpg" alt="Products">
                                            </a>
                                            <div class="product__thumbnail-action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                            </div>
                                        </figure>
                                        <div class="product__info">
                                            <h3 class="product__title">
                                                <a href="product-details.html">Lexbaro Begadi</a>
                                            </h3>
                                            <div class="product__price">
                                                <span class="money">132.00</span>
                                                <span class="sign">$</span>
                                            </div>
                                            <span class="product__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                            <p class="product__short-description">
                                                Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                            </p>  
                                            <div class="d-flex product__list-action">
                                                <a href="cart.html" class="btn btn-size-sm">Add To Cart</a>
                                                <a href="compare.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 mb--50">
                                <div class="payne-product">
                                    <div class="product__inner">
                                        <div class="product__image">
                                            <figure class="product__image--holder">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-07-270x300.jpg" alt="Product">
                                            </figure>
                                            <a href="product-details.html" class="product-overlay"></a>
                                            <div class="product__action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="sr-only">Add to wishlist</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                                <a href="cart.html" class="action-btn">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="sr-only">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__info">
                                            <div class="product__info--left">
                                                <h3 class="product__title">
                                                    <a href="product-details.html">Lexbaro Begadi</a>
                                                </h3>
                                                <div class="product__price">
                                                    <span class="money">132.00</span>
                                                    <span class="sign">$</span>
                                                </div>
                                            </div>
                                            <div class="product__info--right">
                                                <span class="product__rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="payne-product-list">
                                    <div class="product__inner">
                                        <figure class="product__image">
                                            <a href="product-details.html" class="d-block">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-07-270x300.jpg" alt="Products">
                                            </a>
                                            <div class="product__thumbnail-action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                            </div>
                                        </figure>
                                        <div class="product__info">
                                            <h3 class="product__title">
                                                <a href="product-details.html">Lexbaro Begadi</a>
                                            </h3>
                                            <div class="product__price">
                                                <span class="money">132.00</span>
                                                <span class="sign">$</span>
                                            </div>
                                            <span class="product__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                            <p class="product__short-description">
                                                Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                            </p>  
                                            <div class="d-flex product__list-action">
                                                <a href="cart.html" class="btn btn-size-sm">Add To Cart</a>
                                                <a href="compare.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 mb--50">
                                <div class="payne-product">
                                    <div class="product__inner">
                                        <div class="product__image">
                                            <figure class="product__image--holder">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-08-270x300.jpg" alt="Product">
                                            </figure>
                                            <a href="product-details.html" class="product-overlay"></a>
                                            <div class="product__action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="sr-only">Add to wishlist</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                                <a href="cart.html" class="action-btn">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="sr-only">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__info">
                                            <div class="product__info--left">
                                                <h3 class="product__title">
                                                    <a href="product-details.html">Lexbaro Begadi</a>
                                                </h3>
                                                <div class="product__price">
                                                    <span class="money">132.00</span>
                                                    <span class="sign">$</span>
                                                </div>
                                            </div>
                                            <div class="product__info--right">
                                                <span class="product__rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="payne-product-list">
                                    <div class="product__inner">
                                        <figure class="product__image">
                                            <a href="product-details.html" class="d-block">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-08-270x300.jpg" alt="Products">
                                            </a>
                                            <div class="product__thumbnail-action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                            </div>
                                        </figure>
                                        <div class="product__info">
                                            <h3 class="product__title">
                                                <a href="product-details.html">Lexbaro Begadi</a>
                                            </h3>
                                            <div class="product__price">
                                                <span class="money">132.00</span>
                                                <span class="sign">$</span>
                                            </div>
                                            <span class="product__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                            <p class="product__short-description">
                                                Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                            </p>  
                                            <div class="d-flex product__list-action">
                                                <a href="cart.html" class="btn btn-size-sm">Add To Cart</a>
                                                <a href="compare.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 mb--50">
                                <div class="payne-product">
                                    <div class="product__inner">
                                        <div class="product__image">
                                            <figure class="product__image--holder">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-09-270x300.jpg" alt="Product">
                                            </figure>
                                            <a href="product-details.html" class="product-overlay"></a>
                                            <div class="product__action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="sr-only">Add to wishlist</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                                <a href="cart.html" class="action-btn">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="sr-only">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__info">
                                            <div class="product__info--left">
                                                <h3 class="product__title">
                                                    <a href="product-details.html">Lexbaro Begadi</a>
                                                </h3>
                                                <div class="product__price">
                                                    <span class="money">132.00</span>
                                                    <span class="sign">$</span>
                                                </div>
                                            </div>
                                            <div class="product__info--right">
                                                <span class="product__rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="payne-product-list">
                                    <div class="product__inner">
                                        <figure class="product__image">
                                            <a href="product-details.html" class="d-block">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-09-270x300.jpg" alt="Products">
                                            </a>
                                            <div class="product__thumbnail-action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                            </div>
                                        </figure>
                                        <div class="product__info">
                                            <h3 class="product__title">
                                                <a href="product-details.html">Lexbaro Begadi</a>
                                            </h3>
                                            <div class="product__price">
                                                <span class="money">132.00</span>
                                                <span class="sign">$</span>
                                            </div>
                                            <span class="product__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                            <p class="product__short-description">
                                                Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                            </p>  
                                            <div class="d-flex product__list-action">
                                                <a href="cart.html" class="btn btn-size-sm">Add To Cart</a>
                                                <a href="compare.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 mb--50">
                                <div class="payne-product">
                                    <div class="product__inner">
                                        <div class="product__image">
                                            <figure class="product__image--holder">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-10-270x300.jpg" alt="Product">
                                            </figure>
                                            <a href="product-details.html" class="product-overlay"></a>
                                            <div class="product__action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="sr-only">Add to wishlist</span>
                                                </a>
                                                <a href="wishlist.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                                <a href="cart.html" class="action-btn">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="sr-only">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__info">
                                            <div class="product__info--left">
                                                <h3 class="product__title">
                                                    <a href="product-details.html">Lexbaro Begadi</a>
                                                </h3>
                                                <div class="product__price">
                                                    <span class="money">132.00</span>
                                                    <span class="sign">$</span>
                                                </div>
                                            </div>
                                            <div class="product__info--right">
                                                <span class="product__rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="payne-product-list">
                                    <div class="product__inner">
                                        <figure class="product__image">
                                            <a href="product-details.html" class="d-block">
                                                <img src="${pageContext.request.contextPath }/bootstrap/assets/img/products/product-10-270x300.jpg" alt="Products">
                                            </a>
                                            <div class="product__thumbnail-action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                            </div>
                                        </figure>
                                        <div class="product__info">
                                            <h3 class="product__title">
                                                <a href="product-details.html">Lexbaro Begadi</a>
                                            </h3>
                                            <div class="product__price">
                                                <span class="money">132.00</span>
                                                <span class="sign">$</span>
                                            </div>
                                            <span class="product__rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                            <p class="product__short-description">
                                                Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                            </p>  
                                            <div class="d-flex product__list-action">
                                                <a href="cart.html" class="btn btn-size-sm">Add To Cart</a>
                                                <a href="compare.html" class="action-btn">
                                                    <i class="fa fa-repeat"></i>
                                                    <span class="sr-only">Add To Compare</span>
                                                </a>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <nav class="pagination-wrap">
                        <ul class="pagination">
                            <li><span class="page-number current">1</span></li>
                            <li><a href="#" class="page-number">2</a></li>
                            <li><span class="dot"></span></li>
                            <li><span class="dot"></span></li>
                            <li><span class="dot"></span></li>
                            <li><a href="#" class="page-number">16</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main Content Wrapper Start -->

