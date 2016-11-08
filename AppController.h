//
//  AppController.h
//  App
//
//  Created by Jasper on 8/29/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppController : UIViewController{
//Constants
    int numberOfTurrets ;
    int widthOfTurret ;
    
    int creditCount ;
    int score ;
    int levelCount ;
    double speed ;
}

//Properties:
@property NSMutableArray *turrentArray ;
/*Format for turretArray:
//using class "TurretProperties", create 5 subarrays to hold that object
Properties:
[0] turretImageName
[1] object of turret types class, stores speed and image for type, in both locations is cost and imageName
[2] turret position
[3] turret cost and sell price
[4]
 */

@property NSMutableArray *userProjectileArray ;
/*Format using class "projectileProperties", object are objects of that class
Properties:
 [0] starting point,
 [1] direction numbers
 [

 
*/
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
