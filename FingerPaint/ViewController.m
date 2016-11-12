//
//  ViewController.m
//  FingerPaint
//
//  Created by Matthew Mauro on 2016-11-11.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#import "DrawingView.h"
#import "ViewController.h"
#import "LineManager.h"

@interface ViewController ()
@property (weak, nonatomic) DrawingView *drawView;
@property CGContextRef cntx;
@property LineManager *lines;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    CGContextRef dVCont = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(dVCont, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(dVCont, 1.0);
    CGRect drawFrame = (self.view.frame);
    drawFrame.origin.y -= 70;
    
    LineManager *lines = [[LineManager alloc]init];
    self.lines = lines;
    DrawingView *draw = [[DrawingView alloc]initWithFrame:drawFrame];
    draw.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:draw];
    self.drawView = draw;
    self.cntx = dVCont;
    self.lines.delegate = self.drawView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    for(UITouch *myTouch in touches)
    {
        CGPoint touchStart = [myTouch previousLocationInView:self.view];
        CGPoint touch = [myTouch locationInView:self.view];
        
        [self.lines.points addObjectsFromArray:@[[NSValue valueWithCGPoint:touchStart], [NSValue valueWithCGPoint:touch]]];
        [self.lines drawLineWithContext:self.cntx];
    }
}


@end
