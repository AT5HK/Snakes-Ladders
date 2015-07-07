//
//  main.m
//  SnakesLadders
//
//  Created by Auston Salvana on 7/6/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BoardGame.h"
char reply[100];
char rollInput[100];
int currentSquare = 0;
int theDifficulty = 0;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
            
        BoardGame *boardGame = [[BoardGame alloc]init];
        NSLog(@"Choose board size must be equal to or greater than 10 ->");
        fgets(reply, 100, stdin);
        NSString *userReply = [[NSString alloc] initWithUTF8String:reply];
        NSLog(@"Choose your difficulty level\n easy\n medium\n hard\n ->");
        fgets(reply, 100, stdin);
        NSString *difficultyReply = [[NSString alloc] initWithUTF8String:reply];
        if ([difficultyReply isEqualToString:@"easy\n"]) {
            theDifficulty = easy;
            NSLog(@"ease");
        }
        else if ([difficultyReply isEqualToString:@"medium\n"]){
            theDifficulty = medium;
            NSLog(@"med");
        }
        else{
            theDifficulty = hard;
            NSLog(@"hard!!!!");
        }
        if ([userReply intValue] < 10) {
            return 0;
        }
        NSArray *boardArray = [boardGame createBoard:[userReply intValue] howHard:theDifficulty];
        NSLog(@"You've selected %lu board size",(unsigned long)[boardArray count]);
        while (true) {
            NSLog(@"input your roll ->");
            fgets(rollInput, 100, stdin);
            NSString *rollReply = [[NSString alloc] initWithUTF8String:rollInput];
            currentSquare += [rollReply intValue];
            if (currentSquare > [userReply intValue] * [userReply intValue]) {
                NSLog(@"You win Good Job!!!!");
                return 0;
            }
            else if (currentSquare < 0){
                currentSquare = 0;
            }
            Cell *cell4Index = [boardArray objectAtIndex:currentSquare];
            int random = arc4random() %9 + 1;
            if (cell4Index.cellType == snakeCellEnum) {
                NSLog(@"Oh no you landed on a snake! back %d", random);
                currentSquare -= random;
            }
            else if (cell4Index.cellType == ladderCellEnum){
                NSLog(@"Nice! You've landed on a ladder Up %d", random);
                currentSquare += random;
            }
            else{
                NSLog(@"Empty cell. Your Good.");
                //emptyCell do nothing
            }
            NSLog(@"you are currently at %d", currentSquare);
    }
}
    return 0;
}
