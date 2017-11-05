#!/usr/bin/perl

use CGI':standard';

print "Content-type: text/html\n\n";
$name = param ('name');

$food = param ('food');

@rap = param ('rap');

$option = param ('perl');



print "

<html>

<head>
<title>Part 2</title>
<meta http-equiv=\"Content-type\"
  content=\"text/html; charset=utf-8\" />
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />
<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\"/>
<link href=\"https://fonts.googleapis.com/css?family=Roboto+Mono\" rel=\"stylesheet\">
<link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\">
<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>
<script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js\"></script>
<style>
.result-text {
  font-size: 20;
  font-family: 'Roboto Mono';
}
</style>
</head>
<body>
  <div class=\"container-fluid\">
    <div class=\"panel panel-info\">
      <div class=\"panel-heading\">
        Result:
      </div>
      <div class=\"panel-body\">
      <div class=\"panel panel-default\">
        <div class=\"panel-body\">
          <p class=\"result-text\">Your name is <b>$name</b></p>
        </div>
      </div>
      <div class=\"panel panel-default\">
        <div class=\"panel-body\">
          <p class=\"result-text\">Your favorite food is <b>$food</b></p>
        </div>
      </div>
      <p class=\"result-text\">THE TING GOES:</p>";
         foreach $rapvar (@rap)
         {
           print "<b>$rapvar</b>";
         }
         print "
      <div class=\"panel panel-default\">
         <div class=\"panel-body\">
          <br><p class=\"result-text\"> Your rating for perl is <b>$option</b></p>
         </div>
      </div>
      </div>
      </div>
    </div>
  </div>


</body>



</html>

";
