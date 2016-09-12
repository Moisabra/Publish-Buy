<%-- 
    Document   : VMenu
    Created on : 09-09-2016, 09:06:32 AM
    Author     : Moises Abrahan Abarca Galdamez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <link rel="shortcut icon" href="../images/ico1.png">
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../css/flexslider.css">
        <link rel="stylesheet" type="text/css" href="../css/memenu.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <script src="../js/jquery-1.11.0.min.js"></script>
        <script src="../js/memenu.js"></script>
        <script src="../js/move-top.js"></script>
        <script src="../js/easing.js"></script>
        <script src="../js/simpleCart.min.js"></script>
        <script src="../js/responsiveslides.min.js"></script>
        <script>$(document).ready(function () {
                $(".memenu").memenu();
            });</script>	
        <title>Publica Y compra</title>
    </head>
    <body>
        <div class="top-header">
            <div class="container">
                <div class="top-header-main">
                    <div class="col-md-4 top-header-left">
                        <div class="search-bar">
                            <input type="text" placeholder="Buscar">
                            <input type="submit" value="">
                        </div>
                    </div>
                    <div class="col-md-4 top-header-middle">
                        <a href="VMenu.jsp"><img src="../images/2.png" alt="" /></a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="container">
                <div class="top-nav">
                    <ul class="memenu skyblue"><li class="active"><a href="index.html">Inicio</a></li>
                        <li class="grid"><a href="#">Categorias</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one"></div>
                                    <div class="col1 me-one">
                                        <center>
                                            <h4>Categorias</h4>
                                            <ul>
                                                <li><a href="#">Hogar</a></li>
                                                <li><a href="#">Vehiculos</a></li>
                                                <li><a href="#">Tecnologia</a></li>
                                                <li><a href="#">Arte</a></li>
                                                <li><a href="#">Antigedades</a></li>
                                            </ul>
                                        </center>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="#">Sobre Nosotros</a></li>

                    </ul>
                </div>
            </div>
        </div>
        <!-- cintenido---->
        <div class="container">
            <section class="col-md-2  panel panel-danger " id="miMenu" >
                <label class="label label-danger">Mis Opciones</label>
                <ul style="list-style-type: none;">

                    <% HttpSession sesion = request.getSession();
                        if (sesion.getAttribute("Nivel") != null) {
                            if (sesion.getAttribute("Nivel").equals("Admin")) {
                    %>
                    <li><a href="VUsuarios.jsp">Usuarios</a></li>
                    <li><a href="VProductos.jsp">Productos</a></li>
                    <li><a href="VPublicaciones.jsp">Publicaciones</a></li>
                    <li><a href="#">Mensajes</a></li>
                    <li><a href="#">Publisidad</a></li>
                    <li><a href="#">Mi perfil</a></li>
                    <li><a href="VMenu.jsp">Mis Anuncios</a></li>
                        <%        
                        } else if (sesion.getAttribute("Nivel").equals("User")) {
                        %>
                    <li><a href="#">Mensajes</a></li>
                    <li><a href="#">Mi perfil</a></li>
                    <li><a href="VMenu.jsp">Mis Anuncios</a></li>
                        <%    
                        } else {
                        %>
                    <li><a href="#">Mensajes</a></li>
                    <li><a href="#">Publisidad</a></li>
                    <li><a href="#">Mi perfil</a></li>
                    <li><a href="VMenu.jsp">Mis Anuncios</a></li>
                        <%            
                                }
                            } else {
                                response.sendRedirect("../index.jsp");
                            }
                        %>
                </ul>
            </section>
            <section class="panel panel-primary col-md-10 col-sm-12" id="misAnuncios">
                <label class="label label-danger">Mis Anuncios</label>

                <div class="product-one">
                    <div class="col-md-3 col-sm-3"> 
                        <div class="p-one simpleCart_shelfItem">							
                            <a href="#">
                                <img src="../images/banner-2.jpg" height="150" width="100"/>
                            </a>
                            <h5 class="h5">Titulo</h5>
                        </div>
                    </div>
                </div>
                <div class="product-one">
                    <div class="col-md-3 col-sm-3"> 
                        <div class="p-one simpleCart_shelfItem">							
                            <a href="#">
                                <img src="../images/banner-2.jpg" height="150" width="100"/>
                            </a>
                            <h5 class="h5">Titulo</h5>
                        </div>
                    </div>
                </div>
                <div class="product-one">
                    <div class="col-md-3 col-sm-3"> 
                        <div class="p-one simpleCart_shelfItem">							
                            <a href="#">
                                <img src="../images/banner-2.jpg" height="150" width="100"/>
                            </a>
                            <h5 class="h5">Titulo</h5>
                        </div>
                    </div>
                </div>
                <div class="product-one">
                    <div class="col-md-3 col-sm-3"> 
                        <div class="p-one simpleCart_shelfItem">							
                            <a href="#">
                                <img src="../images/banner-2.jpg" height="150" width="100"/>
                            </a>
                            <h5 class="h5">Titulo</h5>
                        </div>
                    </div>
                </div>
                <div class="product-one">
                    <div class="col-md-3 col-sm-3"> 
                        <div class="p-one simpleCart_shelfItem">							
                            <a href="#">
                                <img src="../images/banner-2.jpg" height="150" width="100"/>
                            </a>
                            <h5 class="h5">Titulo</h5>
                        </div>
                    </div>
                </div>
                <div class="product-one">
                    <div class="col-md-3 col-sm-3"> 
                        <div class="p-one simpleCart_shelfItem">							
                            <a href="#">
                                <img src="../images/banner-2.jpg" height="150" width="100"/>
                            </a>
                            <h5 class="h5">Titulo</h5>
                        </div>
                    </div>
                </div>
                <div class="product-one">
                    <div class="col-md-3 col-sm-3"> 
                        <div class="p-one simpleCart_shelfItem">							
                            <a href="#">
                                <img src="../images/banner-2.jpg" height="150" width="100"/>
                            </a>
                            <h5 class="h5">Titulo</h5>
                        </div>
                    </div>
                </div>
                <div class="product-one">
                    <div class="col-md-3 col-sm-3"> 
                        <div class="p-one simpleCart_shelfItem">							
                            <a href="#">
                                <img src="../images/banner-2.jpg" height="150" width="100"/>
                            </a>
                            <h5 class="h5">Titulo</h5>
                        </div>
                    </div>
                </div>
                <div class="product-one">
                    <div class="col-md-3 col-sm-3"> 
                        <div class="p-one simpleCart_shelfItem">							
                            <a href="#">
                                <img src="../images/banner-2.jpg" height="150" width="100"/>
                            </a>
                            <h5 class="h5">Titulo</h5>
                        </div>
                    </div>
                </div>

            </section>
            <div class="clearfix"></div>
        </div>
        <!-- Piede de pagina---->
        <div class="footer-text" style="background: #bdc3c7;">

            <div class="container">
                <div class="footer-main">
                    <p class="footer-class">©Publish&Buy 2016 derechos reservados</p>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function () {
                    $().UItoTop({easingType: 'easeOutQuart'});
                });
            </script>
            <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        </div>
    </body>
</html>
