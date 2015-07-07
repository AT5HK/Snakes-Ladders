//
//  Cell.h
//  SnakesLadders
//
//  Created by Auston Salvana on 7/6/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CellType){
    emptyCellEnum,
    ladderCellEnum,
    snakeCellEnum
};

@interface Cell : NSObject

@property (nonatomic) CellType cellType;
- (instancetype)initCellWithType:(CellType)type;
@end
