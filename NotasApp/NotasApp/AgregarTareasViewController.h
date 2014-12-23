//
//  AgregarTareasViewController.h
//  NotasApp
//
//  Created by JHONATAN ACELAS AREVALO on 17/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AgregarTareasViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *tituloTarea;

@property (strong, nonatomic) IBOutlet UITextView *descripcionTarea;

@property (strong, nonatomic) IBOutlet UIButton *estiloBoton;


- (IBAction)inserta:(id)sender;

@end
