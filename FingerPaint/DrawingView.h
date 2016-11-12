//
//  DrawingView.h
//  FingerPaint
//
//  Created by Matthew Mauro on 2016-11-11.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#import "LineManager.h"
#import <UIKit/UIKit.h>

@interface DrawingView : UIView <Artist>

-(CGRect)showFrame;
- (void)drawRect:(CGRect)rect withContext:(CGContextRef)context andPoints:(NSArray*)array;

@end
