//
//  AppController.h
//  App
//
//  Created by Jasper on 8/29/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TurretProperties ;

@interface AppController : UIViewController{
//Constants
    int numberOfTurrets ;
    int numberOfTurretTypes ;
    int widthOfTurret ;
    int creditCount ;
    int score ;
    int levelCount ;
    double speed ;
    int maxTurretLevel ;
    
    NSMutableArray *basicTurret ;   //store all stats for lvl 0-9
    NSMutableArray *sniperTurret ;
    NSMutableArray *machineGunTurret ;
    NSMutableArray *turretTypeImages ;
}


//Properties:
@property NSMutableArray *turrentArray ;

@property NSMutableArray *userProjectileArray ;

@property NSMutableArray *systemProjectileArray ;

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
