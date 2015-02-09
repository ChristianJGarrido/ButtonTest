<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%
	String siteId = request.getParameter("siteId");
	String unit = request.getParameter("unit");
	String language = request.getParameter("language");
	if(siteId==null) siteId="";
	request.setAttribute("siteId", siteId);
	request.setAttribute("unit", unit);
	request.setAttribute("language", language);
	
%>
<t:template>
	<jsp:body>
		
		<script type="text/javascript">
			var siteIdClick = function() {
				var sid = $('#Id').val();
				var unit = $('#Unit').val();
				var language = $('#Lang').val();
				var div = $('#Div').val();
				//alert(unit+language+div);
				if (sessionStorage.siteId) {
				    sessionStorage.siteId = sid;
				} else {
				    sessionStorage.siteId = sid;
				}
				
				if (sessionStorage.unit) {
					sessionStorage.unit = unit;
				} else {
					sessionStorage.unit = unit;
				}
				if (sessionStorage.language) {
					sessionStorage.language = language;
				} else {
					sessionStorage.language = language;
				}
				if (sessionStorage.div) {
					sessionStorage.div = div;
				} else {
					sessionStorage.div = div;
				}
				
				location.reload();
			}
			
		</script>
	
	 <form>
	 	<table>
	 	<tbody>
	 	<tr>
	 	<td><b>Site Id: </b></td>
	 	<td><input type="text" value="" id="Id" name="Id"></td>
	 	</tr>
	 	<tr>
	 	<td><br><b>Unit: </b></td>
	 	<td><input type="text" value="" id="Unit" name="Unit"></td>
	 	</tr>
	 	<tr>
	 	<td><br><b>Language: </b></td>
	 	<td><input type="text" value="" id="Lang" name="Lang"></td>
	 	</tr>
	 	<tr>
	 	<td><br><b>Div Id: </b></td>
	 	<td><input type="text" value="" id="Div" name="Div"><td>	 	
  		<tr>
  		<tr>
  		<td>
  		</td>
  		<td>
  		<input type="submit" value="Submit" onclick="siteIdClick()">
  		</td>
  		</tr>
  		</tbody>
  		</table>
	</form>
	<div id = "" class="lpdiv"></div>
    </jsp:body>
</t:template>
