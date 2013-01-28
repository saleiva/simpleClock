//
//  AppDelegate.h
//  Clocky
//
//  Created by Javier Álvarez Medina on 1/28/13.
//  Copyright (c) 2013 Javier Álvarez Medina. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>


@property (weak) IBOutlet NSMenu *statusMenu;
@property (strong, nonatomic) NSStatusItem *statusBar;


@end
