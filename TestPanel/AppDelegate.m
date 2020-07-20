//
//  AppDelegate.m
//  TestPanel
//
//  Created by Levi Nunnink on 7/20/20.
//  Copyright © 2020 Levi Nunnink. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (strong) NSStatusItem *statusItem;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    self.statusItem.button.title = @"Show";
    [self.statusItem.button setTarget:self];
    [self.statusItem.button setAction:@selector(toggleWindow:)];
}

- (void)toggleWindow:(id)sender
{
    [self.window makeKeyAndOrderFront:sender];
}

@end
