//
//  LinkedList.h
//  Assignment8Real
//
//  Created by sli19 on 1/17/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#ifndef LinkedList_h
#define LinkedList_h
#import "NewNode.h"

@interface LinkedList<ObjectType> : NSObject

@property NewNode *head;
@property NewNode *temp;

-(int) iSize;
-(void) add: (NewNode*) nodeAdded;

@end
#endif /* LinkedList_h */
