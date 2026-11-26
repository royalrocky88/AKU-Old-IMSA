IF DB_ID('SSDM') IS NULL
BEGIN
    CREATE DATABASE SSDM;
END
GO
USE SSDM;
GO

IF OBJECT_ID('dbo.Conference','U') IS NOT NULL DROP TABLE dbo.Conference;
IF OBJECT_ID('dbo.Notifications','U') IS NOT NULL DROP TABLE dbo.Notifications;
IF OBJECT_ID('dbo.ProgrammeHighlights','U') IS NOT NULL DROP TABLE dbo.ProgrammeHighlights;
IF OBJECT_ID('dbo.ParticipationFees','U') IS NOT NULL DROP TABLE dbo.ParticipationFees;
IF OBJECT_ID('dbo.Speakers','U') IS NOT NULL DROP TABLE dbo.Speakers;
IF OBJECT_ID('dbo.CommitteeMembers','U') IS NOT NULL DROP TABLE dbo.CommitteeMembers;
IF OBJECT_ID('dbo.TravelInfo','U') IS NOT NULL DROP TABLE dbo.TravelInfo;
IF OBJECT_ID('dbo.Organizations','U') IS NOT NULL DROP TABLE dbo.Organizations;
GO

CREATE TABLE Conference(
    ConferenceId INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(250) NOT NULL,
    ShortDescription NVARCHAR(MAX) NOT NULL,
    ConferenceDates NVARCHAR(100) NOT NULL,
    Mode NVARCHAR(50) NOT NULL,
    Venue NVARCHAR(300) NOT NULL,
    Theme NVARCHAR(1000) NOT NULL,
    SpecialEmphasis NVARCHAR(1000) NOT NULL,
    Email NVARCHAR(200) NULL,
    Mobile NVARCHAR(50) NULL,
    Website NVARCHAR(250) NULL,
    IsActive BIT NOT NULL DEFAULT 1
);
CREATE TABLE Notifications(
    NotificationId INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(300) NOT NULL,
    PdfPath NVARCHAR(500) NOT NULL,
    PublishDate DATETIME NOT NULL DEFAULT GETDATE(),
    IsActive BIT NOT NULL DEFAULT 1
);
CREATE TABLE ProgrammeHighlights(
    HighlightId INT IDENTITY(1,1) PRIMARY KEY,
    Heading NVARCHAR(250) NOT NULL,
    Details NVARCHAR(MAX) NOT NULL,
    SortOrder INT NOT NULL
);
CREATE TABLE ParticipationFees(
    FeeId INT IDENTITY(1,1) PRIMARY KEY,
    Category NVARCHAR(250) NOT NULL,
    Fee NVARCHAR(250) NOT NULL,
    SortOrder INT NOT NULL
);
CREATE TABLE Speakers(
    SpeakerId INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(250) NOT NULL,
    Profile NVARCHAR(1000) NOT NULL,
    SpeakerType NVARCHAR(100) NOT NULL,
    SortOrder INT NOT NULL
);
CREATE TABLE CommitteeMembers(
    MemberId INT IDENTITY(1,1) PRIMARY KEY,
    CommitteeName NVARCHAR(150) NOT NULL,
    Name NVARCHAR(250) NOT NULL,
    Profile NVARCHAR(1000) NOT NULL,
    SortOrder INT NOT NULL
);
CREATE TABLE TravelInfo(
    TravelId INT IDENTITY(1,1) PRIMARY KEY,
    Mode NVARCHAR(100) NOT NULL,
    Details NVARCHAR(1500) NOT NULL,
    SortOrder INT NOT NULL
);
CREATE TABLE Organizations(
    OrganizationId INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(300) NOT NULL,
    RoleText NVARCHAR(300) NOT NULL,
    LogoPath NVARCHAR(500) NULL,
    SortOrder INT NOT NULL
);
GO

