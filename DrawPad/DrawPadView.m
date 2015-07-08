//
//  DrawPadView.m
//  DrawPad
//
//  Created by mac on 7/8/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "DrawPadView.h"
#import "DrawStatusChangeView.h"

@implementation DrawPadView
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _paint_color = [UIColor blackColor];
        _paint_width = 5.0;
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}
- (void)drawRect:(CGRect)rect
{
    if (!_points_all || !_points || [_points count] < 2) {
        _points_all = [[NSArray alloc] init];
        _points = [[NSMutableArray alloc] init];
        return;
    }
    context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, _paint_width);
    
    CGContextSetStrokeColorWithColor(context, [_paint_color CGColor]);
    
    //画之前的线
    for (NSArray *array in _points_all){
        [self drawLineWithArray:array];
    }
    //画现在的线
    [self drawLineWithArray:_points];
    
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    _points = [[NSMutableArray alloc] init];
    CGPoint touchPoint = [[touches anyObject] locationInView:self];
    [_points addObject:[NSValue valueWithCGPoint:touchPoint]];
}
- (void)drawLineWithArray:(NSArray *)array
{
    CGPoint beforePoint = [[array objectAtIndex:0] CGPointValue];
    CGContextMoveToPoint(context, beforePoint.x, beforePoint.y);
    for (UInt64 i = 1; i < [array count]; i++) {
        CGPoint nowPoint = [[array objectAtIndex:i] CGPointValue];
        CGContextAddLineToPoint(context, nowPoint.x, nowPoint.y);
    }
    CGContextStrokePath(context);
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_points addObject:[NSValue valueWithCGPoint:[[touches anyObject] locationInView:self]]];
    [self setNeedsDisplay];
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_points addObject:[NSValue valueWithCGPoint:[[touches anyObject] locationInView:self]]];
    NSMutableArray *tempArray = [_points_all mutableCopy];
    [tempArray addObject:_points];
    _points_all = tempArray;
}

@end
