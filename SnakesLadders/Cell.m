//
//  Cell.m
//  SnakesLadders
//
//  Created by Auston Salvana on 7/6/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (instancetype)initCellWithType:(CellType)type
{
    self = [super init];
    if (self) {
        _cellType = type;
    }
    return self;
}

@end
