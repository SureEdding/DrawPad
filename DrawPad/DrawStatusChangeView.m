//
//  DrawStatusChangeView.m
//  DrawPad
//
//  Created by mac on 7/8/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "DrawStatusChangeView.h"

@interface DrawStatusChangeView()
@property (strong, nonatomic) IBOutlet UISlider *widthSlider;
@property (strong, nonatomic) IBOutlet UISlider *blueSlider;
@property (strong, nonatomic) IBOutlet UISlider *greenSlider;
@property (strong, nonatomic) IBOutlet UISlider *redSlider;

@end

@implementation DrawStatusChangeView


- (IBAction)widthDidChanged:(UISlider *)sender {
}
- (IBAction)colorDidChanged:(UISlider *)sender {
}

@end
