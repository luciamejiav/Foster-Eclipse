<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    
    
  <link href="css/style.css" rel="stylesheet" />

</head>


<body>
  <div class="container shadow">
  <p>${msg}</p> 
  <header style="background-color: rgb(23 24 71);" class="py-3">
        <img src="img/logo.svg" alt="">
  </header>
  <main>
        <div class="row justify-content-center mt-3">
        	<c:forEach items="${categorias}" var="categoria">
	            <div class="col-xl-2 col-lg-3 col-md-4 col-6 mb-3">
	                <div class="card">
	                    <a href="Controller?op=dameplatos&categoriaid=${categoria.id}&nombrecategoria=${categoria.nombre}" class="text-decoration-none text-black">
	                    <img class="card-img-top" src="img/category/${categoria.nombre}.png" alt="Title">
	                    <div class="card-body">
	                        <h6 class="card-title text-center">${categoria.nombre}</h6>
	                    </div>
	                    </a>
	                </div>
	            </div>  
            </c:forEach>          
        </div>
		<c:if test="${productos!=null}">
	        <h1 class="text-center my-5">${nombrecategoria}</h1>
	
	        <div class="row justify-content-center">
	        	<c:forEach items="${productos}" var="producto">
		            <div class="col-xl-4 col-md-6 mb-3 d-flex"> <!--d-flex y flex-fill son para que todo esté a la misma altura-->
		                <div class="card flex-fill position-relative pb-5">  <!-- para que todas las estrellas salgan a la misma altura y en el mismo sitio ponemos posicionamiento relativo y mas abajo posicionamiente absoluto  -->  
		                    <img class="card-img-top" src="${producto.imagen}" alt="Title">
		                    <div class="card-body">
		                        <h4 class="card-title text-center">${producto.titulo}</h4>
		                        <p>${producto.body}</p>
		                        <p class = "position-absolute bottom-0 end-0"> <!-- con esto encerramos las estrellas y las mandamos donde queremos -->
		                        <span class="rating">
                                	<a href="Controller?op=rating&rating=1&productoid=${producto.id}">&#9733;</a>
                                	<a href="Controller?op=rating&rating=2&productoid=${producto.id}">&#9733;</a>
                                	<a href="Controller?op=rating&rating=3&productoid=${producto.id}">&#9733;</a>
                                	<a href="Controller?op=rating&rating=4&productoid=${producto.id}">&#9733;</a>
                                	<a href="Controller?op=rating&rating=5&productoid=${producto.id}">&#9733;</a>
                            	</span>
		                        </p>
		                    </div>
		                </div>
		            </div> 
	            </c:forEach>           
	        </div>
        </c:if>
  </main>
  <div class="my-5">&nbsp;</div>
  <footer style="background-color: rgb(23 24 71);" class="py-3 text-white position-fixed bottom-0 start-0 w-100">
        <h1 class="text-center">&copy; Lucía</h1>
  </footer>
  </div>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>
</body>

</html>