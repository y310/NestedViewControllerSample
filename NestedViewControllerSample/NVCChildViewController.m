//
//  NVCChildViewController.m
//  NestedViewControllerSample
//
//  Created by mito on 2014/01/19.
//  Copyright (c) 2014年 mito. All rights reserved.
//

#import "NVCChildViewController.h"

@interface NVCChildViewController ()
@property (nonatomic, strong) NSArray *items;
@end

@implementation NVCChildViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.items = @[@1, @2, @3, @4, @5, @6];
}

- (CGFloat)totalHeight
{
    return 44.0f * self.items.count;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = [self.items[indexPath.row] stringValue];
    return cell;
}

@end
