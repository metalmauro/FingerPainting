//
//  LineManager.h
//  FingerPaint
//
//  Created by Matthew Mauro on 2016-11-11.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@class DrawingView;

@protocol Artist <NSObject>
-(CGRect)showFrame;
- (void)drawRect:(CGRect)rect withContext:(CGContextRef)context andPoints:(NSArray*)dict;
@end

@interface LineManager : NSObject

@property id<Artist> delegate;
@property NSMutableArray *points;

-(void)drawLineWithContext:(CGContextRef)context;

@end
