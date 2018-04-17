//
//  ViewController.m
//  etaN0W-objc
//
//  Created by Rohit Navalgund on 12/03/18.
//  Copyright © 2018 Rohit Navalgund. All rights reserved.
//

#import "ViewController.h"
#import "bluetoothd/exploit.m"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UIImageView *nigga_image;
@property (weak, nonatomic) IBOutlet UILabel *final_lbl;

@end

NSString *str1 = @"Hey! Please go through the following Alerts. They are important. At the end, we will run the PoC.";
NSString *str2 = @"Ok, Fuck @KernelTeamiOS. He is fake and has been proven fake. Please do not follow this Douché racist. iOS 11.2.x JB will be released eventually. Please have patience";
NSString *str3 = @"Follow @s1guza, @stek29, @tihmstar @rnavalgund_ @notdanieldev and @id0ts to be updated with JB Status. Subscribe to FCE365";
NSString *str4 = @"Now, we shall execute the bluetoothd PoC. Press OK to continue";
NSString *str5 = @"Finished";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _nigga_image.hidden = true;
    _final_lbl.hidden = true;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button_Pressed:(id)sender {
    

    UIAlertController *alert1 = [UIAlertController alertControllerWithTitle:@"Please READ." message:str1 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *alert1_OK = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        
        UIAlertController *alert2 = [UIAlertController alertControllerWithTitle:@"Here we go." message:str2 preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *alert2_OK = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
            
            UIAlertController *alert3 = [UIAlertController alertControllerWithTitle:@"Lastly." message:str3 preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *alert3_OK = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
               
                UIAlertController *alert4 = [UIAlertController alertControllerWithTitle:@"Lastly." message:str4 preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction *alert4_OK = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
                    
                    trigger();
                    
                    _nigga_image.hidden = false;
                    _final_lbl.hidden = false;
                    
                    
                }];
                
                UIAlertAction *alert4_Cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
                
                [alert4 addAction:alert4_Cancel];
                [alert4 addAction:alert4_OK];
                [self presentViewController:alert4 animated:YES completion:nil];
            }];
            
            [alert3 addAction:alert3_OK];
            [self presentViewController:alert3 animated:YES completion:nil];
        }];
        
        [alert2 addAction:alert2_OK];
        
        [self presentViewController:alert2 animated:YES completion:nil];
        
    }];
    UIAlertAction *alert1_Cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alert1 addAction:alert1_OK];
    [alert1 addAction:alert1_Cancel];
    [self presentViewController:alert1 animated:YES completion:nil];
}

@end
