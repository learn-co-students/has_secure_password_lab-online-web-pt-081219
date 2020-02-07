<%= form_tag ({controller: 'sessions', action: 'create', method: 'post'}) do %>
  <label>Username:</label>
  <input name=name><br>
  <label>Password:</label>
  <input name=passsword><br>
  <input type=submit value='login'>
<% end %>