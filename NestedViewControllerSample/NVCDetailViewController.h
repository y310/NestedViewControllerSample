//
//  NVCDetailViewController.h
//  NestedViewControllerSample
//
//  Created by mito on 2014/01/19.
//  Copyright (c) 2014年 mito. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NVCDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
