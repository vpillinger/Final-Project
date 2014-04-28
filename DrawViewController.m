//
//  DrawViewController.m
//  Final Project
//
//  Created by cslab on 4/27/14.
//  Copyright (c) 2014 cslab. All rights reserved.
//

#import "DrawViewController.h"
#import "Game.h"
#import "GameRoundPrompts.h"
@interface DrawViewController ()

@end

@implementation DrawViewController

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
    // Do any additional setup after loading the view.
   
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    //activate draw button
    DetailViewController *myTabBar = (DetailViewController *)self.tabBarController;
    [myTabBar.drawButton setEnabled:YES];
    //update image shown
    self.imageView.image = myTabBar.currentDrawingImage;
    //update prompt
    GameRoundPrompts *latestPrompt = [myTabBar.detailItem.roundPrompts lastObject];
    [_promptLabel setText: [NSString stringWithFormat:(@"Prompt: %@"), latestPrompt.roundPrompts]];
    
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    DetailViewController *myTabBar = (DetailViewController *)self.tabBarController;
    
    [myTabBar.drawButton setEnabled:NO];
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
- (IBAction)save:(id)sender {
    //save game state
    DetailViewController *detailView = ((DetailViewController *)self.tabBarController);
    [detailView addRoundImage:_imageView.image game:detailView.detailItem];
    //reconfigure views
    detailView.currentDrawingImage = nil;
    _imageView.image = nil;
    [[[[self.tabBarController tabBar]items] objectAtIndex:1] setEnabled:NO];
    [[[[self.tabBarController tabBar]items] objectAtIndex:0] setEnabled:YES];
    self.tabBarController.selectedViewController = [self.tabBarController.viewControllers objectAtIndex:0];

}
@end
