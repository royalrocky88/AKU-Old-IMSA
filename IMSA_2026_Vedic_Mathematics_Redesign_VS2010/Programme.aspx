<%@ Page Title="Programme" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Programme.aspx.cs" Inherits="Programme" %>
<asp:Content ID="Body" ContentPlaceHolderID="MainContent" runat="server">
<section class="page-hero"><div class="container"><span class="section-kicker light">PROGRAMME</span><h1>Conference programme highlights</h1><p>International Conference 2026 · Awards and Felicitation · IMSA Celebration and Membership Registration</p></div></section>
<section class="section"><div class="container"><div class="timeline">
<asp:Repeater ID="rptHighlights" runat="server"><ItemTemplate><article class="timeline-item"><span class="timeline-no">0<%# Eval("SortOrder") %></span><div><h2><%# Eval("Heading") %></h2><p><%# Eval("Details") %></p></div></article></ItemTemplate></asp:Repeater>
</div></div></section>
<section class="section paper-section"><div class="container two-col"><div><span class="section-kicker">PARTICIPANTS</span><h2>Who should participate?</h2><p>ICETVMS 2026 invites Mathematicians, Scientists, Researchers, Academicians, Faculty Members, Research Scholars, and Students to participate in scholarly discussions covering diverse areas of Mathematics, Science, Vedic Mathematics, and related disciplines.</p></div><div class="audience-cloud"><span>Mathematicians</span><span>Scientists</span><span>Researchers</span><span>Academicians</span><span>Faculty</span><span>Research Scholars</span><span>Students</span></div></div></section>
</asp:Content>
