//
//  AppController.h
//  App
//
//  Created by Jasper on 8/29/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppController : UIViewController

- (IBAction)titleScreenPlayButton:(id)sender;
- (IBAction)titleScreenOptionsButton:(id)sender;
- (IBAction)titleScreenStatsButton:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *titleScreen;
@property (strong, nonatomic) IBOutlet UIView *gameView;

@end
