//
//  LTAppDelegate.h
//  Google Analytics Reports
//
//  Created by SalesTech on 7/18/13.
//  Copyright (c) 2013 SalesTech. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GoogleAnalyticsReporting.h"

@class WebView;

@interface LTAppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic, strong) GoogleAnalyticsReporting *GATrack;
@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet WebView *webView;

-(IBAction)btn_get_clicked:(id)sender;

@end
