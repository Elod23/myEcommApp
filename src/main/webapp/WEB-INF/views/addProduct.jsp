<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: varga
  Date: 11/12/2018
  Time: 3:55 PM
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
                <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Adding a product</a>
            </div>
        </div>
    </div>
</section>

<section id="services">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-12 col-lg-offset-2 text-center">
                <h2 class="section-heading">Please fill the data below to register a new product!</h2>
                <p>View</p>
                <hr class="my-4">
            </div>
        </div>
    </div>
    <div class="container col-md-6 col-md-offset-3">
        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product">
            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="productName" id="name" cssClass="form-control" />
            </div>
            <div class="form-group">
            <label for="category">Category</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="Telephone" /> Telephone
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="Smartphone" /> Smartphone
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="Gadget" /> Gadget
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="Accessories" /> Accessories
                </label>
            </div>
    <div class="form-group">
        <label for="description">Description</label>
        <form:input path="productDescription" id="description" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label for="price">Price</label>
        <form:input path="productPrice" id="price" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label for="condition">Condition</label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCondition" id="condition" value="Sealed" /> Sealed
        </label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCondition" id="condition" value="Used" /> Used
        </label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCondition" id="condition" value="Deteriorated" /> Deteriorated
        </label>
    </div>
    <div class="form-group">
        <label for="status">Condition</label>
        <label class="checkbox-inline">
            <form:radiobutton path="productStatus" id="status" value="Available" /> Available
        </label>
        <label class="checkbox-inline">
            <form:radiobutton path="productStatus" id="status" value="Unavailable" /> Unavailable
        </label>
    </div>
    <div class="form-group">
        <label for="unitInStock">Unit On Stock</label>
        <form:input path="unitInStock" id="stock" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label for="productManufacturer">Manufacturer</label>
        <form:input path="productManufacturer" id="manufacturer" cssClass="form-control"/>
    </div>
    <div class="col-lg-8 col-lg-offset-2 text-center">
        <input type="submit" value="submit" class="btn btn-success" />
        <a href="<c:url value="/admin/productInventory" />"  class="btn btn-primary"> Cancel </a>
    </div>
    </form:form>
    </div>
</section>
<div class="clearfix" />
<%@ include file="/WEB-INF/views/template/home_footer.jsp"%>
