<%@ Page Title="Speakers" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Speakers.aspx.cs" Inherits="Speakers" %>
<asp:Content ID="Body" ContentPlaceHolderID="MainContent" runat="server">
<section class="page-hero"><div class="container"><span class="section-kicker light">SPEAKERS &amp; LEADERSHIP</span><h1>Patrons, leadership and eminent speakers</h1><p>Profiles and roles reproduced from the supplied conference brochure.</p></div></section>
<section class="section"><div class="container">
  <div class="section-head"><div><span class="section-kicker">LEADERSHIP</span><h2>Conference leadership</h2></div></div>
  <div class="card-grid three"><asp:Repeater ID="rptLeaders" runat="server"><ItemTemplate><article class="person-card"><span class="person-type"><%# Eval("SpeakerType") %></span><h3><%# Eval("Name") %></h3><p><%# Eval("Profile") %></p></article></ItemTemplate></asp:Repeater></div>
</div></section>
<section class="section paper-section"><div class="container">
  <div class="section-head"><div><span class="section-kicker">EMINENT SPEAKERS</span><h2>Academic voices in mathematics &amp; science</h2></div></div>
  <div class="speaker-list"><asp:Repeater ID="rptEminent" runat="server"><ItemTemplate><div class="speaker-row"><b><%# Eval("Name") %></b><span><%# Eval("Profile") %></span></div></ItemTemplate></asp:Repeater></div>
</div></section>
</asp:Content>
