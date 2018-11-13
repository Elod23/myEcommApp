<%--
  Created by IntelliJ IDEA.
  User: varga
  Date: 11/12/2018
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<section id="services">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Admin Page</h2>
                <p>Welcome home, admin!</p>
                <hr class="primary"> <br>
                <h3>
                    <a href="<c:url value="/admin/productInventory" />" class="btn btn-lg btn-success">
                        Product Inventory
                    </a>
                    <a href="<c:url value="/admin/searchProduct" />" class="btn btn-lg btn-success">
                        Product Inventory
                    </a>
                </h3>
                <p>View, check, and administrate the inventory!</p>
            </div>
        </div>
    </div>
</section>
<%@ include file="/WEB-INF/views/template/home_footer.jsp"%>