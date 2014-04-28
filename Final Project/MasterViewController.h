//
//  MasterViewController.h
//  Final Project
//
//  Created by cslab on 4/27/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>
#import "Game.h"
#import "NonMananagedGame.h"
@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) NSIndexPath * indexPath;
//@property (strong, nonatomic) NSMutableArray *nonManagedGames;

-(void)addRoundImage:(UIImage *)image game:(Game *)game;
-(void)addRoundPrompt:(NSString *)prompt game:(Game *)game;

@end
