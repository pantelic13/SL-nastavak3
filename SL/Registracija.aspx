<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registracija.aspx.cs" Inherits="Registracija" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8" />
      <link href="Content/bootstrap.css" rel="stylesheet" />
     <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style>

    .pozadina { background-image: url("High-Resolution-Cool-Abstract-Flower-Wallpaper.jpg");
                }
    
    </style>

</head>
<body class="pozadina">
     <div class="menu">
               <ul>

                <li class="navigation_first_item"><a href="index.aspx">Home</a></li>
                   
                   <li><a href="Usluge.aspx">Usluge</a></li>
                   <li><a href="Zakazivanje.aspx">Zakazivanje</a></li>

               </ul>
             </div>
    
    <div class="container shadow  ">
        <div class="row">
            
            <div class="col-6 justify-content-center">
                <h1 class="text-light">REGISTRACIJA</h1>
                <form class="form-group " id="Form" action="upis.aspx" method="post" onsubmit="return proveri()">
                    <label class="text-light">Ime</label>
                    <input class="form-control " type="text" name="ime">
                    <label class="text-light">Prezime</label>
                    <input class="form-control" type="text" name="prezime">
                    
                    <label class="text-light">User name</label>
                    <input class="form-control" type="text" name="username">
                    <label class="text-light">Password</label>
                    <input class="form-control" type="password" name="password">
                    <label class="text-light"> Opet Password</label>
                    <input class="form-control" type="password" name="password2">
                    <label class="text-light">E-mail</label>
                    <input class="form-control" type="email" name="email">
                    <br/>
                    <br/>
                    <button class="btn btn-primary">save</button>
                </form>
            </div>
        </div>
       
    </div>
   
    <script>
        function proveri() {
            var x = document.forms["Form"]["ime"].value;
            if (x == "") {
                alert("Ne moze prazno!");
                return false;
            }
            var p1 = document.forms["Form"]["password"].value;
            var p2 = document.forms["Form"]["password2"].value;
            if (p1 != p2) {
                alert("Sifre nisu iste!!");
                return false;
            }
        }
    </script>
</body>
</html>
