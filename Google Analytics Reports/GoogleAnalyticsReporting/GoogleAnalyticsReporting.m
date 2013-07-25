//
//  GoogleAnalyticsReporting.m
//  Google Analytics Reports
//
//  Created by SalesTech on 7/18/13.
//  Copyright (c) 2013 SalesTech. All rights reserved.
//

#import "GoogleAnalyticsReporting.h"
#import <WebKit/WebKit.h>

#define TRACK_VIEW @"track_view.php?"
#define TRACK_EVENT @"track_event.php?"

@implementation GoogleAnalyticsReporting

- (id)init:(NSWindow*)window TrackerID:(NSString*)trackerID URL:(NSString*)url
{
    self = [super init];
    if (self) {
        self.GAwebView = [[WebView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
        self.trackerID = trackerID;
        self.siteURL = url;
        [window.contentView addSubview:self.GAwebView];
        
    }
    return self;
}

-(void)trackView:(NSString*)viewName
{
    NSLog(@"GA URL: %@, GA ID: %@", self.siteURL, self.trackerID);
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@pagev=%@&id=%@&url=%@",BASE_URL,TRACK_VIEW,viewName, self.trackerID, self.siteURL]];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.GAwebView.mainFrame loadRequest:urlRequest];

}
-(void)trackEvent:(NSString*)category Action:(NSString*)action Label:(NSString*)label
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@category=%@&action=%@&label=%@&id=%@&url=%@",BASE_URL,TRACK_EVENT, category, action, label, self.trackerID, self.siteURL]];
    
    NSLog(@"GA event sent: %@",[NSString stringWithFormat:@"%@/%@category=%@&action=%@&label=%@",BASE_URL,TRACK_VIEW, category, action, label]);
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.GAwebView.mainFrame loadRequest:urlRequest];

}
-(void)trackEvent:(NSString*)category Action:(NSString*)action Label:(NSString*)label Value:(NSString*)value
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@category=%@&action=%@&label=%@&value=%@&id=%@&url=%@",BASE_URL,TRACK_EVENT, category, action, label, value, self.trackerID, self.siteURL]];
    
    NSLog(@"GA event sent: %@",[NSString stringWithFormat:@"%@/%@category=%@&action=%@&label=%@&value=%@",BASE_URL,TRACK_EVENT, category, action, label, value]);
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.GAwebView.mainFrame loadRequest:urlRequest];
}

@end
