//
//  NSMutableArray+Shellsort.m
//  Shellsort
//
//  Created by Maksym Poliakov on 07.11.16.
//  Copyright © 2016 Maksym Poliakov. All rights reserved.
//

#import "NSMutableArray+Shellsort.h"

@implementation NSMutableArray (Shellsort)

-(void)swapObjectAtIndex:(NSUInteger)firstIndex withObjectAtIndex:(NSUInteger)secondIndex; {
    NSRange range = NSMakeRange(0, [self count]);
    if (NSLocationInRange(firstIndex, range) && NSLocationInRange(secondIndex, range)) {
        id temp = self[firstIndex];
        self[firstIndex] = self[secondIndex];
        self[secondIndex] = temp;
    } else {
        NSLog(@"index beyond bounds");
    }
}

-(void)shellSortWithKey:(NSString *)key; {
    NSInteger d = [key integerValue];
    while (d > 0) {
        for (NSInteger i = 0; i < [self count]; i++) {
            NSInteger j = i;
            while ((j >= d) && ([self[j] floatValue] < [self[j - d] floatValue])) {
                [self swapObjectAtIndex:j withObjectAtIndex:j - d];
                j = j - d;
            }
        }
        d = d / 2;
    }
}

@end
