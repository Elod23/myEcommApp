<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: varga
  Date: 11/12/2018
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/template/home_header.jsp" %>

<section class="bg-primary" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto text-center">
                <h2 class="section-heading text-white">Product Inventory</h2>
                <hr class="light my-4">
                <p class="text-faded mb-4">Product situation:</p>
                <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Generated at the moment of
                    entering!</a>
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
    <table class="table table-striped table-hover table-bordered">

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
                <td><img src="#" alt="image"/></td>
                <td>${product.productName}</td>
                <td>${product.productCategory}</td>
                <td>${product.productCondition}</td>
                <td>${product.productPrice} LEI</td>
                <td>
                    <form:form action="${pageContext.request.contextPath}/viewProduct/${product.productId}" method="post"
                               commandName="product">
                        <div class="form-group">
                            <input type="submit" value="Details" class="btn btn-lg btn-success">
                        </div>
                    </form:form>
                </td>
                <td>
                    <form:form action="${pageContext.request.contextPath}/admin/productInventory/deleteProduct/${product.productId}" method="post"
                               commandName="product" target="_blank">
                        <div class="form-group">
                            <input type="submit" value="Delete" class="btn btn-lg btn-success" >
                        </div>
                    </form:form>
                </td>

            </tr>
        </c:forEach>
    </table>
    <div style="text-align: center">
    <a href="<c:url value="/admin/productInventory/addProduct" />" class="btn btn-success"> Add Product </a>
    </div>
</section>

<%@ include file="/WEB-INF/views/template/home_footer.jsp" %>
