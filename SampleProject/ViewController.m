//
//  ViewController.m
//  SampleProject
//
//  Created by Chi nguyen Vo on 4/9/14.
//  Copyright (c) 2014 Chi nguyen Vo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIImage *image = [UIImage imageNamed:@"HongNi"];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    [self.view addSubview:imageView];
    imageView.frame = CGRectMake(50, 50, 100, 100);
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.alpha = 0;
    
    [UIView animateWithDuration:3 animations:^{
        imageView.alpha = 1;
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:2 animations:^{
            imageView.transform = CGAffineTransformMakeRotation(360/180*M_PI_2);
        }completion:^(BOOL finished) {
            [UIView animateWithDuration:2 animations:^{
                imageView.transform = CGAffineTransformMakeRotation(0/180*M_PI_2);
            }];
        }];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
