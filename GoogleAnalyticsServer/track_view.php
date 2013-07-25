<!DOCTYPE html>
<html>
<body>
<?php include_once("analyticstracking.php"); ?>

<script>
	var trackerID = <?php echo json_encode($_GET["id"]); ?>;
	var siteURL = <?php echo json_encode($_GET["url"]); ?>;
	
	ga('create', trackerID, siteURL);
	track(<?php echo json_encode($_GET["pagev"]); ?>);
</script>

</body>
</html>

