//
//  HistoriesViewController.m
//  Final Project
//
//  Created by cslab on 4/28/14.
//  Copyright (c) 2014 cslab. All rights reserved.
//

#import "HistoriesViewController.h"
#import "Game.h"
#import "GameRoundImages.h"
#import "GameRoundPrompts.h"
#import "DetailViewController.h"
@interface HistoriesViewController ()

@end

@implementation HistoriesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.delegate = self;
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
