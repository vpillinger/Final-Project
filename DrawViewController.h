//
//  DrawViewController.h
//  Final Project
//
//  Created by cslab on 4/27/14.
//  Copyright (c) 2014 cslab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
@interface DrawViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UILabel *promptLabel;
@property (weak, nonatomic) DetailViewController *myTabBar;
- (IBAction)save:(id)sender;


@end
