<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <title>Foster Hollywood</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>
    <header style="background-color: rgb(23, 24, 71);" class="my-3">
        <img src="img/logo.svg" alt="">
    </header>
    <main>
        <div class="row justify-content-center">
        <c:forEach items="${categorias}" var="categoria">
            <div class="col-xl-4 col-md-6 mb-3">
                <div class="card">
                    <a href="Controller?op=dameplatos&categoriaid=${categoria.id}&nombrecategoria=${categoria.nombre}" class="text-decoration-none text-black">
                        <img class="card-img-top" src="img/category/${categoria.nombre}.png" alt="Title">
                        <div class="card-body">
                            <h4 class="card-title text-center">${categoria.nombre}</h4>
                        </div>
                    </a>
                </div>
            </div>
            </c:forEach>
        </div>
        <c:if test="${productos != null}">
	        <h1 class="text-center my-5">${nombrecategoria}</h1>
	
	        <div class="row justify-content-center">
	        <c:forEach items="${productos}" var="producto">
		            <div class="col-xl-4 col-md-6 mb-3">
		                <div class="card">
		                    <img class="card-img-top" src="${producto.imagen}" alt="Title">
		                    <div class="card-body">
		                        <h4 class="card-title text-center">${producto.titulo}</h4>
		                    </div>
		                </div>
		            </div>
	            </c:forEach>
	        </div>
	     </c:if>>
    </main>
    <footer style="background-color: rgb(23, 24, 71);" class="my-3 text-white">
        <h1 class="text-center">&copy; Lucía</h1>
    </footer>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>

</html>