INSERT INTO Conference
(Title,ShortDescription,ConferenceDates,Mode,Venue,Theme,SpecialEmphasis,Email,Mobile,Website,IsActive)
VALUES
('International Conference 2026',
'The Indian Mathematics and Science Association (IMSA) cordially invites academicians, researchers, faculty members, research scholars, students, scientists, and distinguished experts to participate in the International Conference 2026, to be held at Aryabhatta Knowledge University, Patna from 5-7 December 2026. The conference aims to provide a distinguished academic platform for meaningful deliberations, knowledge exchange, and interaction among scholars, researchers, teachers, scientists, and students from all over India and abroad.',
'5–7 December 2026','Hybrid','Aryabhatta Knowledge University, Patna, Bihar, India',
'Emerging Trends in Vedic Mathematics and Science in the Indian Knowledge System',
'Education Reforms for Viksit Bharat@2047: Challenges and an Actionable Roadmap in Bihar',
'imsaofficials@gmail.com','9835057735','www.imsaindia.org',1);
GO

INSERT INTO Notifications(Title,PdfPath,PublishDate,IsActive) VALUES
('International Conference 2026 – Brochure','Documents/Brochure-ICEVTM-2026.pdf',GETDATE(),1),
('ICETVMS 2026 – Conference Theme & Invitation','Documents/Brochure-ICEVTM-2026.pdf',DATEADD(MINUTE,-1,GETDATE()),1),
('Registration Fees & Venue Information','Documents/Brochure-ICEVTM-2026.pdf',DATEADD(MINUTE,-2,GETDATE()),1);
GO

INSERT INTO ProgrammeHighlights(Heading,Details,SortOrder) VALUES
('International Conference 2026','A distinguished academic forum bringing together eminent scholars, researchers, academicians, teachers, scientists, and students to deliberate upon emerging trends in Vedic Mathematics, Science, and the Indian Knowledge System, with special emphasis on contemporary educational challenges, innovations, reforms, and possible solutions.',1),
('Awards and Felicitation','Presentation of Awards and Honours to distinguished personalities in recognition of their notable contributions to Mathematics, Science, Education, Research, and allied fields.',2),
('IMSA Celebration and Membership Registration','Participants will have an opportunity to join the Indian Mathematics and Science Association (IMSA) through Life Membership, subject to the applicable membership provisions.',3);
GO

INSERT INTO ParticipationFees(Category,Fee,SortOrder) VALUES
('Faculty Members / Scientists','₹3,500/-',1),
('Research Scholars / Students','₹2,500/-',2),
('Company / Industry Delegates','₹10,000/-',3),
('IMSA Life Members','₹1,000/- less than the applicable normal registration fee',4);
GO

INSERT INTO Speakers(Name,Profile,SpeakerType,SortOrder) VALUES
('Prof. Sarad Kumar Yadav','Vice-Chancellor, Aryabhatta Knowledge University, Patna','President',1),
('Prof. Arun Kumar Singh','President, Shiksha Sanskriti Utthan Nyas','Vice President',2),
('Lt. Gen. Sayed Ata Hasnain','Governor cum Chancellor of the Universities of Bihar','Patron',3),
('Prof. K.C. Sinha','Former, VC, Nalanda Open University, Nalanda; President IMSA','Patron',4),
('Dr. P.K. Jain','Patron, Shiksha Sanskriti Utthan Nyas, Bihar','Co-Patron',5),
('Prof. Ranjeet Kr. Verma','Former, VC, Munger University, Munger; Executive Member, IMSA','Co-Patron',6),
('Sri Atul Bhai Kothari','National Secretary, Shiksha Sanskriti Uthan Nayas, New Delhi','Co-Patron / Keynote',7),
('Dr. Dashrath Singh','Emeritus Professor A.B.U. Naigeria','Eminent Speaker',8),
('Prof. Jagdish Sing','Former Prof., Barry University, Nigeria.','Eminent Speaker',9),
('Padmashree Prof. H.C Verma','Former Prof. IIT Kanpur','Eminent Speaker',10),
('Padmashree Prof. R Balasubramaniam','Former Director IMSC Chenai.','Eminent Speaker',11),
('Prof. Dipendra Prasad','Chairman NBHM & fellow IIT Bombay.','Eminent Speaker',12),
('Prof. S.S Khare','Former President, IMS & Former Pro. V.C NEHU, Assam.','Eminent Speaker',13),
('Dr. Rakesh Bhatia','National Convener, Vedic Mathematics, Shiksha Sanskriti Utthan Nyas','Eminent Speaker',14),
('Sri Ramchothaiwale','Rtd. Prof. Amaravati University, Pune','Eminent Speaker',15),
('Sri Devendra Rao Deshmukh','Vedic Math All India Convenor Vidya Bharti','Eminent Speaker',16),
('Prof. M. M Shikare','General Secretary, Indian Mathematical Society','Eminent Speaker',17),
('Prof. Kumar Pranav Narayan','BITS Pilani Hyderabad','Eminent Speaker',18),
('Dr. Kailash Vishkarma','Patron, Vedic Maths, Cell Sanskriti Shiksha Uthan Nayas, Hamirpur, U.P.','Eminent Speaker',19);
GO

