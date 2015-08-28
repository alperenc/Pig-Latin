//
//  NSString+PigLatin.m
//  Pig Latin
//
//  Created by Alp Eren Can on 28/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {
    NSArray *tokenizedString = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSMutableArray *pigLatinArray = [NSMutableArray array];
    
    for (NSString *token in tokenizedString) {
        int index = 0;
        for (int i = 0; i < token.length; i ++) {
            if ([[NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"] characterIsMember:[token characterAtIndex:i]]) {
                index = i;
                break;
            }
        }
        
        [pigLatinArray addObject:[NSString stringWithFormat:@"%@%@ay ", [token substringWithRange:NSMakeRange(index, token.length-index)], [token substringWithRange:NSMakeRange(0, index)]]];
    }
    
    NSString *pigLatinString = @"";
    
    for (NSString *word in pigLatinArray) {
        pigLatinString = [pigLatinString stringByAppendingString:word];
    }
    
    return pigLatinString;
}

@end
