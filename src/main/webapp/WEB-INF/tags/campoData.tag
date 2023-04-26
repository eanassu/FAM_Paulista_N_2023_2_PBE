<%@ attribute name="id" required="true" %>
<%@ attribute name="value" required="false" %>
<input type="text" id="${id}" name="${id}" value="${value}"/>
<script>
  $("#${id}").datepicker({dateFormat:"dd/mm/yy"});
</script>