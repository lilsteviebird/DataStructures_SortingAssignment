//
//  Binary.m
//  Assignment8Real
//
//  Created by sli19 on 1/13/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Binary.h"
#import <QuartzCore/QuartzCore.h>

@implementation Binary: NSObject


-(id) init {
    self = [super init];
    if(self){
        self.arr = NULL;
        self.foundIt = FALSE;
    }
    return self;
}


-(void) binarySearch: (NSMutableArray*) sortThisArr numberToFind: (int) here rightSide: (int) right leftSide: (int) left{
    NSDate *begin=[NSDate date];
    int mid = (right + left)/2;
    if(here == [[sortThisArr objectAtIndex:mid] intValue]){
        NSLog(@"Found it at index %i", mid);
        NSTimeInterval timeInterval = [begin timeIntervalSinceNow];
        printf("\n LOOK AT ME RIGHT HERE TO BINARY SEARCH IN MILLISECONDS is %f \n",timeInterval * -1);
        self.foundIt = TRUE;
    }
    else if(here < [[sortThisArr objectAtIndex:mid] intValue]){
        return[self binarySearch:sortThisArr numberToFind:here rightSide: mid - 1 leftSide: left];
    }
    else if(here > [[sortThisArr objectAtIndex:mid] intValue]){
        return[self binarySearch:sortThisArr numberToFind:here rightSide: right leftSide: mid + 1];
    } else{
        self.foundIt = FALSE;
        NSLog(@"Yikes didn't work");
    }
}

@end
