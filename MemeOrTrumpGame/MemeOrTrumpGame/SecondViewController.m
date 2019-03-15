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
    NSString *imageName;
    NSString *buttonPressed;
    NSInteger *scoreVal;
    
}
@synthesize score;


- (void)viewDidLoad {
    realButton.layer.borderWidth =2.0f;
    realButton.backgroundColor = [UIColor grayColor];

    fakeButton.layer.borderWidth =2.0f;
    fakeButton.backgroundColor = [UIColor grayColor];

    restartButton.layer.borderWidth = 2.0f;
    restartButton.backgroundColor = [UIColor grayColor];

    mainMenuButton.layer.borderWidth = 2.0f;
    mainMenuButton.backgroundColor = [UIColor grayColor];

    gameImage.layer.borderWidth = 2.0f;
    
    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor blackColor];
    // Do any additional setup after loading the view.
    //imageList = @{};
    imageList = [NSArray arrayWithObjects: @"Trump1.jpg", @"Fake1.png", @"Trump2.jpg", @"Fake2.png", @"Trump3.jpeg", @"Fake3.png",@"Trump4.jpeg",@"Fake4.png", @"Trump5.png", @"Fake5.png",@"Trump6.png", @"Fake6.png", @"Fake7.png", nil];
    buttonPressed = @"none";
    //score.text = buttonPressed;
    scoreVal = 0;
    score.text = @"Score: 0";
    [self startGame];
}

- (void)startGame {
    int randomNumber = rand() % 12;
    [self changeImage:randomNumber];
//    while(![score.text isEqualToString:@"GAME OVER"]){
//        int randomNumber = rand() % 12;
//        [self changeImage:randomNumber];
    [NSTimer scheduledTimerWithTimeInterval:10.0f target:self selector:@selector(handleTimer:) userInfo:nil repeats:NO];
//    }



//    [self changeImage:randomNumber];

    
}
- (void) handleTimer:(NSTimer *)timer {
    //score.text = buttonPressed;
    NSString *firstLetterUser = [buttonPressed substringToIndex:1];
    NSString *firstLeterImage = [imageName substringToIndex:1];
    if([firstLetterUser isEqualToString:firstLeterImage]){
        scoreVal += 1;
        score.text = [NSString stringWithFormat:@"Score: %ld", scoreVal];
        buttonPressed = @"none";
        [self startGame];
    }else{
        score.text = @"GAMEOVER";
        [timer invalidate];
        //[self.timer invalidate];
    }
    

}
- (void)changeImage:(int)index {
    imageName = [imageList objectAtIndex: index];
    gameImage.image = [UIImage imageNamed:imageName];
    
}

-(IBAction)realButtonPressed{
    buttonPressed = @"Trump";
    //score.text = @"ReAl";
}

-(IBAction)fakeButtonPressed{
    buttonPressed = @"Fake";
    //score.text = @"FaKe";

}
-(IBAction)restart{
    scoreVal = 0;
    score.text = @"Score: ";
    buttonPressed = @"none";
    [self startGame];
}

@end
