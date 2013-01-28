//
//  AppDelegate.m
//  Clocky
//
//  Created by Javier Álvarez Medina on 1/28/13.
//  Copyright (c) 2013 Javier Álvarez Medina. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize statusMenu  = _statusMenu;
@synthesize statusBar   = _statusBar;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}


- (void) awakeFromNib {
    self.statusBar = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    self.statusBar.title = [NSImage imageNamed:@"clock.png"];
    
    // you can also set an image
    self.statusBar.image = [NSImage imageNamed:@"clock.png"];
    //NSImage* icon = [NSImage alloc] initWith ...]
    //[statusItem setImage:icon];
    //-(void)setImage:(NSImage *)icon.png
    
    self.statusBar.menu = self.statusMenu;
    self.statusBar.highlightMode = YES;
}



@end
