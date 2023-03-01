<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="rating.aspx.cs" Inherits="ott_updated.rating" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
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

        a:hover{
            color: #E52B50;
        }
        .text-login{
            font-weight: bold;
            
            cursor: pointer;
        }

        fieldset, label { margin: 0; padding: 0; }

        /****** Style Star Rating Widget *****/

        .rating { 
        border: none;
        float: left;
        }

        .rating > input { display: none; } 
        .rating > label:before { 
        margin: 5px;
        font-size: 1.25em;
        font-family: FontAwesome;
        display: inline-block;
        content: "\f005";
        }

        .rating > .half:before { 
        content: "\f089";
        position: absolute;
        }

        .rating > label { 
        color: #ddd; 
        float: right; 
        }

        /***** CSS Magic to Highlight Stars on Hover *****/

        .rating > input:checked ~ label, /* show gold star when clicked */
        .rating:not(:checked) > label:hover, /* hover current star */
        .rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

        .rating > input:checked + label:hover, /* hover current star when changing rating */
        .rating > input:checked ~ label:hover,
        .rating > label:hover ~ input:checked ~ label, /* lighten current selection */
        .rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 
    </style>
    <head>
        <body>
            <div class="main-form">
                <div>
                    <h1 style="left:0;">Rating</h1>
                    <div style="font-size:30px">
                        <asp:TextBox ID="TextBox1" style="font-size:20px" class="inp validatename" runat="server" placeholder="Movie Name"></asp:TextBox>                    
                    </div>
                    
                    <div>
                        <fieldset class="rating" style="font-size:30px;padding-left:40px">
                            <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
                            <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                            <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                            <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                            <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
                            <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                            <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                            <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                            <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
                            <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                        </fieldset>
                    </div>
    
                    
                    <div style="text-align:center">
                        <asp:Button ID="Button2" class="button2" runat="server" Text="Rate" onclick="Rate" style="display: block;width: 200px;"/>
                    </div>
                    <div class="text-login" id="login" runat="server" style="margin-top: 20px;font-size: 20px;margin-left: 60px;">
                        <a href="./Default.aspx" runat="server" id="loginclick" style="padding-left:20px;text-decoration: none;">Already Rated?</a>
                    </div>  
                                  
                </div>
            </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
            <script type="text/javascript">
            </script>
        </body>
    </head>
</asp:Content>
