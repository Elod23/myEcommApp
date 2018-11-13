<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: varga
  Date: 11/12/2018
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/template/home_header.jsp"%>

<section class="bg-primary" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto text-center">
                <h2 class="section-heading text-white">Product Inventory</h2>
                <hr class="light my-4">
                <p class="text-faded mb-4">Product situation:</p>
                <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Generated at the moment of entering!</a>
            </div>
        </div>
    </div>
</section>

<section id="services">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Products</h2>
                <p>View</p>
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
            <th>Detailed View</th>
            <th>Delete</th>
        </tr>
        </thead>
        <c:forEach items="${products}" var="product">

            <tr>
                <td><img src="#" alt="image"/> </td>
                <td>${product.productName}</td>
                <td>${product.productCategory}</td>
                <td>${product.productCondition}</td>
                <td>${product.productPrice} LEI</td>
                <td>
                    <a href="<c:url value="/viewProduct/${product.productId}" /> " >
                    <span class="glyphicon glyphicon-circle-arrow-right"> info </span>
                    </a>
                </td>

            </tr>
        </c:forEach>
    </table>
    <a href="<c:url value="/admin/productInventory/addProduct" />" class="btn btn-success"> Add Product </a>
    <a href="<c:url value="/admin/productInventory/searchProduct" />" class="btn btn-success"> Search Product </a>
    <a href="<c:url value="/admin/productInventory/deleteProduct" />" class="btn btn-success"> Delete Product </a>
</section>

<%@ include file="/WEB-INF/views/template/home_footer.jsp"%>
