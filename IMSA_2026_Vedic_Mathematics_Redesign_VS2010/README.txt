IMSA 2026 - Vedic Mathematics & Science Redesign
=================================================

Technology
- Visual Studio 2010
- ASP.NET Web Forms
- C#
- SQL Server database: SSDM
- .NET Framework 4.0

Design direction
- Indian knowledge / Vedic Mathematics inspired visual language
- Saffron, maroon, antique-gold, cream and deep-brown palette
- Responsive layouts for mobile, tablet, laptop and desktop
- Brochure-supplied photographs and logos are used in the redesign
- Database-driven conference, notification, programme, fees, speakers, committees and travel content

Pages
- Default.aspx       Home
- About.aspx         IMSA / AKU information
- Theme.aspx         Conference theme
- Speakers.aspx      Leadership and eminent speakers
- Committee.aspx     Advisory and organizing committees
- Programme.aspx     Programme highlights
- Registration.aspx  Participation fees
- Venue.aspx         Venue and travel
- Contact.aspx       Contact information

Setup
1. Open Visual Studio 2010.
2. Open IMSA.csproj as an ASP.NET Web Application.
3. Open App_Data/SSDM.sql in SQL Server Management Studio and execute it.
4. If the SSDM database already exists and you want to keep it, remove/skip the CREATE DATABASE section and run the table/seed section as appropriate.
5. Check Web.config connection string:
   Data Source=.;Initial Catalog=SSDM;Integrated Security=True
6. Build and run.

Important
- The website content is based on the supplied Brochure_ICEVTM_2026_2.docx.
- The source brochure contains some OCR/spelling variants in later committee pages; those source forms have been retained where practical rather than silently changing the source.
- The generated PDF in Documents is a web-ready brochure reconstruction using source-derived content and supplied brochure images. Replace it with the formally approved final PDF if one is issued.
