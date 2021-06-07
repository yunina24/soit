<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
</head>
<body>
<img src="${pageContext.request.contextPath }/bootstrap/assets/img/banner/bannerImage1.jpg" width="100%">
	<br><br><br><br>

	 <!-- Product Area Start -->
            <section class="product-area mb--50 mb-xl--40 mb-lg--25 mb-md--30 mb-sm--20">
                <div class="container">
                    <div class="row mb--42">
                        <div class="col-xl-5 col-lg-6 col-sm-10">
                            <h2 class="heading__secondary">NEW ARRIVALS</h2>
                            <p>Neque porro quisquam est, qui dolorem ipsum quia dolor ipisci velit, sed quia non numquam
                                eius modi </p>
                        </div>
                    </div>
                    
                    
      <!-- 메뉴 -->
      
      
      <div class="row">
      <c:forEach items="${product }" var="product" end="11">
 		<div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
                    <div class="payne-product">
                        <div class="product__inner">
                            <div class="product__image">
                                <figure class="product__image--holder">
                                	<a href = "productSelect.do?ProductNum=${product.productNum }">
                                    <img src="upload/${product.productImage }" alt="Product"></a>
                                </figure>
                                <a href="product-details.html" class="product-overlay"></a>

                            </div>
                            <div class="product__info">
                                <div class="product__info--left">
                                    <h3 class="product__title">
                                        <a href="product-details.html">${product.productName }</a>
                                    </h3>
                                    <div class="product__price">
                                        <span class="money">&#8361; ${product.price }</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
         </c:forEach>
         
            </div>
         
               
        </div>
    </section>
    <!-- Product Area End -->
    
    
</body>
</html>