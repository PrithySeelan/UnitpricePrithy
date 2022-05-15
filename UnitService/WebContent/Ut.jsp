<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>unit price</title>
</head>
<body>
<div class="col-8"> 
 <h1 class="m-3">Unit Price Details</h1> 
<form id="formItem" name="formItem" method="post" action="items.jsp">

Unit ID: 
<input id="unitId" name="unitId" type="text" 
 class="form-control form-control-sm">
<br> District name: 
<input id="district" name="district" type="text" 
 class="form-control form-control-sm">
<br> Unit price: 
<input id="unitP" name="unitp" type="text" 
 class="form-control form-control-sm">
<input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
<input type="hidden" id="hidunitIDSave" name="hidunitIDSave" value="">
</form>
</div>

<!--  //Save--------------
if (request.getParameter("unitId") != null) 
{ 
 Ut itemObj = new Ut(); 
 String stsMsg = ""; 
//Insert--------------------------
if (request.getParameter("hidunitIDSave") == "") 
 { 
 stsMsg = itemObj.insertItem(request.getParameter("unitId"), 
 request.getParameter("district"), 
 request.getParameter("unitP")); 
 } 
else//Update----------------------
 { 
 stsMsg = itemObj.updateItem(request.getParameter("hidunitIDSaveIDSave"), 
  request.getParameter("district"), 
 request.getParameter("unitP")); 
 } 
 session.setAttribute("statusMsg", stsMsg); 
} 
//Delete-----------------------------
if (request.getParameter("hidunitIDDelete") != null) 
{ 
 Ut itemObj = new Ut(); 
 String stsMsg = 
 itemObj.deleteItem(request.getParameter("hidunitIDDelete")); 
 session.setAttribute("statusMsg", stsMsg); 
}
-->

</body>
</html>