//
//  AppDelegate.h
//  BasicIDE
//
//  Created by James Spann on 12/13/14.
//  Copyright (c) 2014 James Spann. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MainText.h"
@interface AppDelegate : NSObject <NSApplicationDelegate, NSTextViewDelegate>{
	MainText *idetext;
	NSTextStorage *mystorage;
	id eventMonitor;

}


@end

