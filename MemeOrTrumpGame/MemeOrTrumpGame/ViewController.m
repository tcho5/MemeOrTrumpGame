//
//  ViewController.m
//  MemeOrTrumpGame
//
//  Created by Taehyun Cho on 3/7/19.
//  Copyright © 2019 Taehyun Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
  

- (void)viewDidLoad {
    [super viewDidLoad];
    trumpImageIntro.image = [UIImage imageNamed:@"Trump1.jpg"];
    fakeTrumpImageIntro.image = [UIImage imageNamed:@"Fake5.png"];
    startButton.layer.borderWidth = 2.0f;
    startButton.layer.borderColor = [UIColor colorWithRed:0x21 / 255.0 green:0xce / 255.0 blue:0x99 / 255.0 alpha:1.0].CGColor;  
    startButton.backgroundColor = [UIColor grayColor];

    
    // Do any additional setup after loading the view, typically from a nib.
}
@end

