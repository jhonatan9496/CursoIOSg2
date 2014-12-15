//
//  ViewController.h
//  MVCTweetGrupo2
//
//  Created by JHONATAN ACELAS AREVALO on 9/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"

@interface ViewController : UIViewController
//Vista
@property (weak, nonatomic) IBOutlet UITextField *viewTweetBody;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *restantes;

//Variables Controlador
@property (strong,nonatomic)  Tweet *tweet;



// Eventos 
- (IBAction)enviar:(id)sender;

- (IBAction)NumeroCaracteres:(id)sender;

@end

