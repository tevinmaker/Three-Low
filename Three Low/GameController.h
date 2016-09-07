//
//  GameController.h
//  Three Low
//
//  Created by Tevin Maker on 2016-09-07.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerInput.h"
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *allDice;
@property (nonatomic) NSMutableSet *heldDice;


-(void) addToHeld:(Dice *) die;

@end
