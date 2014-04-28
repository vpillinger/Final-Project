//
//  HistoryViewController.h
//  Final Project
//
//  Created by cslab on 4/28/14.
//  Copyright (c) 2014 cslab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *gameNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *roundNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *roundPromptLabel;
@property NSUInteger index;
@end
