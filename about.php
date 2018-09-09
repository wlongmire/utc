<?php include('admin/runtime.php'); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Urban Tree Connection</title>
<link href="css/UTC.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/UTC.js"></script>
<meta name="Description" content="The Urban Tree Connection is a nonprofit 503(c) organization that engages children and adults from some of Philadelphia's most disadvantaged neighborhoods in community-based, urban-greening projects." />
<meta name="Keywords" content="nonprofit 503(c) Philadelphia community environment children adults volunteer donate economic environmental social benefits" />
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
		<div style="float: left; display: inline"><a href="index.php">
			<img src="images/logo_nm.jpg" title="Urban Tree Connection" alt="Urban Tree Connection home page" border="0" height="100" /></a>
		</div>

		<div style="float: right; display: inline">
			<div class="whiteLinks">
				<a href="donate.php">Donate</a>|<a href="supportourwork.php">Support Our Work</a>|<a href="contact.php" style="padding-right: 3px">Contact Us</a></div>
				<table class="navTable" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td><a href="index.php">Home</a></td>
							<td class="activeNav">About Us</td>
							<td><a href="programs.php">Programs</a></td>
							<td><a href="visitus.php">Markets/CSA</a></td>
							<td><a href="supporters.php">Supporters</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<br class="clear" />
			<br />
			<hr color="#CCCCCC" size="1" width="100%"/>
			<h1>About Us</h1> 
			<?php perch_content("top_content") ?>
			
			<br />

			<hr color="#CCCCCC" size="1" width="100%"/>
			<div class='col col_left'>
				<h2>Board of Directors</h2>
				<?php perch_content("board_of_directors")?>
			</div>
			<div class='col col_right'>
				<h2>Our Staff</h2>
				<?php perch_content("staff")?>
			</div>

			<div class="clear"/>
		</div>

		<div class="footer">
			<hr color="#CCCCCC" size="1" width="100%"/>
			<span style="display: inline">
				<a href="http://www.facebook.com/pages/Philadelphia-PA/Urban-Tree-Connection/296956299169">
					<img alt="" src="images/fb.png" border="0" height="20" />
				</a>
				<a href="http://twitter.com/UTCphila">
					<img alt="" src="images/twitter.png" border="0" height="20" />
				</a>
					
				<form action="https://www.paypal.com/cgi-bin/webscr" method="post" style="display: inline">
					<input name="cmd" value="_s-xclick" type="hidden" />
					<input name="hosted_button_id" value="JBSSFW7PP36FS" type="hidden" />
					<input src="images/donate_icon.png" name="submit" alt="PayPal - The safer, easier way to pay online!" border="0" type="image" /><img alt="" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" border="0" height="1" width="1" />
				</form>
			</span>

			<p style="vertical-align: bottom; display: inline">&nbsp;|&nbsp;&nbsp;&nbsp;<a href="mailto:misako@urbantreeconnection.org">info@urbantreeconnection.org</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;Tel: 215-877-7203&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;c/o First African Presbyterian Church, 4159 West Girard Ave, Philadelphia, Pa 19104<br /> &copy; 2017 Urban Tree Connection. All rights reserved.</p>
		</div>
	</body>
</html>