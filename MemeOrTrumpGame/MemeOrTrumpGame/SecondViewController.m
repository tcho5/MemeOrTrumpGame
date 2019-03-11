//
//  SecondViewController.m
//  MemeOrTrumpGame
//
//  Created by Taehyun Cho on 3/10/19.
//  Copyright © 2019 Taehyun Cho. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController{
    NSArray *imageList;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //imageList = @{};
    imageList = [NSArray arrayWithObjects: @"Trump1.jpg", @"Fake1.png", @"Trump2.jpg", @"Fake2.png", @"Trump3.jpeg", @"Fake3.png",@"Trump4.jpeg",@"Fake4.png", @"Trump5.png", @"Fake5.png",@"Trump6.png", @"Fake6.png", @"Fake7.png", nil];
    [self startGame];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)startGame {
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(handleTimer:) userInfo:nil repeats:YES];


//    [self changeImage:randomNumber];

    
}
- (void) handleTimer:(NSTimer *)timer {
    int randomNumber = rand() % 12;
    [self changeImage:randomNumber];
}
- (void)changeImage:(int)index {
    NSString *image = [imageList objectAtIndex: index];
    gameImage.image = [UIImage imageNamed:image];
    //gameImage.image = [UIImage imageNamed:@"Trump4.jpeg"];
    
}

@end
