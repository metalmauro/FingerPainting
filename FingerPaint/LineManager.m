//
//  LineManager.m
//  FingerPaint
//
//  Created by Matthew Mauro on 2016-11-11.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "LineManager.h"

@implementation LineManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _points = [NSMutableArray new];
    }
    return self;
}

-(void)drawLineWithContext:(CGContextRef)context
{
    [self.delegate drawRect:[self.delegate showFrame] withContext:context andPoints:self.points];
 //   [self.delegate drawRect:[self.delegate showFrame] withContext:context andPoints:drawPoints];
    
}

@end
