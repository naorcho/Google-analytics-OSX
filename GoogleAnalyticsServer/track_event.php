
<!DOCTYPE html>
<html>
<body>
<?php include_once("analyticstracking.php"); ?>

<script>
	var category = <?php echo json_encode($_GET["category"]); ?>;
	var action = <?php echo json_encode($_GET["action"]); ?>;
	var label = <?php echo json_encode($_GET["label"]); ?>;
	var value = <?php echo json_encode($_GET["value"]); ?>;
	var trackerID = <?php echo json_encode($_GET["id"]); ?>;
	var siteURL = <?php echo json_encode($_GET["url"]); ?>;
	
	if (typeof value != 'undefined')
	{
		ga('create', trackerID, siteURL);
		trackEventWithParam(category, action, label, value);
	}
	else
	{
		ga('create', trackerID, siteURL);
		trackEvent(category, action, label);
	}
	
</script>
</body>
</html>