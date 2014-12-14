//
//  AppDelegate.m
//  BasicIDE
//
//  Created by James Spann on 12/13/14.
//  Copyright (c) 2014 James Spann. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow	*window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
	
	NSRect cFrame =[[_window contentView] frame];
 
	
	idetext = [[MainText alloc]initWithFrame:NSRectFromCGRect(cFrame)];
	[_window setContentView:idetext];
	[_window makeKeyAndOrderFront:nil];
	[_window makeFirstResponder:idetext];
	[idetext setDelegate:self];
	[self setupInterface];
	
	mystorage = idetext.textStorage;

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}


-(void)setupInterface{
	
	//in place of NSMakeRange put your range
	NSString *str = @"Hello. That is a test attributed string.";

	[idetext setRichText:YES];
	[idetext setString:str];
	[idetext setTextColor:[NSColor redColor] range:NSMakeRange(3,5)];
	

}

-(void)textDidChange:(NSNotification *)notification {
	NSLog(@"Ok");
	
	//get the range of the entire run of text
	NSRange area = NSMakeRange(0, [mystorage length]);
	
	//remove existing coloring
	[mystorage removeAttribute:NSForegroundColorAttributeName range:area];
	
	//add new coloring
	//[mystorage addAttribute:NSForegroundColorAttributeName value:[NSColor yellowColor] range:area];

}

- (void)keyDown:(NSEvent *)theEvent
{
	NSLog(@"derp");
	NSString*   const   character   =   [theEvent charactersIgnoringModifiers];
	unichar     const   code        =   [character characterAtIndex:0];
	
	switch (code)
	{
		case NSUpArrowFunctionKey:
		{
			break;
		}
		case NSDownArrowFunctionKey:
		{
			break;
		}
		case NSLeftArrowFunctionKey:
		{
			//[self navigateToPreviousImage];
			break;
		}
		case NSRightArrowFunctionKey:
		{
			//	[self navigateToNextImage];
			break;
		}
	}
}


@end
