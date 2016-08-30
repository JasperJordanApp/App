//
//  AppController.h
//  App
//
//  Created by Jasper on 8/29/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppController : UIViewController{
    int creditCount ;
    int score ;
    int levelCount ;
    double speed ;
}

//Properties:
@property NSMutableArray *turrentArray ;
@property NSMutableArray *userProjectileArray ;
@property NSMutableArray *systemProjectileArray ;



//Game Screen:
- (IBAction)turretZeroButton:(id)sender;
- (IBAction)turrentOneButton:(id)sender;
- (IBAction)turrentTwoButton:(id)sender;
- (IBAction)turrentThreeButton:(id)sender;
- (IBAction)turrentFourButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *creditsOutlet;
@property (weak, nonatomic) IBOutlet UILabel *levelOutlet;
@property (weak, nonatomic) IBOutlet UILabel *scoreOutlet;



//Title Screen:
- (IBAction)titleScreenPlayButton:(id)sender;
- (IBAction)titleScreenOptionsButton:(id)sender;
- (IBAction)titleScreenStatsButton:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *titleScreen;
@property (strong, nonatomic) IBOutlet UIView *gameView;

@end
