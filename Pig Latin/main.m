//
//  main.m
//  Pig Latin
//
//  Created by Alp Eren Can on 28/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *normal = @"My name is Alp and this is a test";
        NSLog(@"%@", [normal stringByPigLatinization]);
    }
    return 0;
}
