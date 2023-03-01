<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="ott_updated.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <style>
        :root{
            --body-bg:#181616;
            --text-color:#ffffff;
        }
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
      
        body{
            font-family: "Cario",sans-serif;
            background-color: var(--body-bg);
        }
        img{
            max-width: 100%;
        }
       
        .overlay{
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
        }
        .item-content-title{
            font-size: 3rem;
            line-height: 5rem;
            font-weight: 900;
            margin-top: 40%;
        }
        .item-content-wrapper{
            padding-left: 5rem;
            width:40%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            position: relative;
        }
        .hero-slide-item-content{
            position:absolute;
            width:100%;
            height: 100%;
            color:var(--text-color);
        }
        .hero-img{
            margin-bottom: 10%;
            width: 100%;
            height:200px;
            background-size:cover;
            background-position: center;
            object-fit: cover;
        }
        
        .item-content-title{
            position: absolute;
            left:128%;
            transform: translate(-50%,-40%);
        }

        .profile-avatar{
            position: sticky;
            left:50%;
            margin-top:9%;
            bottom: 0;
            transform: translateX(-50%);
            width:124px;
            height:124px;
            border: 5px solid #181616;
        }
        
        /* -------------------- CONTAINER ------------------ */

        .container .bar-wrapper{
            background: #1C1C1C;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            overflow: auto;
            height:100%;
            position: absolute;
            width: 50%;
            top:40%;
        }
        
        .container{
            display: flex;
            justify-content: center;
            align-items: center;
            gap:1em;
            font-size:1.75vh;
            border-collapse: separate;
            gap:1em;
            padding: 0.5em;
        }

        /*----------------------------  MENU CONTAINER -------------------------- */

        .menu-container{
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            gap:1em;
            font-size:1.75vh;
        }

        .menu-container .menu-bar{
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            border-radius: 6px;
            overflow: auto;
            height: 50%;
        }
        
        .menu-container{
            border-collapse: separate;
            gap:1em;
            padding: 0.5em;
        }

        .menu-container .menu-bar{
            position: absolute;
            left:2%;
            top:40%;
            width: 20%;
        }

        /* --------------------------------------------------------------------------- */
        #Button1{
            border:1px solid transparent;
        }

        h1{
            color:white;
            padding-left:20px;
            padding-top:20px;
            font-weight: 900;
            font-size:40px;
        }
        
        .menu-opt a{
            display: block;
            color:white;
            text-decoration: none;
            font-size:20px;
            font-weight: 100;
            padding-top: 5px;
            padding-bottom: 10px;
            padding-left: 10px;
            border-radius: 4px;
        }

        .menu-opt a:hover{
            background: #23252bb3;
        }

        .bar h1{
            position: absolute;
            left:34%;
            font-weight:lighter;
            
        }
        .bar p{
            position: absolute;
            left:25%;
            font-weight: lighter;
            color:white;
            font-size: 20px;
        }
        
        .inp{
            font-weight: 600;
            height:49px;
            width: 250px;
            margin:10px;
            border-radius: 6px;
            border:none;
            outline: none;
            font-size:16px;
            background: #1C1C1C;
            color:white;
            border-bottom: 1px solid white;
        }
        .first_option{
            display: none;
        }

        .preference_title{
            font-size:16px;
            color:white;
            padding-left: 9%;
            padding-top: 5%;
            font-size: 20px;
        }

        .mature-label{
            padding-left:10%;
            color:white;
            font-size:16px;
        }
        .mature-label p{
            font-size:16px;
            color:#a0a0a0;
            padding-top:10px;
            left:21%;
        }

        /* -------------- CHECKBOX --------------- */
        
        .label{
            background-color: #111;
            display: flex;
            align-items: left;
            justify-content: space-between;
            position: absolute;
            border-radius: 50px;
            padding:5px;
            height:26px;
            width: 50px;
        }

        .checkbox{
            opacity: 0;
            position: relative;
        }

        .checkbox:checked +.label .ball{
            transform: translateX(24px);
            background-color: rgb(246,163,9);
        }

        .ball{
            background-color: #fff;
            border-radius: 50px;
            position: absolute;
            height: 22px;
            width: 22px;
            transition: transform 0.2s linear;
            top:2px;
            left:2px;
        }

        /* ------------ ACTIVE CLASS ---------------- */

        #fONwsr.border_active{
            color:#f47521;
        }
        
        .change_password.visible{
            display: block;
        }
        .change_password{
            display: none;
        }

        .change_email.visible{
            display: block;
        }
        .bar.visible{
            display: block;
        }
        .change_email{
            display: none;
        }

        .bar{
            display: none;
        }

        .change_email h1{
            font-size:30px;
            padding-left:30%;
            padding-top:5%;
            
        }

        .change_password{
            padding-left:8%;
            padding-top:10%
        }

        .change_password h1{
            font-size:30px;
            padding-left:20%;
            padding-top:5%
        }

        .change_email{
            padding-left: 8%;
            padding-top: 10%;
        }

        
        .change_email_wrapper p{
            font-size:15px;
            color:#a0a0a0;
            padding-top:10%;
            left:22%;
            padding-bottom: 5px;
        }

        .input_email{
            font-weight: 600;
            height:49px;
            width: 390px;
            border-radius: 0px;
            border:none;
            outline: none;
            background: #1C1C1C;
            border-bottom: 1px solid #a0a0a0;
            color:white
        }

        .submit_email{
            padding-top:10%;
            padding-left:32%;
        }
        
        .submit_email .button2{
            font-size:18px;
            height:49px;
            width:200px;
            border:1px solid transparent;
            background: #1C1C1C;
            color:white;
            cursor: pointer;
            border:3px solid #a0a0a0;
            font-weight: 600;
        }

        .button2:hover{
            background-color: white;
            color:black;
            border:1px solid transparent;
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
            .login_icon{
                position: absolute;
                right:2%;
                top:19%;
                z-index: 1;
            }
            body {
                -ms-overflow-style: none;  /* Internet Explorer 10+ */
                scrollbar-width: none;  /* Firefox */
            }
            body::-webkit-scrollbar { 
                display: none;  /* Safari and Chrome */
            }
    </style>
    <script>
        function hide_msg() {
            var seconds = 3;
            setTimeout(function () {
                document.getElementById("<%=error_dialog.ClientID %>").style.display = "none";
            }, seconds * 1000);
        }

        
    </script>
</head>
<body>
    <div class="dialog-box" ID="error_dialog" runat="server">
        <?xml version="1.0" ?><!DOCTYPE svg  PUBLIC '-//W3C//DTD SVG 1.0//EN'  'http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd'><svg height="64" class="error-icon" style="overflow:visible;enable-background:new 0 0 32 32" viewBox="0 0 32 32" width="32" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g><g id="Error_1_"><g id="Error"><circle cx="16" cy="16" id="BG" r="16" style="fill:#D72828;"/><path d="M14.5,25h3v-3h-3V25z M14.5,6v13h3V6H14.5z" id="Exclamatory_x5F_Sign" style="fill:#E6E6E6;"/></g></g></g></svg>
        <asp:Label ID="Label2" runat="server" class="error-text" Text=""></asp:Label>
    </div>
    <div class="login_icon" onclick="Login_click" style="cursor: pointer;">
        <a href="./login.aspx" runat="server">
            <svg xmlns="http://www.w3.org/2000/svg" width="46" height="46" fill="white" class="bi bi-person-bounding-box" viewBox="0 0 16 16">
                <path d="M1.5 1a.5.5 0 0 0-.5.5v3a.5.5 0 0 1-1 0v-3A1.5 1.5 0 0 1 1.5 0h3a.5.5 0 0 1 0 1h-3zM11 .5a.5.5 0 0 1 .5-.5h3A1.5 1.5 0 0 1 16 1.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 1-.5-.5zM.5 11a.5.5 0 0 1 .5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 1 0 1h-3A1.5 1.5 0 0 1 0 14.5v-3a.5.5 0 0 1 .5-.5zm15 0a.5.5 0 0 1 .5.5v3a1.5 1.5 0 0 1-1.5 1.5h-3a.5.5 0 0 1 0-1h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 1 .5-.5z"/>
                <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm8-9a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
            </svg>
        </a>
    </div>
    
    
    
    <form id="form1" runat="server">
        
        <div class="hero-section">
            <div class="hero-slide">
                <!-- https://static.crunchyroll.com/assets/wallpaper/1920x400/01-crunchyroll-generic-hime.png -->
                <img class="hero-img" src="https://cpwebassets.codepen.io/assets/profile/profile-bg-7e5b92551f68bb55b638847ab4b3ced093fa6d3727e02083fdade22a2d4b07e2.svg" alt="">
                <div class="overlay"></div>
                    <div class="hero-slide-item-content" style="top:2%">
                        <div class="item-content-wrapper">
                            <div class="item-content-title">
                                <!-- <span><asp:Label id="sAguarde" Text="prash_rex" runat="server" /></span> -->
                                <span id="Username"></span>                              
                            </div>
                        </div>
                        <div class="icon">
                            <img class="profile-avatar" id="profile-image" src="https://assets.codepen.io/t-1/user-default-avatar.jpg?fit=crop&amp;format=auto&amp;height=512&amp;version=0&amp;width=512">
                        </div>
                        
                    </div>
                </div>
                
            </div>
        </div>
        <div class="menu-container">
            <div class="menu-bar">
                <div>
                    <div class="head">
                        <h1>General</h1>
                    </div>
                    <div class="menu-opt pref_opt fONwsr" style="padding-top:8%;padding-left: 8%;">
                        <a tabindex="0" data-t="account-nav-membership-status" class="navigation-link" href="#">
                            <span class="pref_opt fONwsr">Preferences</span>
                        </a>
                    </div>
                    <div class="menu-opt email_opt fONwsr" style="padding-top:8%;padding-left: 8%;">
                        <a tabindex="0" data-t="account-nav-membership-status" class="navigation-link" href="#">
                            <span class="email_opt fONwsr">Change Email</span>
                        </a>
                    </div>
                    <div class="menu-opt pass_opt fONwsr" style="padding-top:8%;padding-left: 8%;">
                        <a tabindex="0" data-t="account-nav-membership-status" class="navigation-link" href="#">
                            <span class="pass_opt fONwsr">Change Password</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" style="padding-bottom:50%">
            <div class="bar-wrapper">
                <div class="bar">
                    <div>
                        <h1 style="padding-bottom:10px">Preferences</h1>
                    </div>
                
                    <div style="padding-top:150px;padding-left:9%;">
                        <div style="padding-bottom:15px;">
                            <p style="left:10%;color:#a0a0a0;font-size:15px;">Select display language</p>
                        </div>
                        <asp:DropDownList ID="language" class="inp" runat="server">
                        <asp:ListItem class="first_option">Language</asp:ListItem>
                        <asp:ListItem class="list_item">English</asp:ListItem>
                        <asp:ListItem class="list_item">Tamil</asp:ListItem>
                        <asp:ListItem class="list_item">Hindi</asp:ListItem>
                        <asp:ListItem class="list_item">Telugu</asp:ListItem>
                        
                    </asp:DropDownList>
                    </div>
                    <div style="padding-top:50px;padding-left:9%;">
                        <div style="padding-bottom:15px;">
                            <p style="left:10%;color:#a0a0a0;font-size:15px;">Select Audio language</p>
                        </div>
                        <asp:DropDownList ID="audio_language" class="inp" runat="server">
                        <asp:ListItem class="first_option">Language</asp:ListItem>
                        <asp:ListItem class="list_item">English</asp:ListItem>
                        <asp:ListItem class="list_item">Tamil</asp:ListItem>
                        <asp:ListItem class="list_item">Hindi</asp:ListItem>
                        <asp:ListItem class="list_item">Telugu</asp:ListItem>
                        
                    </asp:DropDownList>
                    </div>
                    <div class="preference_title">
                        <h2>Video</h2>
                    </div>
                    
                    <div class="mature-content" style="padding-left:12%;padding-top:2%">
                        <!-- <asp:CheckBox ID="CheckBox1" class="checkbox" runat="server" /> -->
                        <input type="checkbox" class="checkbox" id="checkbox">
                        <label for="checkbox" class="label">
                            <div class="ball"></div>
                        </label>
                        <div class="mature-label">
                            <h2>Mature Video Content</h2>
                            <p>By enabling this setting, you confirm that</p> <br> <p>you are atleast 18 year old</p>
                        </div>
                    </div>
                </div>
                <div class="change_email">
                    <div>
                        <h1 style="padding-bottom:10px">Change Email</h1>
                    </div>
                    <div class="change_email_wrapper" style="padding-left: 8%;">
                        <div class="current_email">
                            <p>Current Email</p>
                            <h2 style="font-size: 24px;color:white">
                                <!-- <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> -->
                                <span id="Label1"></span>
                            </h2>
                        </div>
                        <div class="new_email" style="padding-top:7%">
                            <div>
                                <asp:TextBox ID="TextBox1" class="input_email validatename" runat="server" placeholder="New Email" style="font-size:20px;"></asp:TextBox>      
                            </div>
                        </div>
                        <div class="password" style="padding-top:7%">
                            <div>
                                <asp:TextBox ID="TextBox2" TextMode="Password" class="input_email validatename" runat="server" placeholder="Current Password" style="font-size:20px;"></asp:TextBox>      
                            </div>
                        </div>
                    </div>
                    <div class="submit_email" style="text-align:center">
                        <asp:Button ID="Button_Email" class="button2" runat="server" Text="CHANGE EMAIL" onclick="Change_Email" style="display: block;width: 200px;"/>
                    </div>
                </div>

                <div class="change_password" >
                    <div>
                        <h1 style="padding-bottom:10px">Change Password</h1>
                    </div>
                    <div class="change_email_wrapper" style="padding-left: 8%;">
                        
                        <div class="new_email" style="padding-top:7%">
                            <div>
                                <asp:TextBox ID="CurrentPassword" class="input_email validatename" runat="server" placeholder="Current Password" style="font-size:20px;"></asp:TextBox>      
                            </div>
                        </div>
                        <div class="password" style="padding-top:7%">
                            <div>
                                <asp:TextBox ID="NewPassword" TextMode="Password" class="input_email validatename" runat="server" placeholder="New Password" style="font-size:20px;"></asp:TextBox>      
                            </div>
                        </div>
                    </div>
                    <div class="submit_email" style="text-align:center">
                        <asp:Button ID="Button_Password" class="button2" runat="server" Text="CHANGE PASSWORD" onclick="Change_Password" style="display: block;width: 200px;"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script type="text/javascript">
        
        
        function getCookie(name) {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for(var i=0;i < ca.length;i++) {
                var c = ca[i];
                while (c.charAt(0)==' ') c = c.substring(1,c.length);
                if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
            }
            if (name == "username") {
                return "login_first";
            }
            else {
                return "please login first";
            }
        }
        const cookie_value = getCookie("email");
        if (cookie_value == ""){
            document.getElementById("Label1").innerHTML = "please login first";
        }
        else{
            document.getElementById("Label1").innerHTML = cookie_value;
        }

        const username = getCookie("username");
        if (username == "") {
            document.getElementById("Username").innerHTML = "";
        }
        else {
            document.getElementById("Username").innerHTML = username;
        }

        $(".login_icon").on("click", function () {
            console.log("login");
        })
        

    </script>
    <script src="./static/js/script.js"></script>
</body>
</html>
