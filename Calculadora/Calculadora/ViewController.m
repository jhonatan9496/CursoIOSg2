//
//  ViewController.m
//  Calculadora
//
//  Created by JHONATAN ACELAS AREVALO on 10/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.op= [[Operar alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calcular:(id)sender {
    
    NSLog(@"La operacion seleccionada es : %i",self.segmentoOperacion.selectedSegmentIndex);
    
    // Capturo valores interfaz grafica
    int tipoOperacion =self.segmentoOperacion.selectedSegmentIndex;
    
    int num1 = [self.numerotext1.text integerValue];
    int num2 = [self.numerotext2.text  integerValue];
    
    int resultado =0;
    
    // envio valores al logica
   //  y capturo el dato que retorna
    if (tipoOperacion==0) {
       resultado = [self.op suma:num1 Numero2:num2];
    }
    
    NSString *r  = [[NSString alloc]initWithFormat:@"El resultado es : %i",resultado ];
    
    // Asigno el resultado a la interfaz Grafica 
    self.resultadolabel.text =r ;
    
    
    
}
@end
