<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Faqs.aspx.cs" Inherits="ott_updated.Faqs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <link rel ="stylesheet" href="ServicesCSS.css" />
     

    <h2 class="tagline">Frequently Asked Questions: </h2>

   
    <div class="tagline">
    <h3>How much does the Subscription cost?</h3>
    <p>The subscription cost varies based on the plan you choose. We offer monthly and annual plans and each plan includes different features. You can view the pricing details on the 'Packages' page of the website.</p>
    
    <h3>Can I watch Movies and TV Shows on multiple devices?</h3>
    <p>Yes, you can watch movies and TV shows on multiple devices. However, please note that you can only stream on one device at a time with a single account.</p>

    <h3>Can I cancel my subscription anytime?</h3>
    <p>Yes, you can cancel your subscription anytime. To cancel your subscription, go to your account settings and click on the "Cancel Subscription" button. Please note that if you cancel your subscription, you will lose access to all the premium features and content</p>

    <h3>What type of payment methods are accepted?</h3>
    <p>We accept various payment methods, including credit cards, and PayPal. You can choose the payment method that works best for you during the checkout process.</p>

    <h3>Are there any age restrictions for the content on the platform?</h3>
    <p>Yes, some of the content on the platform may be restructed based on age. We follow all the necessary regulations and guidelines for age restrictions, and some content may only be available to users who are 18 years or older.</p>

    </div>
    
    <h4 class =" tagline">Still got more Questions? Write to us!</h4><br/>

    <asp:Label ID="Label1" runat="server" Text="Email ID: " CssClass="tagline"></asp:Label><br/>
    <asp:TextBox ID="emailBox" runat="server"></asp:TextBox><br/><br/>
    
    <asp:Label ID="Label3" runat="server" Text="Question: " CssClass="tagline"></asp:Label><br/>
    <asp:TextBox ID="questionBox" runat="server"></asp:TextBox><br/><br/>

    <asp:Label ID="Label2" runat="server" Text="Details " CssClass="tagline"></asp:Label><br/>
    <textarea id="detailsBox" cols="20" rows="2" runat="server"></textarea><br/>

    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click"/><br/><br/>
    
    <asp:Button ID="displayQueries" runat="server" Text="View Submitted Queries" OnClick="displayQueries_Click"/><br/><br/>

    
    <asp:Label ID="Label4" runat="server" Text="Wish to delete your query? Enter your Query ID: " CssClass="tagline"></asp:Label><br/>
    <asp:TextBox ID="deleteId" runat="server"></asp:TextBox>
    <asp:Button ID="deleteQuery" runat="server" Text="Delete my Query." OnClick="deleteQuery_Click"/><br/><br/>

    <asp:GridView ID="GridView1" runat="server" Visible="false" ForeColor="#CCCCCC" EnableSortingAndPagingCallbacks="True" Caption="Queries Submitted:"></asp:GridView><br/><br/><br/><br/>

</asp:Content>
