//
//  NVCMasterViewController.m
//  NestedViewControllerSample
//
//  Created by mito on 2014/01/19.
//  Copyright (c) 2014年 mito. All rights reserved.
//

#import "NVCChildViewController.h"
#import "NVCMasterViewController.h"

@interface NVCMasterViewController ()
@property (nonatomic, weak) NVCChildViewController *firstChildViewController;
@property (nonatomic, weak) NVCChildViewController *secondChildViewController;
@end

@implementation NVCMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
            return [self.firstChildViewController totalHeight];
        case 1:
            return [self.secondChildViewController totalHeight];
        default:
            return 44.0f;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"firstController"]) {
        self.firstChildViewController = segue.destinationViewController;
    } else if ([segue.identifier isEqualToString:@"secondController"]) {
        self.secondChildViewController = segue.destinationViewController;
    }
}

@end
