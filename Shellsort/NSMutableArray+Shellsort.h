//
//  NSMutableArray+Shellsort.h
//  Shellsort
//
//  Created by Maksym Poliakov on 07.11.16.
//  Copyright © 2016 Maksym Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Shellsort)

-(void)shellSortWithKey:(NSString *)key;
-(void)swapObjectAtIndex:(NSUInteger)firstIndex withObjectAtIndex:(NSUInteger)secondIndex;

@end
