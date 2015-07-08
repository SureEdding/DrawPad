//
//  DrawPadView.h
//  DrawPad
//
//  Created by mac on 7/8/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface DrawPadView : UIView{
    NSMutableArray *points;
    NSArray *point_all;
    CGContextRef context;
    UIColor *paint_color;
    CGFloat paint_width;
}
@property (strong ,nonatomic) NSMutableArray *points;
@property (strong ,nonatomic) NSArray *points_all;
@property (strong, nonatomic) UIColor *paint_color;
@property (assign, nonatomic) CGFloat paint_width;

@end
