<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>IMS Placement Cell</title>
    <style>
   .button {
	background-color:#663300;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:18px;
	line-height:30px;
	border-radius:20px;
	-webkit-border-radius:20px;
	-moz-border-radius:20px;
	border:0;
	text-shadow:#C17C3A 0 -1px 0;
	width:120px;
	height:32px
	}
</style>
</head>

<body>

   <div style="height:80px; width:auto;">
      <div style="float:left; width:80%;">
      <table>
      <tr><td><img src="images/imslogo.jpg" height="100px" width="100px" /></td>
      <td><b style="color:#000066; text-shadow:#000000; font-size:30px; ">IMS Engineering College,Ghaziabad-Delhi NCR</b><br /><b style="color:#990000; text-shadow:inherit; font-size:22px;">NAAC Accredited with A grade</b><br /><b style="color:#000066; text-shadow:#000000; font-size:22px; ">College Code 143</b><br /> <b style="color:#000099; text-shadow:#000000; font-size:18px; ">Approved By UGC, AICTE, New Delhi & Affiliated to Dr. A.P.J. Abdul Kalam Technical University, Lucknow</b></td></tr></table></div>
      <div style="float:left;width:20%;"><table>
      <form action=login_db.jsp method='post'><h3>
      
      <tr><td>User Name</td><td><input type=text name="user" size=15 style="height:20"color="red"></td></tr>
      <tr><td>Password &nbsp;&nbsp;&nbsp; </td><td><input type=password name="pwd" size=15></h3></td></tr>
      <tr><td><input type=submit class='button'value=LOGIN></td></tr>
      </form>
      </table>
      
      </div>
      </div>
      <br /><br />
      <div id='cssmenu'>
      <ul>
         <li class='active has-sub'><a href=index2.jsp><span>Home</span></a></li>
         <li class='has-sub'><a href='#'><span>CDC</span></a>
            <ul>
               <li class='last'><a href=emp_reg.jsp><span>Registration</span></a>
                
               </li>
                        <li class='last'><a href='#'><span>Team</span></a></li>
               <li class='last'><a href='#'><span>Function</span></a></li>
            </ul>
               <li class='has-sub'><a href='#'><span>Student</span></a>
                  <ul>
                     <li class='last'><a href=stu_reg.jsp><span>Registration</span></a></li>
                  </ul>
               </li>
               <li class='has-sub'><a href='#'><span>Company</span></a>
                  <ul>
                     <li class='last'><a href=com_reg.jsp><span>Registration</span></a></li>
                  </ul>
               </li>
               <li class="last"><a href="alumini.html"><span>Alumini</span></a></li>
        
         <li class='last'><a href='pla_stats.html'><span>Placement Statistics</span></a></li>
          <li class='last'><a href='#'><span>Contact US</span></a></li>
      
         <li class='last'><a href='feedback.html'><span>Feedback</span></a></li>
         
      
            </ul>
      </div>
      <div>
      <marquee behaviour=scroll direction=left><img src="images/1417159070ims1.jpg" height="300px" width="700px"  /><img src="images/_MG_7470.JPG" height="300px" width="700px"  /><img src="images/DSC_7501.JPG" height="300px" width="700px" /><img src="images/ims_p2.jpg" height="300px" width="700px"  /><img src="images/glory.jpeg" height="300px" width="700px" /></marquee>
      </div>
      <marquee bgcolor="#990000" behavior="scroll" direction="left" scrollamount="10">
      <b><ul style="float:left; color:#CCCCCC; font-size:20px">
      <li style="display:inline;"># Notice of registration for Infogain &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      <li style="display:inline;"># Selection List for Amazon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      <li style="display:inline;"># Notice regarding commencement of classes for Placement Training</li>
      </ul></b></marquee>
      <center><h1 style="color:#663300;"><u>Welcome to the Placement Cell of IMS Engineering College</u></h1></center>
      <div style="margin-left:200px; margin-right:200px;">
      <hr color="#990033" />
      <b><h3>	In less than a decade, IMS Engineering College has crossed many significant milestones. A large number of front ranking multinationals, Indian IT/ITES and core companies including TCS, MICROSOFT, Tech Mahindra, IndusInd Bank, Federal Bank, INFOSYS, WIPRO, Accenture, Perot System, Sapient, L&T InfoTech, Fiserv, MAQ Software, L&T Core, Schneider India, Mankind Pharma, Coca Cola, Steria, Samsung etc. have recruited students from IMSEC.<br><br>
      
      The institute has set up a comprehensive Career Development Centre offering result oriented services for building commendable careers. The onus of the placement cell is to facilitate and foster a mutually beneficial relationship between the corporations, academia and the students. The college is accredited with Tata Consultancy Services for placement & training projects. The Department has made excellent progress and has been successful in placing majority of the students in reputed companies including TCS, Steria, Samsung, Tech Mahindra, Fiserv, Mankind, R-Systems, IBM, HCL Technologies, NIIT Technologies, Birla Soft, Microsoft, Federal Bank, iGate, Headstrong, Bosch Chassis, Uflex, Syntel, JBM and many more. Among them Microsoft (B.Tech) and Federal Bank (MBA) have offered the highest pay packages.<br> 
      
      <br>Career Development Centre also works to develop overall development of the students by assisting them in acquiring of soft skills through Personality Development Program aiming at increasing employability prospects of the aspiring candidates, which is essential criteria for Corporate.<br> 
      
      <br>The students of MBA at IMSEC have also been placed in Dubai in Emaar implying our world’s best academic practices for enhancing employability parameter</h3></b>
      </div>
</body>
</html>
