
#import "AppController.h"

@implementation AppController

//Title Screen
- (IBAction)titleScreenPlayGameButton:(id)sender{
    
    [self.view addSubview:[[UIViewController alloc] initWithNibName:@"GameScreen" bundle:nil]] ;
}

- (IBAction)titleScreenOptiosnButton:(id)sender {
    
}

- (IBAction)titleScreenStatsButton:(id)sender {
    
}





- (void)viewDidLoad {
    NSLog(@"Loaded") ;
    //[self.view addSubview:[[[NSBundle mainBundle] loadNibNamed:@"TitleScreen" owner:self options:nil] objectAtIndex:0]] ;
    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning {[super didReceiveMemoryWarning];}
@end
