//
//  LTAppDelegate.m
//  Google Analytics Reports
//
//  Created by SalesTech on 7/18/13.
//  Copyright (c) 2013 SalesTech. All rights reserved.
//

#import "LTAppDelegate.h"
#import <WebKit/WebKit.h>

@implementation LTAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    // init the tracker. You have to 
    self.GATrack = [[GoogleAnalyticsReporting alloc] init:self.window TrackerID:@"UA-XXXXXXX-2" URL:@"Your_site_address"];
    [self.GATrack trackView:@"Test"];
}

-(IBAction)btn_get_clicked:(id)sender{
    
    // track an event. You also can add a value
    [self.GATrack trackEvent:@"Button" Action:@"Clicked" Label:@"btn_get_clicked"];
//        [self.GATrack trackEvent:@"Button" Action:@"Clicked" Label:@"btn_get_clicked" Value:@"2"];
}


@end
