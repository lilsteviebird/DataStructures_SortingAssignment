//
//  LinkedList.m
//  Assignment8Real
//
//  Created by sli19 on 1/17/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
@implementation LinkedList: NSObject
-(id) init {
    self = [super init];
    if(self){
        self.head = NULL;
        self.temp = NULL;
    }
    return self;
}

-(void) add: (NewNode*) nodeAdded{
    if(self.head == NULL){
        self.head = nodeAdded;
    }else{
        self.temp = self.head;
        while(self.temp.next != NULL){
            self.temp = self.temp.next;
        }
        self.temp.next = nodeAdded;
    }
}

-(int) iSize{
    int size = 0;
    self.temp = self.head;
    while(self.temp != NULL){
        size++;
        self.temp = self.temp.next;
    }
    NSLog(@"Your list is %i items long", size);
    return size;
}



@end

