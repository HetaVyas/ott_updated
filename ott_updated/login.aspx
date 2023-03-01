<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ott_updated.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
        body{
                background-image: url("./images/background/bg.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                height:100%;
            }
            .main-form{
                background: rgba(0,0,0,.75);
                box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.27 );
                backdrop-filter: blur( 2px );
                /* -webkit-backdrop-filter: blur( 8px ); */
                border-radius: 30px;
                display: flex;
                flex-direction:column;
                padding-top: 4em;
                padding-left: 3em;
                padding-right: 3em;
                padding-bottom: 4em;
                justify-content:center;
                position: absolute; /* or absolute */
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                margin-top:2%;

            }

            .button2{
                text-align:center;
                padding:14px 20px 14px 20px;
                border-radius: 6px;
                border: none;
                margin-top:10px;
                outline: none;
                font-size: 20px;
                -webkit-backdrop-filter: blur( 4px );
                font-family: 'Open Sans', sans-serif;
                font-weight:bold;
                background:#e50914;
                margin-left:18%;
            }

            .inp::placeholder{
                background: #8c8c8c;
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                font-weight:bold;
            }
            .inp{
                transition: all 100ms;
                font-family: 'Open Sans', sans-serif;
                font-weight:600;
                height: 49px;
                width:280px;
                margin:10px;
                border-radius: 6px;
                border: none;
                outline: none;
                font-size: 16px;
                background: rgba( 255, 255, 255, 0.25 );
                box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
                backdrop-filter: blur( 4px );
                -webkit-backdrop-filter: blur( 4px );
                padding-left: 20px;
            }
            .inp:focus
            {
                background: rgba( 255, 255, 255, 0.05 );
                box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
                backdrop-filter: blur( 1.0px );
                -webkit-backdrop-filter: blur( 1.0px );
            }
            .list_item{
                background-color:#8c8c8c;
                color:white;
            }

            .first_option{
                display:none;
            }
            
            .dialog-box{
                position: absolute;
                color:white;
                width: 350px;
                height:60px;
                top:12%;
                right:1%;
                border:1px solid transparent;
                border-radius: 10px;
                background-color: #E5E6E9;
                box-shadow: 10px 10px 115px 0px rgba(213, 14, 14, 0.75);
                
                
            }
            .dialog-box .error-text{
                color:black;
                position: absolute;
                top:54%;
                left:50%;
                transform: translate(-50%,-50%);
                color: #E52B50;
                font-weight: bold;
                font-size: 18px;
            }
            .error-icon{
                margin-left: 20px;
                padding-bottom: 1%;
            }

            h1{
                color:white;
            }
            .inp{
                color: white;
            }

            .bg-dark{
                background-color:#17191b!important;
            }

            .logout{
                margin-top: 6px;
                right:2%;
                position: absolute;
                cursor: pointer;
                width: 50px;
                padding-left: 10px;
                padding-top: 8px;
                padding-bottom: 4px;
                border-radius: 6px;
                background-color: black;
                color: white;
                margin-bottom: 6px;
            }

            .logout:hover{
                background-color: #e50914;
                
            }

    </style>
</head>
<body>
    <div class="dialog-box" ID="errordialog" runat="server">
        <?xml version="1.0" ?><!DOCTYPE svg  PUBLIC '-//W3C//DTD SVG 1.0//EN'  'http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd'><svg height="64" class="error-icon" style="overflow:visible;enable-background:new 0 0 32 32" viewBox="0 0 32 32" width="32" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g><g id="Error_1_"><g id="Error"><circle cx="16" cy="16" id="BG" r="16" style="fill:#D72828;"/><path d="M14.5,25h3v-3h-3V25z M14.5,6v13h3V6H14.5z" id="Exclamatory_x5F_Sign" style="fill:#E6E6E6;"/></g></g></g></svg>
        <!-- <span id="error" class="error-text" runat="server">ERROR</span> -->
        <asp:Label ID="Label1" runat="server" class="error-text" Text=""></asp:Label>
    </div>
    <form id="form1" runat="server">
        <nav class="navbar navbar-dark bg-dark" style="height: 60px;background-color: black;">
            <div class="logout" runat="server" ID="logout" onclick="Logout_click">
                <a href="Default.aspx">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="white" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                    
                        <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
                        <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                    </svg>
                </a>
            </div>    
        </nav>
        <div class="main-form">
            <div>
                <h1 style="left:0;">Login</h1>    
                <div>
                    <asp:TextBox ID="TextBox2" class="inp validate" runat="server" placeholder="Email"></asp:TextBox>  
                    <asp:CustomValidator ID="CV" runat="server" EnableClientScript="true" ValidateEmptyText="true" ClientValidationFunction="validateEmail" ControlToValidate="TextBox2" ErrorMessage="Wrong email" style="display:none"></asp:CustomValidator>                    </div>

                </div>
                <div>
                    <asp:TextBox ID="TextBox3" TextMode="Password" class="inp" runat="server" placeholder="Password" ></asp:TextBox>
                </div>


                <div style="text-align:center">
               
                    <asp:Button ID="Button2" class="button2" runat="server" Text="Login" onclick="Button2_Click" style="display: block;width: 200px;color:white;cursor: pointer;"/>
                </div>                
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <script type="text/javascript">
            function hide_errormsg(){
                var seconds = 3;
                setTimeout(function(){
                    document.getElementById("<%=errordialog.ClientID %>").style.display = "none";
                },seconds * 1000);
            }

            function validateEmail(sender, args) {
                if (args.Value == "") {
                    args.IsValid = false;
                    $(".validate").css("border","3px solid red");
                }
                else {
                    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                    if (!filter.test(args.Value)) {
                        args.IsValid = false;
                        $(".validate").css("border","3px solid red");
                    }

                    else{
                        $(".validate").css("border","none");
                    }
                }
            }

            function setCookie(name,value,days) {
                var expires = "";
                if (days) {
                    var date = new Date();
                    date.setTime(date.getTime() + (days*24*60*60*1000));
                    expires = "; expires=" + date.toUTCString();
                }
                document.cookie = name + "=" + (value || "")  + expires + "; path=/";
            }
            $(".logout").on("click",function(){
                setCookie("email", "", -1);
                setCookie("username", "", -1);
            })
        </script>
    </form>
    
</body>
</html>
