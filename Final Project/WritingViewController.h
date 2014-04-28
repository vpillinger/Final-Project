//
//  WritingViewController.h
//  Final Project
//
//  Created by cslab on 4/27/14.
//  Copyright (c) 2014 cslab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
@interface WritingViewController : UIViewController <UITextFieldDelegate>

- (IBAction)save:(id)sender;
- (IBAction)activateSave:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIImageView *displayImage;
@property (weak, nonatomic) DetailViewController *myTabBar;
@end
