//
//  Game.h
//  Final Project
//
//  Created by cslab on 4/28/14.
//  Copyright (c) 2014 cslab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "GameRoundImages.h"
#import "GameRoundPrompts.h"

@interface Game : NSManagedObject

@property (nonatomic, retain) NSString * gameName;
@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) NSOrderedSet *roundPrompts;
@property (nonatomic, retain) NSOrderedSet *roundImages;
@end

@interface Game (CoreDataGeneratedAccessors)

- (void)insertObject:(NSManagedObject *)value inRoundPromptsAtIndex:(NSUInteger)idx;
- (void)removeObjectFromRoundPromptsAtIndex:(NSUInteger)idx;
- (void)insertRoundPrompts:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeRoundPromptsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInRoundPromptsAtIndex:(NSUInteger)idx withObject:(NSManagedObject *)value;
- (void)replaceRoundPromptsAtIndexes:(NSIndexSet *)indexes withRoundPrompts:(NSArray *)values;
- (void)addRoundPromptsObject:(NSManagedObject *)value;
- (void)removeRoundPromptsObject:(NSManagedObject *)value;
- (void)addRoundPrompts:(NSOrderedSet *)values;
- (void)removeRoundPrompts:(NSOrderedSet *)values;
- (void)insertObject:(NSManagedObject *)value inRoundImagesAtIndex:(NSUInteger)idx;
- (void)removeObjectFromRoundImagesAtIndex:(NSUInteger)idx;
- (void)insertRoundImages:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeRoundImagesAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInRoundImagesAtIndex:(NSUInteger)idx withObject:(NSManagedObject *)value;
- (void)replaceRoundImagesAtIndexes:(NSIndexSet *)indexes withRoundImages:(NSArray *)values;
- (void)addRoundImagesObject:(NSManagedObject *)value;
- (void)removeRoundImagesObject:(NSManagedObject *)value;
- (void)addRoundImages:(NSOrderedSet *)values;
- (void)removeRoundImages:(NSOrderedSet *)values;
@end
