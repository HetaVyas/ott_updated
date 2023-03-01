<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ott_updated.Contact" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel ="stylesheet" href="ServicesCSS.css" />

    <h1 class="tagline">Your ultimate destination for endless entertainent.</h1>
    <h2 class="tagline">Select from a wide range of Movies and TV Shows: </h2>

    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Need Help? Check out the FAQs.</asp:LinkButton><br/><br/>

    <asp:TextBox ID="searchBox" runat="server"></asp:TextBox>
    <asp:Button ID="searchBtn" runat="server" Text="Search" OnClick="searchBtn_Click" /><br/><br/>


    <div class="movie-container">
        <asp:Repeater ID="MovieRepeater" runat="server">
        <ItemTemplate>
            <div class="movie-card">
                <img src='<%# Eval("thumbnailPath") %>' class="movie-thumbnail" />
                <div class="movie-header"><%# Eval("title") %></div>
                <div class="movie-body">
                    <strong>Cast:</strong> <%# Eval("cast") %><br />
                    <strong>Director:</strong> <%# Eval("director") %><br />
                    <strong>Release Date:</strong> <%# Eval("releaseDate", "{0:MMMM d, yyyy}") %><br />
                    <strong>Language:</strong> <%# Eval("language") %><br />
                    <strong>Genre:</strong> <%# Eval("genre") %><br />
                    <strong>Description:</strong> <%# Eval("description") %><br />
                    <strong>Rating:</strong> <%# Eval("rating") %> / 10
                </div>
            </div>
        </ItemTemplate>
        </asp:Repeater>
    </div>
    
</asp:Content>