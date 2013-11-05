//
//  TableViewController.m
//  MyWeatherApp
//
//  Created by Raine Virta on 5.11.2013.
//  Copyright (c) 2013 Raine Virta. All rights reserved.
//

#import "TableViewController.h"
#import "WeatherLocation.h"

@interface TableViewController () {
    IBOutlet NSTableView *tableView;
    NSMutableArray *list;
}
@end

@implementation TableViewController

- (id)init
{
    if (self = [super init]) {
        list = [[NSMutableArray alloc] init];

        WeatherLocation *myWeatherLocation = [[WeatherLocation alloc] init];
        [list addObject:myWeatherLocation];
        NSLog(@"%@", @"test");
    }

    return self;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [list count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)aRow
{
    NSObject *object = [list objectAtIndex:aRow];
    return [object valueForKey:[aTableColumn identifier]];
}

- (IBAction)add:(id)sender
{
    NSLog(@"%@", @"add");
}

- (IBAction)remove:(id)sender
{
    NSLog(@"%@", @"remove");
}

@end
