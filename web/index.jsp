<%-- 
    Document   : listas
    Created on : 5 jun. 2022, 17:25:15
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script src="https://kit.fontawesome.com/3c0bd07c85.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/estilos.css"/>
        <title>Examen 2</title>
        <link rel="icon" type="img/jpg" href="img/Dino.PNG.png"/>
        <%@include file="../WEB-INF/plantilla/head.jspf" %>
    </head>
    <body>
       <br>
        <div class="container pt-2">  
            <div class="row" >
                <div class="col">
                    <div class="form-group">
                        <label for="sucursal">Sucursal:</label>
                        <select name="sucursal" id="sucursal" class="form-control">
                            <option value="0">Seleccionar Sucursal</option>
                        </select>
                    </div>               
                     <div class="form-group">
                        <label for="producto" style="background-color: white">Producto:</label>
                        <select name="producto" id="productos" class="form-control">
                            <option value="0">Seleccionar Producto</option>
                        </select>
                    </div>  
                </div>
                <div class="col">
                     <div class="form-group">
                        <label for="cliente" style="background-color: white">Cliente:</label>
                        <select name="cliente" id="clientes" class="form-control">
                            <option value="0">Seleccionar Cliente</option>
                        </select>
                    </div>                   
                   
                    <br>
                    <div class="row col-1 col-lg-1">
                <button class="agregar btn btn-danger" type="submit">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspAgregar&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
            </div> 
                </div>
                <div class="col">
                      <div class="form-group">
                        <label for="vendedor" style="background-color: white">Vendedor:</label>
                        <select name="vendedor" id="vendedores" class="form-control">
                            <option value="0">Seleccionar Vendedor</option>
                        </select>
                    </div>     
                </div>
            </div>          
            <div class="row">
               <div class="col">
                   <label for="cantidad" style="background-color: white">Cantidad:</label>
                    <input type="text" class="form-control" placeholder=" " readonly="readonly">
                </div>              
                <div class="col">
                     <label for="cantidad" style="background-color: white">Producto:</label>
                    <input id="productosP" type="text" class="form-control" placeholder=" " readonly="readonly">
                </div>
                <div class="col">
                     <label for="precio" style="background-color: white">Precio:</label>
                    <input type="text" class="form-control" placeholder=" " readonly="readonly">
                </div>
                <div class="col">
                     <label for="stock" style="background-color: white">Stock:</label>
                    <input type="text" class="form-control" placeholder=" " readonly="readonly">
                </div>
                <div class="col">
                    <button type="button" class="registrar btn btn-success">Registrar Venta</button>
                </div>
            </div>    
            <br><br>
             <center> <table class="table w-75" id="tablita">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">ID</th>
                    <th scope="col">SUCURSAL</th>
                     <th scope="col">VENDEDOR</th>
                    <th scope="col">CLIENTE</th>
                     <th scope="col">FECHA</th>
                    <th scope="col" colspan="2">DETALLE VENTA</th>
                </tr>
            </thead>
            <tbody>                
            </tbody>
        </table></center>           
        </div>
        <%@include file="../WEB-INF/plantilla/footer.jspf" %>
        <script src="js/listas.js"></script>  
    </body>
</html>
