//
//  DetailViewController.h
//  Final Project
//
//  Created by cslab on 4/27/14.
//  Copyright (c) 2014 cslab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Game.h"
@class ACEViewController;
@class MasterViewController;
@interface DetailViewController : UITabBarController <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (strong, nonatomic) Game* detailItem;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *drawButton;
@property (weak, nonatomic) UIImage *currentDrawingImage;
@property (weak, nonatomic) MasterViewController *master;
-(void)addRoundImage:(UIImage *)image game:(Game *)game;
-(void)addRoundPrompt:(NSString *)prompt game:(Game *)game;

@property NSMutableArray *images;
@property NSMutableArray *prompts;
@end
