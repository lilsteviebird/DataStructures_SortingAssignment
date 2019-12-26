//
//  main.m
//  Assignment8Real
//
//  Created by sli19 on 1/13/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "Binary.h"
#import "QuickSort.h"
#import "Birthday.h"
#import "LinkedList.h"
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"Am I in this program?");
//       Test Resizing Array and Linked List

//        bool test = true;
//        int multiplier = 0;
//        int start = 1;
//        NSMutableArray *firstArray = [NSMutableArray arrayWithCapacity: start];
//
//
//        while(test == true ){
//            NSLog(@"What multiplier of space do you want your array to be? Type 1 to exit");
//            scanf("%i", &multiplier);
//            NSDate *begin=[NSDate date];
//
//            if(multiplier != 1){
//                firstArray = [NSMutableArray arrayWithCapacity: (start * multiplier)];
//                start = start * multiplier;
//                printf("\n Your current multiplier is this %i \n", start);
//                NSTimeInterval timeInterval = [begin timeIntervalSinceNow];
//                printf("\n LOOK AT ME RIGHT HERE TO RESIZE IN MILLISECONDS is %f \n",timeInterval * -1);
//
//            } else {
//                test = false;
//            }
//        }
//
//        test = true;
//        start = 0;
//        LinkedList *aList = [[LinkedList alloc] init];
//        while(test == true){
//            NSLog(@"What multiplier of space do you want your linkedList to be? Type 1 to exit");
//            scanf("%i", &multiplier);
//            start = start * multiplier;
//            NewNode *addNode = [[NewNode alloc] init];
//            NSDate *begin=[NSDate date];
//
//            if(multiplier != 1){
//                while([aList iSize] != start){
//                    [aList add: addNode];
//                }
//
//                NSTimeInterval timeInterval = [begin timeIntervalSinceNow];
//                printf("\n LOOK AT ME RIGHT HERE TO RESIZE IN MILLISECONDS is %f \n",timeInterval * -1);
//
//            } else {
//                test = false;
//            }
//        }
//


        
       
       
        
        
        
        
        // Test Binary
        
        
    

//        NSMutableArray *trialArray = [NSMutableArray array];
//
//        [trialArray addObject:@0];
//        [trialArray addObject:@1];
//        [trialArray addObject:@2];
//        [trialArray addObject:@3];
//        [trialArray addObject:@4];
//        [trialArray addObject:@5];
//        [trialArray addObject:@6];
//        [trialArray addObject:@7];
//
//        Binary *myBinary = [[Binary alloc] init];
//
//        [myBinary binarySearch: trialArray numberToFind:2 rightSide:7 leftSide:0];
        
        // Test QuickSort
        QuickSort *myQuickSort = [[QuickSort alloc] init];
        NSMutableArray *trialArray = [[NSMutableArray alloc] init];
        NSTimeInterval averageTime = 0;
        

        
        for(int p = 0; p < 10; p++){
            for(int i = 0; i < 100000; i++){
                int r = arc4random_uniform(100000);
                [trialArray addObject: @(r)];
            }
            NSDate *begin=[NSDate date];
            [myQuickSort quickSort:trialArray];
            NSTimeInterval timeInterval = [begin timeIntervalSinceNow];
            //                printf("\n LOOK AT ME RIGHT HERE TO RESIZE IN MILLISECONDS is %f \n",timeInterval * -1);
            timeInterval = timeInterval * -1;
            averageTime = averageTime + timeInterval;
            [trialArray removeAllObjects];
        }
        averageTime = averageTime / 10;
        NSLog(@"Average Time %f", averageTime);
        
        
// Quick Sort takes a pivot and sets all numbers that are smaller than that pivot to one side, and all the ones that are larger to the other. This makes two smaller arrays, which will then be quick sorted themselves into another set of smaller arrays. This process is repeated until the arrays are each one index long and are sorted and in my code, come back together to form one big array that has been sorted from least to greatest. 
        
//        Test Birthday
//        int testNumber = 100;
//        Birthday *myBirthday =[[Birthday alloc] initWithNumber:100];
//        int average = 0;
//        int finalized = (int)sqrt((testNumber * 3.14159)/2);
//        for(int i = 0; i < 100; i++){
//            average = average + [myBirthday numsReturned];
//        }
//
//        average = average / 100;
//        NSLog(@"It was predicted that it should have taken this many numbers to find a duplicate: %i, in actuality it took this many numbers: %i", finalized, average);
//
//
    }
    return 0;
}
