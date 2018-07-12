<%@ page import="codeu.model.store.basic.UserStore" %>
<%@ page import="codeu.model.store.basic.ConversationStore" %>
<%@ page import="codeu.model.store.basic.MessageStore" %>
<%@ page import="codeu.model.store.basic.UserStore" %>

<!DOCTYPE html>
<html>
<head>
  <title>Activity Feed</title>
  <link rel="stylesheet" href="/css/main.css">
</head>
<body>
  <%String name = (String) request.getSession().getAttribute("user");
    int numUsers = UserStore.getInstance().getSize();
    int numConvo = ConversationStore.getInstance().getSize();
    int numChats = MessageStore.getInstance().getSize();
    boolean admin = name != null && UserStore.getInstance().isAdminRegistered(name);
    %>
  <nav>
    <a id="navTitle" href="/">CodeU Chat App</a>
    <a href="/conversations">Conversations</a>
    <% if(name != null){%>
      <a>Hello <%= name %>!</a>
      <a href="/mentions">Mentions</a>
    <% } else{ %>
      <a href="/login">Login</a>
    <% } %>
    <a href="/about.jsp">About</a>
    <%if (admin){%>
    <a href="/admin">Admin</a>
      <%}%>
  </nav>
  <div id="container">
    <div style="width:75%; margin-left:auto; margin-right:auto; margin-top: 50px;">
      <h1>Your Acitivty Feed</h1>

      </div>
  </div>
</body>
</html>
