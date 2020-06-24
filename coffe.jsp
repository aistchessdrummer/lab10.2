<%@ page import ="java.util.*"%>
<%! HashMap adr = new HashMap(); %>
<%
Thread.sleep(1000);
if (adr.size() == 0) {
adr.put("8-961-218-65-85","Smirnova,7");
adr.put("8-999-518-54-34","Esenina,15");
adr.put("8-913-718-34-87","Esenina,3");
}
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String order = request.getParameter("order");
if (phone != null && address == null){
if (adr.containsKey(phone)){
out.println(adr.get(phone));
} else {
out.println("New phone");
}
};
if (phone != null && address != null){
adr.put(phone,address);
out.println("Your order:<br>");
out.println (phone + "<br>");
out.println(address + "<br>");
out.println (order + "<br>");
}
%>