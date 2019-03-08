//
//  ViewController.h
//  MemeOrTrumpGame
//
//  Created by Taehyun Cho on 3/7/19.
//  Copyright © 2019 Taehyun Cho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UIImageView *trumpImageIntro; //Implemented for random images
    IBOutlet UIImageView *fakeTrumpImageIntro;

}

@property (nonatomic, strong) IBOutlet UILabel *score;

@end

