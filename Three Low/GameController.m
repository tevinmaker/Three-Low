//
//  GameController.m
//  Three Low
//
//  Created by Tevin Maker on 2016-09-07.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "GameController.h"

@implementation GameController


-(void) addToHeld:(Dice *) die{
    
    BOOL dieIsHeld = [self.heldDice containsObject:die];
    
    if (dieIsHeld == NO) {
        
        [self.heldDice addObject: die];
    }
    
    else {
        [self.heldDice removeObject:die];
    }

}


@end
