<%-- 
    Document   : simulador
    Created on : 19/11/2020, 07:50:56 PM
    Author     : Samsung
--%>

<%@page import="co.edu.utap.controllers.ParcialController"%>
<%@page import="java.util.List"%>
<%@page import="co.edu.utap.domain.PlanPago"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
           .currency_col:before{ content: '$'; }
       </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parcial I</title>
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
        <div class="container">
            <h1>Parcial</h1>
        
<ul class="nav nav-pills" >
  <li class="nav-item">
    <a class="nav-link active" href="index.jsp">Inicio</a>
  </li>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Parcial</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="simulador.jsp">Simulador</a>
    </div>
  </li>

</ul> 
                </div> <!--DIV del container-->  
    </head>
    <body>
        </br>
        <table class="container">
    
    <td>
        <form class="container" method="post" action="ParcialController">
        <table>
            <tr>
        <div class="col-md-3">
            <td><label>Valor Prestamo: </label></td>
            <td><input type="number" pattern="(d{3})([.])(d{2})" placeholder="Monto a Solicitar" id="VlrPrestamo" name="VlrPrestamo"/></td>
                </div></tr>
            <tr>
        <div class="col-md-3">
            <td><label>Cuotas: </label></td>
            <td><input type="number" placeholder="Cuotas" id="CantiCuotas" name="CantiCuotas"/></td>
                </div></tr>
            <tr>
        <div class="col-md-3">
            <td><label>TASA M.V: </label></td>
            <td><input type="text" placeholder="Ingrese Tasa" id="Tasa" name="Tasa"/></td>
                </div></tr>
                <tr>         
        
                    <div class="col-md-3">
                   
                    <th><input class="btn btn-info" type="submit" value="Simular" id="btnSimular" name="btnSimular" /> </th>
                    <th><a class="btn btn-secondary" type="reset" href="simulador.jsp">Cancelar</a></th>
                    
                </div>
            </div>
            </table> 
            </form>
        </td>
        
        <td class="badge badge-light" aling="left"> 
        
            <%
                    if (request.getAttribute("plan") != null) {
                int nroCuotas=Integer.valueOf(request.getParameter("CantiCuotas"));
    float valorPrestamo=Math.round(Float.valueOf(request.getParameter("VlrPrestamo")));
    float tasa = Float.valueOf(request.getParameter("Tasa")) / 100;
        
               
        float cuotaMensual = Math.round(valorPrestamo*((tasa * (Math.pow((1+tasa),nroCuotas))) / ((Math.pow((1+tasa),nroCuotas)) - 1)));
            %>
        <div class="container">
            <br>
            <h1><label class="badge badge-pill badge-warning" aling="left">Datos de la Simulación 
                <span class="badge badge-pill badge-light" aling="left"></span>
            </label></h1>
            <h6>
            <label class="badge badge-success">Monto del Prestamo
                <span class="currency_col badge badge-light"><%=request.getParameter("VlrPrestamo")%></span>
            </label></br>    
            
            <label class="badge badge-secondary">Cuotas
                <span class="badge badge-light"><%=request.getParameter("CantiCuotas")%></span>
            </label>
            <label class="badge badge-secondary">Valor Cuota
                <span class="currency_col badge badge-light"><%=cuotaMensual%></span>
            </label></br>            
      
            <label class="badge badge-info">TASA M.V:
                <span class="badge badge-light"><%=request.getParameter("Tasa") + "%" %></span>
            </label></br>            


            </h6>
        </div>
                   
                
                <%}%>
        
            
        </td>
        
</table>       
        
        
            
                <%
                    if (request.getAttribute("plan") != null) {

                %>
                <table class="table container">
            <thead class="thead-dark"></br>
                <tr>
                    <th >Cuota #</th>
                    <th >Abono a intereses</th>
                    <th >Abono a capital</th>
                    <th >Cuota mensual</th>
                    <th >Saldo del Credito</th>
                </tr>
            </thead>
            <%
                    
                        List<PlanPago> plan = (List<PlanPago>) request.getAttribute("plan");
                        for (PlanPago p : plan) {
                %>
            <tbody>
                <tr>
                    <td ><%= p.getNroCuota()%></td>
                    <td class="currency_col"><%= p.getAbonoIntereses()%></td>
                    <td class="currency_col"><%= p.getAbonoCapital()%></td>
                    <td class="currency_col"><%= p.getCuotaMensual()%></td>
                    <td class="currency_col"><%= p.getSaldo()%></td>
                </tr>
            </tbody>
            
                <%
                        }
                    }
                %>

            </table>
               
    </body></html>
