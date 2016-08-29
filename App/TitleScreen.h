//
//  TitleScreen.h
//  App
//
//  Created by Jasper on 8/28/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GameScreen ;

@interface TitleScreen : UIViewController{
    
}

@property GameScreen* gameView ;

- (IBAction)playGameButton:(id)sender;
- (IBAction)optionsButton:(id)sender;
- (IBAction)statsButton:(id)sender;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil ;

@end
