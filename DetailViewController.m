//
//  DetailViewController.m
//  Final Project
//
//  Created by cslab on 4/27/14.
//  Copyright (c) 2014 cslab. All rights reserved.
//

#import "DetailViewController.h"
#import "ACEViewController.h"
#import "MasterViewController.h"
#import "HistoriesViewController.h"
#import "NonMananagedGame.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

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
    HistoriesViewController *pageView = (HistoriesViewController *)[self.viewControllers objectAtIndex:2];
    pageView.dataSource = self;
    pageView.delegate = self;
    _prompts = [[NSMutableArray alloc] init];
    _images = [[NSMutableArray alloc] init];
    UIImage *temp = [[UIImage alloc] init];
    [_images addObject:temp];
    [_prompts addObject:@"First"];
    
    HistoryViewController *startingController = [self viewControllerAtIndex:0];
    [pageView setViewControllers:@[startingController] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    //NonMananagedGame *thisGame = [[NonMananagedGame alloc] init];
    //thisGame.images = _images;
    //thisGame.prompts = _prompts;
    
    //[_master.nonManagedGames addObject:thisGame];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addRoundImage:(UIImage *)image game:(Game *)game{
    [_master addRoundImage:image game:game];
    
    
    if(image == nil){
        image = [[UIImage alloc] init];
    }
    [_images addObject:image];
    //NSLog(@"%@",_images);
}
-(void)addRoundPrompt:(NSString *)prompt game:(Game *)game{
    [_master addRoundPrompt:prompt game:game];
    
    [_prompts addObject:prompt];
    //NSLog(@"%@",_prompts);
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    id myObject = [segue destinationViewController];
    if([myObject class] == [ACEViewController class]){
        ACEViewController *myDrawView = (ACEViewController *) myObject;
        myDrawView.myTabBar = (DetailViewController *)self;
    }
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    
    
    NSUInteger index = ((HistoryViewController *)viewController).index;
    if((index == 0)||(index == NSNotFound)){
        return nil;
    }
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    NSUInteger index = ((HistoryViewController *)viewController).index;
    if(index == NSNotFound){
        return nil;
    }
    index++;
    //Game *game = ((DetailViewController *)self.tabBarController).detailItem;
    NSUInteger totalPages = MAX(_images.count,_prompts.count);
   // NSLog(@"images %u prompts %u",_images.count,_prompts.count);
    if(index == totalPages){
        return  nil;
    }
    return [self viewControllerAtIndex:index];
    
}
- (HistoryViewController *)viewControllerAtIndex:(NSUInteger)index{
    //NSLog(@"Method Called");
    //NSLog(@"%@ %@",_images, _prompts);
    HistoryViewController *historyController = [self.storyboard instantiateViewControllerWithIdentifier:@"HistoryView"];
    [historyController view];
    historyController.index = index;
    historyController.gameNameLabel.text = @"PictureDash";
    
    historyController.roundNumberLabel.text = [NSString stringWithFormat:@"RoundNumber: %u",index];
    //Game *game = ((DetailViewController *)self.tabBarController).detailItem;
    //historyController.roundPromptLabel.text = [NSString stringWithFormat:@"Prompt: %@",[game.roundPrompts objectAtIndex:index]];
    // historyController.imageView.image = [game.roundImages objectAtIndex:index];
    if(index < _prompts.count){
        historyController.roundPromptLabel.text = [NSString stringWithFormat:@"Prompt: %@", [_prompts objectAtIndex:index]];
    }else{
        historyController.roundPromptLabel.text = @"Prompt: ";
    }
    
    if(index < _images.count){
        historyController.imageView.image = [_images objectAtIndex:index];
    }else{
        historyController.imageView.image = [[UIImage alloc]init];
    }
    
    return historyController;
}
@end
