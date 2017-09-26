<?php

$word = $_REQUEST['q']; // getiing parameter from Ajax function
$conn = mysqli_connect('localhost','root','','logindata'); // connecting to server and  database
$sql = "SELECT * FROM customer WHERE FirstName LIKE '$word%'"; // sql query to search word in database
$result = mysqli_query($conn, $sql); // Performing mysqli queries
 
if (mysqli_num_rows($result) > 0) // if rows found
{  
    echo "<table>";
    echo "<tr><th>ID</th><th>FirstName</th><th>Last Name</th><th>Email</th></tr>";
    while ($row = mysqli_fetch_array($result)) // fetching rows data
    {
        echo "<tr>";
        echo "<td>" . $row['Id']. "</td>";
        echo "<td>" . $row['FirstName']. "</td>";
        echo "<td>" . $row['LastName'] . "</td>" ;
        echo "<td>" . $row['Email'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
}
else
{
    echo "no record found";
}

?>
<style>
    * {margin: 0;padding: 0;box-sizing: border-box;}
    table {
        width: 1300px;  border-collapse: collapse;
        overflow-x: scroll;
    }
     tr:nth-child(even) {background-color: lightgrey;}
    th,td {
        border-bottom: 1px solid lightgrey;
    }
    th {
        height: 50px;
        text-align: center;
    }
    td {
         padding: 10px;
        vertical-align: middle;
        text-align: center;
    }
  
   
    i1760-12006 
    21604-3626994-3
</style>