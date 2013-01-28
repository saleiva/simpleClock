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
        
        // Set menu with status bar
        NSFont* font1= [NSFont fontWithName:@"Lucida Sans" size:14.0];
        self.statusMenu.minimumWidth = 275;
        self.statusMenu.font = font1;
        self.statusBar.menu = self.statusMenu;

        //Sets the images in the NSStatusItem
        NSImage* image = [NSImage imageNamed:@"clock.png"];
        NSImage* image_highlighted = [NSImage imageNamed:@"clock_highlighted.png"];
        self.statusBar.image = image;
        self.statusBar.alternateImage = image_highlighted;
        
        //Sets the mouse over text
        self.statusBar.toolTip = @"Edit your locations";
        
        //Enables highlighting
        self.statusBar.highlightMode = YES;
    }



@end
