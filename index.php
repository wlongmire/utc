<?php include('admin/runtime.php'); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Urban Tree Connection</title>
	
	<link href="css/UTC.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/UTC.js"></script>
    
	<meta name="Description" content="The Urban Tree Connection is a nonprofit 503(c) organization that engages children and adults from some of Philadelphia's most disadvantaged neighborhoods in community-based, urban-greening projects."/>
    <meta name="Keywords" content="nonprofit 501(c)(3) Philadelphia community environment children adults volunteer donate economic environmental social benefits"/>

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
        	<a href="donate.php">Donate</a>|<a href="supportourwork.php">Support Our Work</a>|<a href="contact.php" style="padding-right:3px;">Contact Us</a>
        </div>

    	<table cellpadding="0" cellspacing="0" class="navTable">
            <tr>
                <td class="activeNav">Home</td>
            	<td><a href="about.php">About Us</a></td>
                <td><a href="programs.php">Programs</a></td>
                <td><a href="visitus.php">Markets/CSA</a></td>
                <td><a href="supporters.php">Supporters</a></td>
        	</tr>
        </table>
    </div>
    
    
    <br clear="all"/><br/>

    <div id="header_gallery">
        <?php 
            $album = perch_content_custom('header_gallery', array('skip-template'=>true));
            perch_gallery_album_images('header-gallery', array('template'=>'b_static_image.html'))
        ?>
    </div>

    <br clear="all"/>
    
    <div style="float:left; width:33%; border-right:solid 1px #ccc; padding:0 10px 0 0;">
        <?php perch_content("left_col"); ?>
    </div>
    
    <div style="float:right;height:565px;overflow:auto;" class="homeNews">
        <?php perch_content("right_col"); ?>         
    </div>
    
    <br clear="all"/>
</div>

<div class="footer">
    <p style="vertical-align:bottom; display:inline;"&#160;|&#160;&#160;&#160;><a href="http://www.facebook.com/pages/Philadelphia-PA/Urban-Tree-Connection/296956299169"><img src="images/fb.png" height="20" border="0"></a> <a href="http://twitter.com/UTCphila"><img src="images/twitter.png" height="20" border="0"></a><a href="https://www.paypal.com/fundraiser/charity/1563272"><img src="images/donate_icon.png" height="20" border="0"></a>	
    <br/>
    &copy; 2017 Urban Tree Connection. All rights reserved.</p>
</div>

</body>
</html>
