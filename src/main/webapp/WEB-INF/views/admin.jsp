<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: varga
  Date: 11/12/2018
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<section id="services">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Admin Page</h2>
                <p>Welcome home, admin!</p>
                <hr class="primary">
                <br>
                <h3>
                    <a href="<c:url value="/admin/productInventory" />" class="btn btn-lg btn-success">
                        Product Inventory
                    </a>
                </h3>
                <p>View, check, and administrate the inventory!</p>
                <h3>
                    <div class="container col-md-6 col-md-offset-3">
                        <form:form action="${pageContext.request.contextPath}/admin/searchProduct" method="post"
                                   commandName="product">
                            <div class="form-group">
                                <label for="id">Product Id</label>
                                <form:input path="productId" id="id" cssClass="form-control"/>
                            </div>

                            <a href="<c:url value="/admin/searchProduct" />"><input type="submit" value="Search Product"
                                                                                    class="btn btn-lg btn-success">
                            </a>
                        </form:form>
                    </div>
                </h3>
            </div>
        </div>
    </div>
</section>
<%@ include file="/WEB-INF/views/template/home_footer.jsp" %>