//
//  QuickSort.m
//  Assignment8Real
//
//  Created by sli19 on 1/17/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuickSort.h"
@implementation QuickSort: NSObject

-(id) init{
    self = [super init];
    return self;
}

- (NSMutableArray*) quickSort:(NSMutableArray*)unsortedArray {
    
  
    int count = (int)[unsortedArray count];
    if (count <= 1) {
        return unsortedArray;
    }
    
    int pivot = [[unsortedArray objectAtIndex: (count/2)] intValue];
    
    NSMutableArray *smallerThanArray = [NSMutableArray array];
    NSMutableArray *largerThanArray = [NSMutableArray array];
    NSMutableArray *duplicateArray = [NSMutableArray array];
    [duplicateArray addObject: @(pivot)];
    
    for (int i = 0; i < count; i++) {
        int num = [[unsortedArray objectAtIndex:i] intValue];
        if (num < pivot) {
            [smallerThanArray addObject: @(num)];
        } else if (num > pivot) {
            [largerThanArray addObject: @(num)];
        } else if (i != (count/2) && pivot == num) {
            [duplicateArray addObject: @(num)];
        }
    }
    
    NSMutableArray *returnArray = [NSMutableArray array];
    [returnArray addObjectsFromArray: [self quickSort: smallerThanArray]];
    [returnArray addObjectsFromArray: duplicateArray];
    [returnArray addObjectsFromArray: [self quickSort: largerThanArray]];
    
    return returnArray;
}




@end
