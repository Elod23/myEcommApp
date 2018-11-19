<%@ taglib prefix="table" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: varga
  Date: 11/15/2018
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<section class="services">
    <div class="container col-md-6 col-md-offset-3">
        <form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct/${product.productId}/edit/${product.productId}" method="post" commandName="product">
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
<%@ include file="/WEB-INF/views/template/home_footer.jsp"%>
