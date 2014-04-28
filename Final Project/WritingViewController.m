//
//  WritingViewController.m
//  Final Project
//
//  Created by cslab on 4/27/14.
//  Copyright (c) 2014 cslab. All rights reserved.
//

#import "WritingViewController.h"
#import "Game.h"
@interface WritingViewController ()

@end

@implementation WritingViewController

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
    [_textField setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [_saveButton setEnabled:NO];
    
    //update image
    DetailViewController *myTabBar = (DetailViewController *)self.tabBarController;
    GameRoundImages *latestImage = [myTabBar.detailItem.roundImages lastObject];
    [_displayImage setImage: latestImage.roundImage];
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
    //save the game state
    Game *game = ((DetailViewController *)self.tabBarController).detailItem;;
    //NSLog(@"%@", game.gameRoundPrompts);
    //add the prompt to the game
    DetailViewController *fuckXCodeAndApple = (DetailViewController *)self.tabBarController;
    NSString *temp = _textField.text;
    [fuckXCodeAndApple addRoundPrompt:temp game:game];
    
    
    //reconfigure views
    [_textField setText:nil];
    [[[[self.tabBarController tabBar]items] objectAtIndex:0] setEnabled:NO];
    [[[[self.tabBarController tabBar]items] objectAtIndex:1] setEnabled:YES];
    self.tabBarController.selectedViewController = [self.tabBarController.viewControllers objectAtIndex:1];
}

- (IBAction)activateSave:(id)sender {
    [_saveButton setEnabled:YES];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end
