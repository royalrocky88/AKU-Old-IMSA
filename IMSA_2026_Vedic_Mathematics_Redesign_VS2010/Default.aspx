<%@ Page Title="IMSA International Conference 2026" Language="C#" MasterPageFile="~/Site.master"
    AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" ResponseEncoding="utf-8"
    Culture="en-IN" UICulture="en-IN" %>

<asp:Content ID="Head" ContentPlaceHolderID="TitleContent" runat="server">
    IMSA International Conference 2026</asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="MainContent" runat="server">
    <section class="hero">
  <div class="hero-pattern"></div>
  <div class="container hero-grid">
    <div class="hero-copy">
      <div class="eyebrow">INDIAN MATHEMATICS &amp; SCIENCE ASSOCIATION · ICETVMS 2026</div>
      <h1>Emerging Trends in <span>Vedic Mathematics &amp; Science</span> in the Indian Knowledge System</h1>
      <p class="lead"><asp:Literal ID="litIntro" runat="server" /></p>
      <div class="hero-actions">
        <a class="btn btn-saffron" href="Registration.aspx">Register / Submit Abstract</a>
        <a class="btn btn-outline" href="Documents/Brochure-ICEVTM-2026.pdf" target="_blank">View Brochure ↗</a>
      </div>
      <div class="hero-meta">
        <div><b>05–07</b><span>December 2026</span></div>
        <div><b>HYBRID</b><span>Conference Mode</span></div>
        <div><b>PATNA</b><span>AKU, Bihar</span></div>
      </div>
    </div>
    <div class="hero-art">
      <div class="mandala"></div>
      <div class="math-card"><span>॥</span><b>गणित</b><small>MATHEMATICS</small></div>
      <div class="science-orbit orbit-a"></div>
      <div class="science-orbit orbit-b"></div>
      <div class="vedic-symbol">∞</div>
    </div>
  </div>
</section>
    <section class="ticker">
  <div class="container ticker-inner">
    <span class="ticker-label">LATEST UPDATES</span>
    <div class="ticker-track">
      <asp:Repeater ID="rptMarquee" runat="server">
        <ItemTemplate><a href='<%# Eval("PdfPath") %>' target="_blank"><%# Eval("Title") %> ↗</a></ItemTemplate>
      </asp:Repeater>
    </div>
  </div>
</section>
    <section class="section intro-section">
  <div class="container two-col">
    <div>
      <span class="section-kicker">THE CONFERENCE</span>
      <h2>Knowledge heritage, mathematics, science and educational dialogue.</h2>
      <p>The International Conference 2026 provides a distinguished academic platform for meaningful deliberations, knowledge exchange and interaction among scholars, researchers, teachers, scientists and students from India and abroad.</p>
      <div class="fact-grid">
        <div><span>Dates</span><b>5–7 December 2026</b></div>
        <div><span>Mode</span><b>Hybrid</b></div>
        <div><span>Venue</span><b>Aryabhatta Knowledge University, Patna</b></div>
        <div><span>Website</span><b>www.imsaindia.org</b></div>
      </div>
    </div>
    <div class="theme-panel">
      <span class="section-kicker light">SPECIAL EMPHASIS</span>
      <h3>Education Reforms for Viksit Bharat@2047</h3>
      <p>Challenges and an Actionable Roadmap in Bihar</p>
      <a href="Theme.aspx">Explore the theme →</a>
    </div>
  </div>
</section>
    <section class="section paper-section">
  <div class="container">
    <div class="section-head">
      <div><span class="section-kicker">PROGRAMME HIGHLIGHTS</span><h2>Three strands of the conference</h2></div>
      <a href="Programme.aspx" class="text-link">View programme →</a>
    </div>
    <div class="card-grid three">
      <asp:Repeater ID="rptHighlights" runat="server">
        <ItemTemplate>
          <article class="feature-card">
            <span class="num">0<%# Eval("SortOrder") %></span>
            <h3><%# Eval("Heading") %></h3>
            <p><%# Eval("Details") %></p>
          </article>
        </ItemTemplate>
      </asp:Repeater>
    </div>
  </div>
</section>
    <section class="section heritage-section">
  <div class="container">
    <div class="section-head">
      <div><span class="section-kicker">PATNA · KNOWLEDGE HERITAGE</span><h2>A visual language inspired by Indian knowledge and science</h2></div>
      <p class="head-note">Images supplied in the conference brochure are used as the visual source for this redesign.</p>
    </div>
    <div class="heritage-grid">
      <figure class="heritage-main"><img src="Images/Heritage/image9.jpeg" alt="Nalanda heritage site" /><figcaption>Nalanda · knowledge heritage</figcaption></figure>
      <figure><img src="Images/Heritage/image14.jpeg" alt="Science City" /><figcaption>Science City · science learning</figcaption></figure>
      <figure><img src="Images/Heritage/image16.png" alt="Science complex" /><figcaption>Science complex · discovery</figcaption></figure>
      <figure><img src="Images/Heritage/image13.jpeg" alt="Golghar Patna" /><figcaption>Golghar · Patna</figcaption></figure>
      <figure><img src="Images/Heritage/image10.png" alt="Indian heritage site" /><figcaption>Indian heritage · tradition</figcaption></figure>
    </div>
  </div>
</section>
    <section class="section dark-band">
  <div class="container cta-row">
    <div><span class="section-kicker light">PARTICIPATION</span><h2>Mathematicians, scientists, researchers, academicians, faculty members, research scholars and students.</h2></div>
    <a class="btn btn-saffron" href="Registration.aspx">Registration &amp; Fees</a>
  </div>
</section>
</asp:Content>
