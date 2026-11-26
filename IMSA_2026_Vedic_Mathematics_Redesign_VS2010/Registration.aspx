<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Body" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-hero"><div class="container"><span class="section-kicker light">REGISTRATION</span><h1>Participation fees</h1><p>Registration categories stated in the supplied brochure.</p></div></section>
    <section class="section"><div class="container">
  <div class="fee-grid"><asp:Repeater ID="rptFees" runat="server"><ItemTemplate><div class="fee-card"><span><%# Eval("Category") %></span><strong><%# Eval("Fee") %></strong></div></ItemTemplate></asp:Repeater></div>
  <div class="register-panel"><div><span class="section-kicker light">JOIN THE CONFERENCE</span><h2>Register / Submit Abstract</h2><p>The brochure lists Registration and Register / Submit Abstract among the conference quick links. Connect with the conference office for the current registration process.</p></div><div><a class="btn btn-saffron" href="Contact.aspx">Contact Conference Office</a><a class="btn btn-outline light-btn" href="Documents/Brochure-ICEVTM-2026.pdf" target="_blank">Open Brochure ↗</a></div></div>
</div></section>
</asp:Content>
