//
//  Binary.h
//  Assignment8Real
//
//  Created by sli19 on 1/13/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#ifndef Binary_h
#define Binary_h
@interface Binary<ObjectType> : NSObject


@property NSMutableArray *arr;
@property BOOL foundIt;

//-(id) initWithArray: (NSMutableArray*) arrGiven;

-(id) init;
-(void) binarySearch: (NSMutableArray*) sortThisArr numberToFind: (int) here rightSide: (int) right leftSide: (int) left;

@end


#endif /* Binary_h */
