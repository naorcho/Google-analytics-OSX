Google-analytics-OSX
====================

So easy to use.

This helper class will let you use Google Analytics on your OSX application.

Open a website profile in Google Analytics.

Then add the class GoogleAnalyticsReporting.h/.m to your project.

Add WebKit.framework to you project from the builld phases

There is a folder in the project with .php files, this is your server which send all the data to Google.
Put it in your website files and take the url of it and put it in the BASE_URL which is in GoogleAnalyticsReporting.h

Use the example to see how to init the object.

then use it as follow:


track view:
[self.GATrack trackView:@"Test"];

track event:
[self.GATrack trackEvent:@"Button" Action:@"Clicked" Label:@"btn_get_clicked"];
or
[self.GATrack trackEvent:@"Button" Action:@"Clicked" Label:@"btn_get_clicked" Value:@"2"];
