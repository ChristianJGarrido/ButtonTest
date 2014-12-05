<% 
	String siteId = request.getParameter("siteId"); 
	String unit = request.getParameter("unit"); 
	String language = request.getParameter("language"); 
%>
<script type="text/javascript">
sessionStorage.siteId = <%=siteId %>
sessionStorage.unit = <%=unit %>
sessionStorage.language = <%=language %>

</script>