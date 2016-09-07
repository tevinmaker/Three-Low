//
//  main.m
//  Three Low
//
//  Created by Tevin Maker on 2016-09-07.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        BOOL roll = YES;
        
        Dice *die1 = [[Dice alloc] init];
        Dice *die2 = [[Dice alloc] init];
        Dice *die3 = [[Dice alloc] init];
        Dice *die4 = [[Dice alloc] init];
        Dice *die5 = [[Dice alloc] init];
        
        
        while (roll == YES) {
        
        [die1 rollDie];
        [die2 rollDie];
        [die3 rollDie];
        [die4 rollDie];
        [die5 rollDie];
            
        }
    }
    
    return 0;
}
