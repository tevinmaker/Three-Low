//
//  Dice.m
//  Three Low
//
//  Created by Tevin Maker on 2016-09-07.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "Dice.h"

@implementation Dice



-(NSString*) rollDie {
    
    int from = 1;
    int to = 6;
    int rollValue = (int)from + arc4random() % (to-from+1);
    
    
    switch (rollValue) {
        case 1:
            self.diceValue = @"i";
            self.diePoints = 0;
            break;
    
        case 2:
            self.diceValue = @"ii";
            self.diePoints = 0;
            break;
            
        case 3:
            self.diceValue = @"iii";
            self.diePoints = 0;
            break;
            
        case 4:
            self.diceValue = @"iv";
            self.diePoints = 4;
            break;
            
        case 5:
            self.diceValue = @"v";
            self.diePoints = 5;
            break;
            
        case 6:
            self.diceValue = @"vi";
            self.diePoints = 6;
            break;
            
        default:
            break;
    }
    
    return self.diceValue;
}
     


@end
