<%--
  Created by IntelliJ IDEA.
  User: varga
  Date: 11/14/2018
  Time: 2:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-fluid p-0">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h2 class="section-heading">Deleted Product Overview</h2>
            <h3>The product has been successfully deleted!</h3>
        </div>
    </div>
</div>
<section id="services">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Product Overview</h2>
                <p>Detailed description of the item:</p>
                <hr class="my-4">
            </div>
        </div>
    </div>
    <div class="container" >
        <div class="row">
            <div class="col-md-5">
                <img src="#" alt="image" style="width: 100%; height: 300px;"/>
            </div>
            <div class="col-md-5">
                <h3>Product name: ${product.productName}</h3>
                <p>Product description:${product.productDescription} </p>
                <p>Manufacturer: ${product.productManufacturer}</p>
                <p>Category: ${product.productCategory}</p>
                <p>Price: ${product.productPrice} LEI</p>
            </div>
        </div>

    </div>
</section>
<div class="clearfix"/>
<%@ include file="/WEB-INF/views/template/home_footer.jsp" %>