INSERT INTO CommitteeMembers(CommitteeName,Name,Profile,SortOrder) VALUES
('Conference Core','Dr. Rupesh Kumar','Convener; Department of Management, AKU Patna',1),
('Conference Core','Prof. Vijay Kumar','Organising Secretary; Secretary, IMSA & Dept. of Mathematics, COCAS, Patna',2),
('Conference Core','Prof. Om Prakash','Academic President; Dept. of Mathematics, IIT Patna',3),
('Conference Core','From AKU','Academic Secretary',4),
('Conference Core','From Vidya Bharti','Joint Conveners',5),
('Conference Core','Dr. Sandip Sagar','Convenor, Shiksha Sanskriti Utthan Nyas, Bihar',6),
('Conference Core','Sri Pradeep Kumar Kushwaha','Secretary, Bharati Shiksha Samiti, Bihar',7),
('Conference Core','Dr. M.K Madhukar','Academic Joint Secretary; HOD Mathematics, College of Commerce, Arts and Science, Patna.',8),
('Conference Core','Prof. Niranjan Kr, Yadav','Treasurer; AKU, Patna.',9),
('International Advisory Committee','Prof. Dashrath Singh','Former Prof., IIT Bombay and Emeritus Professor A.B.U., Nigeria',1),
('International Advisory Committee','Prof. J. N. Singh','Dept of Mathematics and Computer Science, Barry University USA',2),
('International Advisory Committee','Prof. Jagdish Singh','Emeritus Prof. of Mathematics Barry University Nigeria.',3),
('National Advisory Committee','Prof. Tapan Kumar Shandilya','Principal, TPS College, Patna cum Former Vice-Chancellor, Shyama Prasad Mukherjee University, Ranchi',1),
('National Advisory Committee','Prof. N. K. Agarwal','Director, Higher Education, Govt. of Bihar',2),
('National Advisory Committee','Dr. S.B. Roy','HOD Mathematics, P. G. Dept. of Mathematics, P.U., Patna',3),
('National Advisory Committee','Sri Bharat Purbey','Mantri, Bharti Shiksha Samiti, Bihar',4),
('National Advisory Committee','Sri Ajay Yadav','Senate Member, Patliputra University, Patna',5),
('National Advisory Committee','Prof. Sanjay Kumar','Convenor, Shiksha Sanskriti Utthan Nyas, PPU',6),
('National Advisory Committee','Dr. Harish Das','Convenor, Shiksha Sanskriti Utthan Nyas, PU',7),
('National Advisory Committee','Dr. Murari Sharan Manglik','Member, State Committee, Bharti Shiksha Samiti, Bihar',8),
('National Advisory Committee','Dr. Amar Kumar','HOD Mathematics, Munger University, Munger',9),
('National Advisory Committee','Dr. Ashwini Kr. Mishra','HOD Mathematics, Purnea University, Purnea',10),
('National Advisory Committee','Dr. Ayaz Ahmad','HOD Mathematics, LNMU, Darbhanga',11),
('National Advisory Committee','Dr. Vijay Kumar Singh','HOD, Mathematics, VKSU, Ara',12),
('National Advisory Committee','Dr. Gopal Kumar','HOD, Mathematics, BNMU, Madhepura',13),
('National Advisory Committee','Dr. Sunil Suman','HOD, Mathematics, M.U., Bodh Gaya',14),
('National Advisory Committee','Prof. Sanjay Kumar','HOD Mathematics, BRA University, Muzaffarpur',15),
('National Advisory Committee','Prof. Arvind Kumar Sah','HOD Mathematics, TMBU, Bhagalpur.',16),
('Organizing Committee','Dr. M. Z. Alam','Dept. of Mathematics, COCAS, Patna.',1),
('Organizing Committee','Dr. M. K. Madhukar','HOD, Mathematics, COCAS, Patna.',2),
('Organizing Committee','Prof. Krishnandan Prasad','Head, Dept. of Mathematics, T.P.S. College, Patna',3),
('Organizing Committee','Dr. Shola Chandra','Dept. of Mathematics, R.K.D College, Patna',4),
('Organizing Committee','Dr. Manish Kumar','Dept. of Mathematics, A.N. College, Patna.',5),
('Organizing Committee','Dr. P. K. Chakraborty','HOD, Mathematics, M.J.K College, Bettiah.',6),
('Organizing Committee','Dr. Bibhuti Bikramaditya','Chairman, Bihar Brains Development Society',7),
('Organizing Committee','Dr. Abhik Singh','Dept. of Mathematics, Ganga Devi College, Patna',8),
('Organizing Committee','Dr. Arun Dayal','Dept. of Mathematics, Jamuni Lal College, Hajipur',9),
('Organizing Committee','Sri Randhir Kumar','Research Scholar, Magadh University, Bodh Gaya',10),
('Award Committee','Prof. Sanjay Kr. Pandey','Prof. Dept. of Mathematics, IIT BHU Varanasi - Convener',1),
('Award Committee','Prof. Shailendra Kumar Singh','Former Pro. V.C., J.P. University, Chapra',2),
('Award Committee','Prof. D N Sharma','Former Prof. of Mathematics, Patna College, Patna',3),
('Award Committee','Dr. M Z Alam','Dept. of Mathematics, COCAS, Patna',4),
('Souvenir/Editorial Committee','Prof. Om Prakash','Dept. of Mathematics, IIT Patna, Bihta',1),
('Souvenir/Editorial Committee','Dr Sriram Chauthaiwale','Retd. Prof. of Mathematics, Amravati University',2),
('Souvenir/Editorial Committee','Prof. Roushan Kumar','HOD Maths, Central University South Bihar, Gaya',3),
('Souvenir/Editorial Committee','Prof. D.N Sharma','Former Prof of Mathematics, Patna University, Patna',4),
('Souvenir/Editorial Committee','Dr. Shambu Sharan','Dept. of Maths, College, of Commerce Arts & Science',5);
GO

INSERT INTO TravelInfo(Mode,Details,SortOrder) VALUES
('By Air','The nearest airport is Lok Nayak Jai Prakash Narayan Airport at Patna, Venue is about 8 km by Road. Indian Airlines connect Patna to Calcutta, Ranchi, Bombay, Delhi and Lucknow, Bangalore and many more cities.',1),
('By Rail','Nearest Railway Station- Patna Junction',2),
('By Local Transport','Auto Rickshaw & Taxies',3);
GO

INSERT INTO Organizations(Name,RoleText,LogoPath,SortOrder) VALUES
('Indian Mathematics and Science Association (IMSA)','Organized by','Images/image1.jpeg',1),
('Aryabhatta Knowledge University, Patna','In Association with','Images/image2.png',2),
('Shiksha Sanskriti Utthan Nyas, New Delhi','In Association with','Images/image3.png',3);
GO
