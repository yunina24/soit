<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 <!-- Breadcrumb area Start -->
  <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
      <div class="container">
          <div class="row">
              <div class="col-12 text-center">
                  <h1 class="page-title">All accessory</h1>
                  <ul class="breadcrumb">
                      <li><a href="main.do">Home</a></li>
                      <li class="current"><span>so-it!</span></li>
                  </ul>
              </div>	
          </div>
      </div>
  </section>
  
  
  <div style="width:100%; padding:0% 15%;">
  		<div style="text-align: center; float:right;"> 
			<c:if test="${id eq 'admin' }">
				<button type="button" class="btn btn-size-sm" onclick="location.href='productForm.do'">writing</button>
			</c:if>
		</div>
		<div style="clear:both;"></div>
		<br>
 <!-- Breadcrumb area End -->
      <div class="row">
      <c:forEach items="${product }" var="product">
 		<div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
                    <div class="payne-product">
                        <div class="product__inner">
                            <div class="product__image">
                                <figure class="product__image--holder">
                                    <img src="upload/${product.productImage }" alt="Product">
                                </figure>
                                <a href="product-details.html" class="product-overlay"></a>

                            </div>
                            <div class="product__info">
                                <div class="product__info--left">
                                    <h3 class="product__title">
                                        <a href="product-details.html">${product.productName }</a>
                                    </h3>
                                    <div class="product__price">
                                        <span class="money">${product.price }</span>
                                        <span class="sign">$</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
         </c:forEach>
         
            </div>
			
		</div>	
 <!-- Global Overlay Start -->
 <div class="global-overlay"></div>
 <!-- Global Overlay End -->

 <!-- Scroll To Top Start -->
 <a class="scroll-to-top" href=""><i class="fa fa-angle-double-up"></i></a>
 <!-- Scroll To Top End -->
 