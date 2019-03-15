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
    startButton.backgroundColor = [UIColor grayColor];

    
    // Do any additional setup after loading the view, typically from a nib.
}
@end

