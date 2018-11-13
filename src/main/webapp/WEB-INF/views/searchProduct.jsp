<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: varga
  Date: 11/13/2018
  Time: 2:31 PM
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
                <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Searching a product</a>
            </div>
        </div>
    </div>
</section>

<section id="services">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-12 col-lg-offset-2 text-center">
                <h2 class="section-heading">Please fill the data below to search the desired product!</h2>
                <p>View</p>
                <hr class="my-4">
            </div>
        </div>
    </div>
    <div class="container col-md-6 col-md-offset-3">
        <form:form action="${pageContext.request.contextPath}/admin/productInventory/searchProduct" method="post" commandName="product">
            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="productName" id="name" cssClass="form-control" />
            </div>
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <a href="<c:url value="/viewProduct/{productId}" /> "  ><input type="submit" value="submit" class="btn btn-success" /> </a>
                <a href="<c:url value="/admin/productInventory" />"  class="btn btn-primary"> Cancel </a>
            </div>
        </form:form>
    </div>
</section>
<div class="clearfix" />
<%@ include file="/WEB-INF/views/template/home_footer.jsp"%>