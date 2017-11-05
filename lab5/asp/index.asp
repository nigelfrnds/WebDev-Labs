<%
  'Check if Cookies exist
  If (Request.Cookies("NumVisits")="") Then
    Response.Cookies("NumVisits") = 1
    Response.Cookies("NumVisits").Expires=Date()+365
    Response.Cookies("VisitDate") = Date()
    Response.Cookies("VisitDate").Expires=Date()+365
    Response.Cookies("VisitTime") = Time()
    Response.Cookies("VisitTime").Expires=Date()+365
  Else
    'Update Cookies
    count = Request.Cookies("NumVisits")
    Response.Cookies("NumVisits") = count + 1
    Response.Cookies("VisitDate") = Date()
    Response.Cookies("VisitTime") = Time()
  End If
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-type"
      content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title>Lab 5</title>
  </head>
  <body>
    <%
      color = Request.Form("color")
      response.write("<body style='background-color:" & color & "'>")
    %>
    <div class="container-fluid">
      <div style="text-align:center;">
        <h1>Nigel Fernandes</h1>
        <h2>500679996</h2>
        <hr>
      </div>
      <div>
        <h3>Part 2: ASP</h3>
      </div>
      <div>
        <form action="http://webdev.scs.ryerson.ca:8080/njfernan/index.asp" method="post">
          <h4>Input any color or hexcode to change the background color:</h4>
          <input type="text" name="color">
          <input type="submit" value="Change Color">
        </form>
      </div>
      <hr>
      <div class="well well-sm">
        <%
          numVisits = Request.Cookies("NumVisits")
          visitDate = Request.Cookies("VisitDate")
          visitTime = Request.Cookies("VisitTime")

          If numVisits = "1" Then
            Response.Write("Hey, You're New Here!<br>")
            Response.Write("Last Access on <b>" & visitDate & "</b> at <b>" & visitTime & "</b>")
          Else
            Response.Cookies("NumVisits") = numVisits +1
            Response.Write("Come Here Often?<br>")
            Response.Write("Last Access on <b>" & visitDate & "</b> at <b>" & visitTime & "</b>")
          End If
        %>
      </div>
    </div>
  </body>
</html>
