<%@ Page Title="About" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ott_updated.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <head>

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
                border-radius: 10px;
                display: flex;
                flex-direction:column;
                padding:3em;
                padding-top:1em;
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
                height: 39px;
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

            a:hover{
                color: #E52B50;
            }
            .text-login{
                font-weight: bold;
                
                cursor: pointer;
            }

          
        </style>
    </head>
    <body>
        <div class="dialog-box" ID="errordialog" runat="server">
            <?xml version="1.0" ?><!DOCTYPE svg  PUBLIC '-//W3C//DTD SVG 1.0//EN'  'http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd'><svg height="64" class="error-icon" style="overflow:visible;enable-background:new 0 0 32 32" viewBox="0 0 32 32" width="32" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g><g id="Error_1_"><g id="Error"><circle cx="16" cy="16" id="BG" r="16" style="fill:#D72828;"/><path d="M14.5,25h3v-3h-3V25z M14.5,6v13h3V6H14.5z" id="Exclamatory_x5F_Sign" style="fill:#E6E6E6;"/></g></g></g></svg>
            <!-- <span id="error" class="error-text" runat="server">ERROR</span> -->
            <asp:Label ID="Label1" runat="server" class="error-text" Text=""></asp:Label>
        </div>
        <div class="main-form" style="">
            <div>
                <h1 style="left:0;">Subscription</h1>
                <div>
                    <asp:TextBox ID="TextBox1" class="inp validatename" runat="server" placeholder="Name"></asp:TextBox>                    
                </div>
                <div>
                    <asp:TextBox ID="Username" class="inp validatename" runat="server" placeholder="Username"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="TextBox2" class="inp validate" runat="server" placeholder="Email"></asp:TextBox>  
                    <asp:CustomValidator ID="CV" runat="server" EnableClientScript="true" ValidateEmptyText="true" ClientValidationFunction="validateEmail" ControlToValidate="TextBox2" ErrorMessage="Wrong email" style="display:none"></asp:CustomValidator>                    </div>
                </div>
                <div>
                    <asp:TextBox ID="TextBox3" TextMode="Password" class="inp validatepwd" runat="server" placeholder="Password" ></asp:TextBox>
                </div>
                <div>
                    <asp:DropDownList ID="language" class="inp" runat="server">
                        <asp:ListItem class="first_option">Language</asp:ListItem>
                        <asp:ListItem class="list_item">English</asp:ListItem>
                        <asp:ListItem class="list_item">Tamil</asp:ListItem>
                        <asp:ListItem class="list_item">Hindi</asp:ListItem>
                        <asp:ListItem class="list_item">Telugu</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div>
                    <asp:DropDownList ID="DropDownList1" class="inp" runat="server">
                        <asp:ListItem class="first_option">Genre</asp:ListItem>
                        <asp:ListItem class="list_item">Horror</asp:ListItem>
                        <asp:ListItem class="list_item">Action</asp:ListItem>
                        <asp:ListItem class="list_item">Comedy</asp:ListItem>
                        <asp:ListItem class="list_item">Feel Good</asp:ListItem>
                        <asp:ListItem class="list_item">Romance</asp:ListItem>
                        <asp:ListItem class="list_item">Animation</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>
                    <asp:DropDownList ID="Plan" class="inp" runat="server">
                        <asp:ListItem class="first_option">Plan</asp:ListItem>
                        <asp:ListItem class="list_item">Standard</asp:ListItem>
                        <asp:ListItem class="list_item">Premium</asp:ListItem>
                        <asp:ListItem class="list_item">Gold</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div style="text-align:center">
                    <asp:Button ID="Button2" class="button2" runat="server" Text="Subscribe" onclick="Button2_Click" style="display: block;width: 200px;"/>
                </div>
                <div class="text-login" id="login" runat="server" style="margin-top: 20px;font-size: 20px;margin-left: 60px;">
                    <a href="./login.aspx" runat="server" id="loginclick" style="text-decoration: none;">Already Subscriber?</a>
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
                    $(".validate").css("border","1px solid red");
                }
                else {
                    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                    if (!filter.test(args.Value)) {
                        args.IsValid = false;
                        $(".validate").css("border","1px solid red");
                    }
                    else{
                        $(".validate").css("border","none");
                    }
                }
            }
            
        </script>
    </body>
</asp:Content>