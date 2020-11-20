<%-- 
    Document   : register
    Created on : 19/11/2020, 07:23:55 AM
    Author     : samuel.serna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" 
          crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" 
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" 
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" 
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" 
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" 
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" 
        crossorigin="anonymous"></script>
        
        <title>PreParcial</title>
        
    </head>
    
    
    <body>
        <div class="container">
<ul class="nav nav-pills mb-6" id="pills-tab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Home</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-register" role="tab" aria-controls="pills-register" aria-selected="false">Registro Menor</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Contact</a>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">...</div>
  <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="pills-register-tab">
      <h2>Registro Menor</h2>

              <form method="post" action="verify">      
              <table class="col-4">
                 
            <tr>
            <label class="col-2">Documento:</label>
            <input type="number" id="IdMenor" name="IdMenor"/>
            </tr><br/>
                  
            <tr>
            <label class="col-2">Nombres:</label> 
            <input type="text" id="txtNombre" name="txtNombre"/>
            </tr> <br/>
            
            <tr>
            <label class="col-2">Apellidos:</label> 
            <input type="text" id="txtApellido" name="txtApellido"/>
            </tr> <br/>
                        
            <tr>
            <label class="col-2">Dirección:</label> 
            <input type="text" id="txtDireccion" name="txtDireccion"/>
            </tr> <br/>
                        
            <tr>
            <label class="col-2">Edad:</label> 
            <input type="number" id="Edad" name="Edad"/>
            </tr> <br/>
            
            <tr>
            <label class="col-2">Fecha Nacimiento:</label> 
            <input type="date" id="birthday" name="birthday"/>
            </tr>
            
            <br/>
                        
            <tr>
            <label class="col-2">Lugar de Nacimiento:</label> 
            <input type="text" id="txtNacimiento" name="txtNacimiento"/>
            </tr> <br/>  
            
            <tr>
            <label class="col-2">Telefono:</label> 
            <input type="number" id="phone" name="phone"/>
            </tr> <br/>            
            
            <tr>
            <label class="col-2">Salario Trabajador:</label> 
            <input type="number" id="SalarioTrabajador" name="SalarioTrabajador"/>
            </tr> <br/>
            
            <tr>
            <label class="col-2">Salario Conyuge:</label> 
            <input type="number" id="SalarioConyuge" name="SalarioConyuge"/>
            </tr> <br/>
            
            <div>        
            <button type="submit" class="col-2 btn btn-outline-primary" href="verify">Verificar</button>
               
                    
            <button type="reset" class="btn btn-secondary" href="#pills-home">Cancelar</button>
            </div>

              </table>
                  
            </form>     
      
      <% if (request.getAttribute("verify") !=  null){ %> 
      <label><%= request.getAttribute("verify")%> </label>
      <%}%>
  </div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">...</div>
</div>

     </div>   
    </body>
</html>
