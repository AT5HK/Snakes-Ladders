//
//  BoardGame.m
//  SnakesLadders
//
//  Created by Auston Salvana on 7/6/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "BoardGame.h"
#import "Cell.h"
#import "NSMutableArray+Shuffle.h"

@interface BoardGame ()
@property (nonatomic) NSMutableArray *boardSquares;
@property (nonatomic) NSMutableArray *snake;
@property (nonatomic) NSMutableArray *ladders;
@end

@implementation BoardGame

- (instancetype)init
{
    self = [super init];
    if (self) {
        _boardSquares = [NSMutableArray array];
    }
    return self;
}

-(NSArray*)createBoard:(int)size howHard:(difficulty)difficulty{
    int total = size * size;
    int snakes = 0;
    int ladders = 0;
    
    if (difficulty == easy) {
        snakes = 5;
        ladders = 15;
    }
    else if (difficulty == medium){
        snakes = 10;
        ladders = 10;
    }
    else{
        snakes = 15;
        ladders = 5;
    }
    
    for (int i = 0; i < total - 20; i++) {
        Cell *emptyCell = [[Cell alloc]initCellWithType:emptyCellEnum];
        [self.boardSquares addObject:emptyCell];
        
    }
    for (int i2 = 0; i2 < snakes; i2++) {
        Cell *snakeCell = [[Cell alloc]initCellWithType:snakeCellEnum];
        [self.boardSquares addObject:snakeCell];
        
    }
    for (int i3 = 0; i3 < ladders; i3++) {
        Cell *ladderCell = [[Cell alloc]initCellWithType:ladderCellEnum];
        [self.boardSquares addObject:ladderCell];
        
    }
    return [self.boardSquares shuffle];
}



@end
