//
//  ViewController.m
//  DrawPad
//
//  Created by mac on 7/7/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "ViewController.h"
#import "DrawPadView.h"
#import "DrawStatusChangeView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet DrawStatusChangeView *drawStatusChangeController;
@property (strong, nonatomic) DrawPadView *drawPad;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _drawPad = [[DrawPadView alloc] initWithFrame:self.view.bounds];
    
    [self.view insertSubview:_drawPad belowSubview:_drawStatusChangeController];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
