//
//  MyWindowController.m
//  MyWeatherApp
//
//  Created by Raine Virta on 5.11.2013.
//  Copyright (c) 2013 Raine Virta. All rights reserved.
//

#import "MyWindowController.h"
#import "TableViewController.h"

@interface MyWindowController ()

@property (strong) IBOutlet TableViewController *tableViewController;

@end

@implementation MyWindowController

- (id)init
{
    return [super initWithWindowNibName:@"MyWindowController" owner:self];
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    NSLog(@"%@", _tableViewController);
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
