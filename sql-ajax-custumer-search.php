<!doctyp html>
<html>
<head>
    <title>Ajax Sql customer Search</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
    </style>
    </head>
<body>
    <form method="get" action="">
    <input type="text" value="" onkeyup="searchIt(this.value)">
        <input type="submit" value="Submit">
    </form>
    <div id="demo"></div>
    <script>
    function searchIt(word)
        {      // Creating Request
            var http = new XMLHttpRequest;
            // Handling request and it response
            http.onreadystatechange = function ()
            {
                if (http.readyState === 4) // checking XMLHttpRequest status if complete and done 
                    {
                        if (http.status === 200) // it check status of XMLHttpRequest object if it is ok and file found.
                           {    if (word == "")
                                   document.getElementById("demo").innerHTML = "";
                               else if (word != "")
                               document.getElementById("demo").innerHTML = http.responseText;}
                        else
                        { alert("problem occure");}
                    }
            };
            // making actual request and sending to server
            http.open('GET','search.php?q='+word, true);
            http.send();
        }
    </script>
    </body>
</html>