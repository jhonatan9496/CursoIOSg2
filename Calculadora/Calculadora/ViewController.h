//
//  ViewController.h
//  Calculadora
//
//  Created by JHONATAN ACELAS AREVALO on 10/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Operar.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentoOperacion;

@property (strong, nonatomic) IBOutlet UITextField *numerotext1;
@property (strong, nonatomic) IBOutlet UITextField *numerotext2;

- (IBAction)calcular:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *resultadolabel;

// Instanciamos la clase operar 
@property (strong,nonatomic) Operar *op;


@end

