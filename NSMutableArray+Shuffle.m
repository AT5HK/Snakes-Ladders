//
//  NSMutableArray+Shuffle.m
//  SnakesLadders
//
//  Created by Auston Salvana on 7/6/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "NSMutableArray+Shuffle.h"

@implementation NSMutableArray (Shuffle)

- (NSMutableArray*)shuffle
{
    NSUInteger count = [self count];
    for (NSUInteger i = 0; i < count; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [self exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    return self;
}

@end
