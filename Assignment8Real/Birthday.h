//
//  Birthday.h
//  Assignment8Real
//
//  Created by sli19 on 2/25/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#ifndef Birthday_h
#define Birthday_h
@interface Birthday<ObjectType> : NSObject

@property int numForArray;
@property NSMutableArray *arrayOfNums;

-(id)initWithNumber: (int)num;
-(int) numsReturned;

@end

#endif /* Birthday_h */
