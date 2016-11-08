//
//  AppController.m
//  App
//
//  Created by Jasper on 8/29/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import "AppController.h"
#import "TurretProperties.h"
#import <Foundation/Foundation.h>



@implementation AppController

- (void)viewDidLoad {
    [super viewDidLoad];
    widthOfTurret = 100 ;
    numberOfTurrets = 5 ;
    maxTurretLevel = 10 ;
    numberOfTurretTypes = 5 ;
    
    [self updateCredits:5 level:0 score:0 withAdd:false] ;
    [self createProperties] ;
}

- (void)createProperties{   //create the properties for each different level turret
    TurretProperties *level ;
    for(int i = 0 ; i < maxTurretLevel ; i++){
        [basicTurret addObject:[TurretProperties new]] ;
        level = [basicTurret objectAtIndex:i] ;
        level.costPrice = pow(5,i+1) ;
        level.sellPrice = pow(5, i+1) - pow(5, i) ;
    }
    level = [basicTurret objectAtIndex:0] ;
    level.sellPrice = 0 ;
}

- (void)updateCredits:(int)dummy level:(int)dummy1 score:(int)dummy2 withAdd:(BOOL)add{
    if(add){ creditCount += dummy ; levelCount += dummy1 ; score += dummy2 ; }
    else{ creditCount = dummy ; levelCount = dummy1 ; score = dummy2 ; }
    self.creditsOutlet.text = [NSString stringWithFormat:@"Credits: %i",creditCount] ;
    self.levelOutlet.text = [NSString stringWithFormat:@"Level: %i",levelCount] ;
    self.scoreOutlet.text = [NSString stringWithFormat:@"Score: %i",score] ;
}

- (void)updateTurretText:(NSMutableArray*)list{
    for(int i = 0 ; i < 5 ; i += 1){
        
        if([list objectAtIndex:i]){
            
        }
        else{
            
        }
    }
}

- (void)turretsButton:(id)sender forEvent:(UIEvent *)event{
    NSSet *touches = [event touchesForView:sender];
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:sender];
    //the turret number (0-4)
    int turretNumber = floor(point.y/(self.view.bounds.size.height/numberOfTurrets)) ;
    NSLog(@"%i",turretNumber) ;
    
    UIView *popUpView= [[UIView alloc] initWithFrame:CGRectMake(120, 20, 527, 335)] ;
    [popUpView setTintColor:[UIColor greenColor]] ;
    for(int i = 0 ; i < numberOfTurretTypes ; i += 1 ) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"TurretTypes"]] ;
        imageView.frame = CGRectMake(0, i*(self.view.bounds.size.height/numberOfTurrets), widthOfTurret, (self.view.bounds.size.height/numberOfTurrets)) ;
        [turrets addSubview:imageView] ;
    }
    UIButton *buyTurret
    UIButton *sellTurret
    UIButton *upgradeTurret
    }


- (IBAction)titleScreenPlayButton:(id)sender{   //laods everything in gameView Screen
    [self.view addSubview:self.gameView] ;
    
    UIView *turrets = [[UIView alloc] initWithFrame:CGRectMake(0, 0, widthOfTurret, self.view.bounds.size.height)] ;
    for(int i = 0 ; i < numberOfTurrets ; i += 1){
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"StarterTurret"]] ;
        imageView.frame = CGRectMake(0, i*(self.view.bounds.size.height/numberOfTurrets), widthOfTurret, (self.view.bounds.size.height/numberOfTurrets)) ;
        [turrets addSubview:imageView] ;
    }
    UIButton *turretsButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, widthOfTurret, self.view.bounds.size.height)] ;
    [turretsButton addTarget:self action:@selector(turretsButton:forEvent:) forControlEvents:UIControlEventTouchUpInside] ;
    
    [self.gameView addSubview:turrets] ;
    [self.gameView addSubview:turretsButton] ;
    [self.gameView bringSubviewToFront:turretsButton] ;
}

- (IBAction)titleScreenOptionsButton:(id)sender {
}

- (IBAction)titleScreenStatsButton:(id)sender {
}


@end
