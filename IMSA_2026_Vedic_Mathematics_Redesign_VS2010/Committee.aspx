<%@ Page Title="Committees" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Committee.aspx.cs" Inherits="Committee" %>
<asp:Content ID="Body" ContentPlaceHolderID="MainContent" runat="server">
<section class="page-hero"><div class="container"><span class="section-kicker light">COMMITTEES</span><h1>Conference committees &amp; advisory bodies</h1><p>International advisory, national advisory, organizing, award and souvenir/editorial committees.</p></div></section>
<section class="section"><div class="container">
  <asp:Repeater ID="rptCommittees" runat="server" OnItemDataBound="rptCommittees_ItemDataBound">
    <ItemTemplate>
      <div class="committee-block">
        <div class="committee-title"><span><%# Eval("CommitteeName") %></span></div>
        <asp:Repeater ID="rptMembers" runat="server"><ItemTemplate><div class="committee-row"><b><%# Eval("Name") %></b><span><%# Eval("Profile") %></span></div></ItemTemplate></asp:Repeater>
      </div>
    </ItemTemplate>
  </asp:Repeater>
</div></section>
</asp:Content>
