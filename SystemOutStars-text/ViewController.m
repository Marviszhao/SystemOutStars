//
//  ViewController.m
//  SystemOutStars-text
//
//  Created by MARVIS on 16/4/28.
//  Copyright © 2016年 MARVIS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self printStarWithLineNum:7];
}

- (void)printStarWithLineNum:(NSUInteger)lines{
    if (lines % 2 == 0) {
        NSLog(@"not support even Num %lu",(unsigned long)lines);
        return;
    }
    NSMutableString *starString = [NSMutableString string];
    //画上半部分*号
    [self printUpStarWithString:starString lines:lines];
    //画下半部分*号
    [self printDownStarWithString:starString lines:lines];
    
    NSLog(@"\n----------------------\n%@----------------------\n",starString);
    
    
    
}
- (void)printUpStarWithString:(NSMutableString *)starString lines:(NSUInteger )lines{
    NSUInteger lineMaxStarCount = lines;
    NSInteger halfLines = (lines + 1)/2;
    for (NSInteger i = 1; i <= halfLines; i++) {
        NSUInteger leftBlankNum = halfLines - i;
        NSInteger rightBlankNum = lineMaxStarCount - leftBlankNum;
        NSMutableString *lineString = [NSMutableString string];
        for (NSUInteger j = 0; j <= lines; j++) {
            if (j <= leftBlankNum) {
                [lineString appendString:@" "];
            } else if (j <= rightBlankNum){
                [lineString appendString:@"*"];
            } else {
                [lineString appendString:@" "];
            }
        }
        [lineString appendString:@"\n"];
        [starString appendString:lineString];
    }
}

- (void)printDownStarWithString:(NSMutableString *)starString lines:(NSUInteger )lines{
    NSUInteger lineMaxStarCount = lines;
    NSInteger halfLines = (lines + 1)/2;
    for (NSInteger i = halfLines + 1; i <= lines; i++) {
        NSUInteger leftBlankNum = i - (lines + 1)/2;
        NSInteger rightBlankNum = lineMaxStarCount - leftBlankNum;
        NSMutableString *lineString = [NSMutableString string];
        for (NSUInteger j = 0; j <= lines; j++) {
            if (j <= leftBlankNum) {
                [lineString appendString:@" "];
            } else if (j <= rightBlankNum){
                [lineString appendString:@"*"];
            } else {
                [lineString appendString:@" "];
            }
        }
        [lineString appendString:@"\n"];
        [starString appendString:lineString];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
