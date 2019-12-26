//
//  Birthday.m
//  Assignment8Real
//
//  Created by sli19 on 2/25/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"Birthday.h"


@implementation Birthday: NSObject

-(id)initWithNumber: (int)num{
    self = [super init];
    if(self){
        self.numForArray = num;
        self.arrayOfNums = NULL;
    }
    return self;
}

-(int) numsReturned{
    BOOL found = FALSE;
    NSMutableArray *trialArray = [NSMutableArray array];

    for(int i = 0; i < self.numForArray; i++){
        int rando = arc4random_uniform(self.numForArray - 1);
        [trialArray addObject: @(rando)];
        if((int)[trialArray count] >= 2){
            for(int i = 0; i < (int)[trialArray count]-1; i++){
                for(int j = i+1; j < (int)[trialArray count]; j++){
                    if([trialArray objectAtIndex:i] == [trialArray objectAtIndex:j]){
                        found = TRUE;
                        NSLog(@"%@", trialArray);
                        return (int)[trialArray count];
                    }
                }
            }
        }
    }
    NSLog(@"No duplicates");
    
    return 0;
    
}




@end
