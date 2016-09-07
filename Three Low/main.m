//
//  main.m
//  Three Low
//
//  Created by Tevin Maker on 2016-09-07.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "PlayerInput.h"
#import "GameController.h"


int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
      
        BOOL roll = YES;
        
        Dice *die1 = [[Dice alloc] init];
        Dice *die2 = [[Dice alloc] init];
        Dice *die3 = [[Dice alloc] init];
        Dice *die4 = [[Dice alloc] init];
        Dice *die5 = [[Dice alloc] init];
        
        die1.dieIndex = @"Die 1";
        die2.dieIndex = @"Die 2";
        die3.dieIndex = @"Die 3";
        die4.dieIndex = @"Die 4";
        die5.dieIndex = @"Die 5";
        

        PlayerInput *playerInput = [[PlayerInput alloc] init];
        
        GameController *gameController = [[GameController alloc] init];
        
        
        gameController.allDice = [[NSMutableArray alloc] init];
        
        gameController.allDice = [NSMutableArray arrayWithObjects: die1, die2, die3, die4, die5, nil];
        
//        gameController.allDice = [@[die1, die2] mutableCopy];
        
        gameController.heldDice = [[NSMutableSet alloc] init];
        


        
        while (roll == YES)
        {
        
            for (Dice *die in gameController.allDice) {
                BOOL dieIsHeld = [gameController.heldDice containsObject:die];
                
                if (dieIsHeld == NO) {
                [die rollDie];
                }
            }

            for (Dice *die in gameController.allDice) {
                BOOL dieIsHeld = [gameController.heldDice containsObject:die];
                if (dieIsHeld == NO) {
        
                    NSLog(@"%@ rolls a %@", die.dieIndex, die.diceValue);
                }
                if (dieIsHeld == YES) {
                    NSLog(@"%@ is held and is a %@", die.dieIndex, die.diceValue);
                }
            }
            
            [gameController showDiceScore];
            
            NSString *holdDie = [playerInput inputForPrompt:@"What dice would you like to hold?"];
            if ([holdDie isEqual:@"reset"]) {
                [gameController resetDice];
            }
            
            for (Dice *dice in gameController.allDice) {
                if ([dice.dieIndex rangeOfString: holdDie].location == 0){
                    [gameController addToHeld:dice];
                    
                    NSString *dropDie = [playerInput inputForPrompt:@"Did you pick up by mistake? y/n"];
                    if ([dropDie isEqual:@"reset"]) {
                        [gameController resetDice];
                    }
                    
                    if ([dropDie isEqual:@"y"]) {
                        [gameController addToHeld:dice];
                    }
                }
                
            }
            
            NSString *rollAgainInput = [playerInput inputForPrompt:@"Would you like to roll again:\n y/n"];
            
            if ([rollAgainInput isEqual:@"reset"]) {
                [gameController resetDice];
            }
            if ([rollAgainInput isEqual:@"y"]) {
                roll = YES;
                
            }
            else {
                roll = NO;
            }
        }
    }
    return 0;
}
