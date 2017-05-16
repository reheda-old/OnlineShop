<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <title>Board games shop</title>

    <jsp:include page="_styles.jsp"/>

</head>
<body>


<jsp:include page="_header.jsp"/>
<jsp:include page="_menu.jsp"/>


<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2>Home page</h2>

            <div class="well">

                <h3>Demo user's credentials</h3>

                <table class="table">
                    <thead>
                        <tr>
                            <th>Role</th>
                            <th>Login</th>
                            <th>Password</th>
                            <th>Login</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>

                            <td>EMPLOYEE</td>
                            <td>employee1</td>
                            <td>employee1</td>
                            <td><a class="btn btn-default btn-xs" href="${pageContext.request.contextPath}/autoLogin?login=employee1&pass=employee1">Auto login</a></td>
                        </tr>
                        <tr>
                            <td>MANAGER</td>
                            <td>manager1</td>
                            <td>manager1</td>
                            <td><a class="btn btn-default btn-xs" href="${pageContext.request.contextPath}/autoLogin?login=manager1&pass=manager1">Auto login</a></td>
                        </tr>
                    </tbody>
                </table>

            </div>


            <jsp:include page="_footer.jsp"/>
        </div>
    </div>
</body>
</html>