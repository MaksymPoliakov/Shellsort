//
//  main.m
//  Shellsort
//
//  Created by Maksym Poliakov on 07.11.16.
//  Copyright © 2016 Maksym Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableArray+Shellsort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray* array = [[NSMutableArray alloc] init];
        NSUInteger count = 1000;
        while (count--) {
            [array addObject: [NSNumber numberWithUnsignedInteger: arc4random() % 1000]];
        }

        [array shellSortWithKey: @"300"];
        
        [array swapObjectAtIndex:0 withObjectAtIndex:19];
    }
    return 0;
}
