//
//  TurretProperties.h
//  App
//
//  Created by Jasper on 11/8/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TurretProperties : NSObject{

    NSString *turretImageName ;
    NSString *typeOfTurret ;
    
    
}

@property int costPrice ;
@property int sellPrice ;
@property int projectileSpeed ;
@property int fireRate ;
@property int numberOfShotsPerFire ;
@end
