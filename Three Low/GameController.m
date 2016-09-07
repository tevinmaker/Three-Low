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

-(void) resetDice {

        for (Dice *dice in self.heldDice) {
            [self.heldDice removeObject:dice];
        }
}

-(void) showDiceScore {
    int totalDiceScore = 0;
    int heldDiceScore = 0;
    for (Dice *allDice in self.allDice) {
        totalDiceScore = totalDiceScore + allDice.diePoints;
    }
    for (Dice *heldDice in self.heldDice) {
        heldDiceScore = heldDiceScore = heldDice.diePoints;
    }
    NSLog(@"Total dice score equals: %d\n Held dice score equals: %d\n", totalDiceScore, heldDiceScore);
}

    
@end
