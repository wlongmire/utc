<?php include('admin/runtime.php'); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Urban Tree Connection</title>
    
	<link href="css/UTC.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/UTC.js"></script>
    
    <meta name="Description" content="The Urban Tree Connection is a nonprofit 503(c) organization that engages children and adults from some of Philadelphia's most disadvantaged neighborhoods in community-based, urban-greening projects."/>
    <meta name="Keywords" content="nonprofit 503(c) Philadelphia community environment children adults volunteer donate economic environmental social benefits"/>
    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-32454775-1']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
</head>

<body>
<div class="wrapper">
	<div style="float:left; display:inline;">
    	<a href="index.php"><img src="images/logo_nm.jpg" title="Urban Tree Connection" alt="Urban Tree Connection home page" height="100" border="0"/></a>
    </div>
    
    <div style="float:right; display:inline;">
       	<div class="whiteLinks">
           	<span class="activeWhiteLink">Donate</span>|<a href="supportourwork.php">Support Our Work</a>|<a href="contact.php" style="padding-right:3px;">Contact Us</a>
        </div>
        
        <table cellpadding="0" cellspacing="0" class="navTable">
            <tr>
                <td><a href="index.php">Home</a></td>
            	<td><a href="about.php">About Us</a></td>
                <td><a href="programs.php">Programs</a></td>
                <td><a href="visitus.php">Markets/CSA</a></td>
                <td><a href="supporters.php">Supporters</a></td>
        	</tr>
        </table>
    </div>
    
    
    <br clear="all"/><br/>
	
    <table width="100%" cellpadding="0" cellspacing="0">
        <hr color="#CCCCCC" size="1" width="100%" </br>
        <h1>Donate</h1> 
    </table>
<div>

<?php perch_content("top_content") ?>

<img src= "images/donate/basket of gratitude.jpg" align="left" class="textImg margR7" height="280">
<img src= "images/donate/seed saving.jpg" align="right" class="textImg margL7" height="280">
<img src= "images/donate/beets.jpg" align="center" class="textImg margL7" height="280">

<br/><br />

<hr color="#CCCCCC" size="1" width="100%" /><br />
<p>
    <h2>Online</h2>
    <?php perch_content('donation_copy')?>
    <span style="display:inline;"><left>
    
        <form action="<?php perch_content('donation_paypal_link')?>" method="post" style="display:inline;">
            <input type="hidden" name="cmd" value="_s-xclick">
            <input type="hidden" name="hosted_button_id" value="JBSSFW7PP36FS">
            <input type="image" width="150px" src="https://utcneighborhoodfoods.files.wordpress.com/2015/12/donate.jpg?w=620" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
        </form>
	
	</span>
    <br><br>
</p>

<p>
    <h2>By Mail</h2>
    <?php perch_content('mail_copy')?>
</p>

<p>
    <h2>In-Kind</h2>
    <?php perch_content('in_kind')?>
</p>

</div>
    <br/><br/>
</div>
    
</div>
    <br clear="all"/>
</div>

<div class="footer">
    <span style="display:inline;"><a href="http://www.facebook.com/pages/Philadelphia-PA/Urban-Tree-Connection/296956299169"><img src="images/fb.png" height="20" border="0"/></a> <a href="http://twitter.com/UTCphila"><img src="images/twitter.png" height="20" border="0"/></a> 
        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" style="display:inline;">
            <input type="hidden" name="cmd" value="_s-xclick">
            <input type="hidden" name="hosted_button_id" value="JBSSFW7PP36FS">
            <input type="image" src="images/donate_icon.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
        </form>       
    </span>
    
    <p style="vertical-align:bottom; display:inline;">&#160;&#160;&#160;|&#160;&#160;&#160;<a href="mailto:misako@urbantreeconnection.org">info@urbantreeconnection.org</a>&#160;&#160;&#160;|&#160;&#160;&#160;Tel: 215-877-7203&#160;&#160;&#160;|&#160;&#160;&#160;c/o First African Presbyterian Church, 4159 West Girard Ave, Philadelphia, Pa 19104
    <br/>
    &copy; 2017 Urban Tree Connection. All rights reserved.</p>
</div>

</body>
</html>