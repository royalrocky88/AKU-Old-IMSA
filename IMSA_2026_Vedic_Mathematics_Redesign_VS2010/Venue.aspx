<%@ Page Title="Venue & Travel" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Venue.aspx.cs" Inherits="Venue" %>
<asp:Content ID="Body" ContentPlaceHolderID="MainContent" runat="server">
<section class="page-hero"><div class="container"><span class="section-kicker light">VENUE</span><h1>Aryabhatta Knowledge University, Patna</h1><p>Patna, Bihar, India · Hybrid conference</p></div></section>
<section class="section"><div class="container venue-grid">
  <div class="venue-photo"><img src="Images/Heritage/image16.png" alt="Science complex visual from brochure" /></div>
  <div><span class="section-kicker">CONFERENCE VENUE</span><h2>Aryabhatta Knowledge University, Patna</h2><p>Bihar, India</p><div class="venue-facts"><div><b>Dates</b><span>5–7 December 2026</span></div><div><b>Mode</b><span>Hybrid</span></div><div><b>Website</b><span>www.imsaindia.org</span></div></div></div>
</div></section>
<section class="section paper-section"><div class="container"><div class="section-head"><div><span class="section-kicker">HOW TO REACH</span><h2>Travel information from the brochure</h2></div></div><div class="travel-grid"><asp:Repeater ID="rptTravel" runat="server"><ItemTemplate><div class="travel-card"><b><%# Eval("Mode") %></b><p><%# Eval("Details") %></p></div></ItemTemplate></asp:Repeater></div></div></section>
<section class="section"><div class="container photo-row"><img src="Images/Heritage/image13.jpeg" alt="Golghar Patna" /><img src="Images/Heritage/image15.png" alt="Patna Zoo" /><img src="Images/Heritage/image14.jpeg" alt="Science City" /></div></section>
</asp:Content>
