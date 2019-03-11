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
  
@synthesize score;


- (void)viewDidLoad {
    [super viewDidLoad];
    trumpImageIntro.image = [UIImage imageNamed:@"Trump1.jpg"];
    fakeTrumpImageIntro.image = [UIImage imageNamed:@"Fake5.png"];

    
    // Do any additional setup after loading the view, typically from a nib.
}
@end

