<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: varga
  Date: 11/11/2018
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/template/home_header.jsp"%>

<header class="masthead text-center text-white d-flex">
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <h1 class="text-uppercase">
                    <strong>Welcome to my very first E-Commerce Store</strong>
                </h1>
                <hr>
            </div>
            <div class="col-lg-8 mx-auto">
                <p class="text-faded mb-5">E-Comm Store!</p>
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More About Us!</a>
            </div>
        </div>
    </div>
</header>

<section class="bg-primary" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto text-center">
                <h2 class="section-heading text-white">We've got what you need! IMyFirst has been up and running since 2016 delivering the best gadgets to thousands of happy customers all across the globe.</h2>
                <hr class="light my-4">
                <p class="text-faded mb-4"> We'be been working our asses off to fulfill each and every little desire of yours!</p>
                <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Do you want to learn more about us? Get started!</a>
            </div>
        </div>
    </div>
</section>

<section id="services">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Hot Products</h2>
                <p>Top Most  Wanted</p>
                <hr class="my-4">
            </div>
        </div>
    </div>
    <table class="table table-striped table-hover table-bordered" >

        <thead>
            <tr>
            <th>Photo Thumb</th>
            <th>Product name</th>
            <th>Category</th>
            <th>Condition</th>
            <th>Price</th>
                <th></th>
            </tr>
        </thead>
            <c:forEach items="${products}" var="product">
                <c:if test="${product.productPrice > 3000 && product.unitInStock > 0}" >
                <tr>
                    <td><img src="#" alt="image"/> </td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} RON</td>
                    <td>
                        <a href="<c:url value="/viewProduct/${product.productId}" /> " >
                        <span class="glyphicon glyphicon-info-sign"> view</span>
                        </a>
                    </td>
                </tr>
                </c:if>
            </c:forEach>
    </table>
</section>

<section class="p-0" id="portfolio">
    <div class="container-fluid p-0">
        <div class="row no-gutters popup-gallery">
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/1.jpg" /> ">
                    <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/1.jpg" /> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                Reusables
                            </div>
                            <div class="project-name">
                                I(RE)Use
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/2.jpg" /> ">
                    <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/2.jpg" /> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                Consumables
                            </div>
                            <div class="project-name">
                                ICON(sume)
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" href="<c:url value="/resources/img/portfolio/fullsize/3.jpg" /> ">
                    <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/3.jpg" /> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                Objects
                            </div>
                            <div class="project-name">
                                IMyObjects
                            </div>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>
</section>

<section class="bg-dark text-white">
    <div class="container text-center">
        <h2 class="mb-4">Free Shipping at your first order!</h2>
        <a class="btn btn-light btn-xl sr-button" href="http://startbootstrap.com/template-overviews/creative/">Order
            Now!</a>
    </div>
</section>
<%@ include file="/WEB-INF/views/template/home_footer.jsp"%>

