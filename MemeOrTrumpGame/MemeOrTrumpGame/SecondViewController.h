//
//  SecondViewController.h
//  MemeOrTrumpGame
//
//  Created by Taehyun Cho on 3/10/19.
//  Copyright © 2019 Taehyun Cho. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController{
    IBOutlet UIImageView *gameImage;
//    IBOutlet UIButton *realButton;
//    IBOutlet UIButton *fakeButton;
//    IBOutlet UILabel *score;
}

@property (nonatomic, strong) IBOutlet UILabel *score;
//@property (nonatomic, retain) IBOutlet UIButton *realButton;
//@property (nonatomic, retain) IBOutlet UIButton *fakeButton;

-(void)onButtonClick:(UIButton*)sender;
-(IBAction)realButtonPressed;
-(IBAction)fakeButtonPressed;
-(IBAction)restart;

@end

NS_ASSUME_NONNULL_END
