//
//  BoardGame.h
//  SnakesLadders
//
//  Created by Auston Salvana on 7/6/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

typedef enum{
    easy,
    medium,
    hard
} difficulty;

#import <Foundation/Foundation.h>
#import "Cell.h"


@interface BoardGame : NSObject
@property (nonatomic) Cell *cell;
-(NSArray*)createBoard:(int)size howHard:(difficulty)difficulty;
@end
