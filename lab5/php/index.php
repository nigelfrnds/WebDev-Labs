<?php
  session_start();
  if(isset($_SESSION['views']))
    $_SESSION['views'] = $_SESSION['views'] + 1;
  else
    $_SESSION['views'] = 1;
?>
<!DOCTYPE html>
<html lang="en">
  <meta http-equiv="Content-type"
    content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" type="text/css" href="../style.css"/>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <title>Lab 5</title>
  <body>
    <div class="container-fluid">
      <div>
        <div class="center">
          <h1>Nigel Fernandes</h1>
          <h2>500679996</h2>
        </div>
        <div>
          <h3>Part 1: PHP</h1>
          <hr>
        </div>
        <div class="panel panel-primary">
          <div class="panel-heading">
            Multiplication Table Generator
          </div>
          <div class="panel-body">
            <form action="index.php" method="post">
              <div>
                Rows:
                <select name="row">
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                </select><br><br>
                Cols:
                <select name="col">
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                </select>
              </div>
              <div style="padding-top:10px;">
                <input type="submit" value="Create Table">
              </div>
              <div>
                <?php
                  $row = $_POST['row'];
                  $col = $_POST['col'];
                  echo "Rows selected: $row<br>";
                  echo "Columns selected: $col<br>";

                  echo "<table border=\"1\" align=\"center\">";
                    genLabel($col);
                    genTable($row,$col);
                  echo "</table>";

                  function genLabel($col) {
                    if(isset($col)){
                    echo "<tr>";
                      for($i =0; $i <=$col; $i++){
                        if($i == 0){
                          echo "<th><h4>X</h4></th>";
                        } else {
                          echo "<th><h4>$i</h4></th>";
                        }
                      }
                      echo "</tr>";
                    }
                  }
                  function genTable($row, $col) {
                    for ($i = 1; $i<= $row; $i++){
                      echo "<tr>";
                      for($j = 0; $j <= $col; $j++){
                        if($j ==0) {
                          echo "<td><h4>$i</h4></td>";
                        } else {
                          $result = $i*$j;
                          echo "<td>$result</td>";
                        }
                      }
                      echo "</tr>";
                    }
                  }
                ?>
              </div>
            </form>
          </div>
          <div class="panel-footer">
            <?php
              $views = $_SESSION['views'];
              echo "
              Page Views = <b>$views</b>
              ";
            ?>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
