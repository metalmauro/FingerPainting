//
//  DrawingView.m
//  FingerPaint
//
//  Created by Matthew Mauro on 2016-11-11.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView

-(CGRect)showFrame
{
    return self.frame;
}

- (void)drawRect:(CGRect)rect withContext:(CGContextRef)context andPoints:(NSArray*)array
{
    for(int i = 1; i<[array count]; i++){
   // for (NSValue* value in array) {
        NSValue *pointStart = [array objectAtIndex:i-1];
        CGPoint ptS = [pointStart CGPointValue];
        NSValue *pointEnd = [array objectAtIndex:i];
        CGPoint pt = [pointEnd CGPointValue];
        
        CGContextMoveToPoint(context, ptS.x, ptS.y);
        CGContextAddLineToPoint(context, pt.x, pt.y);
        CGContextDrawPath(context, kCGPathStroke);
        NSLog(@"%f %f", ptS.x, ptS.y);
        NSLog(@"%f %f", pt.x, pt.y);
    }
}

@end
