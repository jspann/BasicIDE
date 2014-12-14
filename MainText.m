//
//  MainText.m
//  BasicIDE
//
//  Created by James Spann on 12/13/14.
//  Copyright (c) 2014 James Spann. All rights reserved.
//

#import "MainText.h"

@implementation MainText

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (NSArray *)readablePasteboardTypes {
	return [NSArray arrayWithObjects:NSPasteboardTypeString,
			nil];
}
@end
