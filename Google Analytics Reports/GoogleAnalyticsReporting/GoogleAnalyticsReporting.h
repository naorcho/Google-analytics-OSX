//
//  GoogleAnalyticsReporting.h
//  Google Analytics Reports
//
//  Created by SalesTech on 7/18/13.
//  Copyright (c) 2013 SalesTech. All rights reserved.
//

#import <Foundation/Foundation.h>

// base url is the url where you have put your server files
#define BASE_URL @"http://You_Site_where_the_Servre_is"

@class WebView;

@interface GoogleAnalyticsReporting : NSObject

@property (strong) WebView *GAwebView;
@property (strong, nonatomic) NSString *trackerID;
@property (strong, nonatomic) NSString *siteURL;

-(void)trackView:(NSString*)viewName;
-(void)trackEvent:(NSString*)category Action:(NSString*)action Label:(NSString*)label;
-(void)trackEvent:(NSString*)category Action:(NSString*)action Label:(NSString*)label Value:(NSString*)value;

-(id)init:(NSWindow*)window TrackerID:(NSString*)trackerID URL:(NSString*)url;

@end
