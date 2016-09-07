//
//  Dice.h
//  Three Low
//
//  Created by Tevin Maker on 2016-09-07.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) NSString *diceValue;
@property (nonatomic) NSString *dieIndex;
@property (nonatomic) int diePoints;

-(NSString*) rollDie;

@end
