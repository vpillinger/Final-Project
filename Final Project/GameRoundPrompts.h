//
//  GameRoundPrompts.h
//  Final Project
//
//  Created by cslab on 4/28/14.
//  Copyright (c) 2014 cslab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Game;

@interface GameRoundPrompts : NSManagedObject

@property (nonatomic, retain) id roundPrompts;
@property (nonatomic, retain) Game *myGame;

@end
