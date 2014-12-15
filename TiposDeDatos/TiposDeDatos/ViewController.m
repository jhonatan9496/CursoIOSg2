//
//  ViewController.m
//  TiposDeDatos
//
//  Created by JHONATAN ACELAS AREVALO on 10/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


int entero;

char letra;

float decimal;

double  extenso;

bool booleano;

long int muyLargo;

long long int muyMuyLargo;




- (void)viewDidLoad {
    [super viewDidLoad];
    
    entero = 4 ;
    
    NSLog(@"  entero %i ", entero);
    
    letra = 'a';
    
    decimal = 34.434;
    
    extenso = 4325252345;
    
    
    booleano = YES;
    
    booleano  = 0;
    
    
    NSString *ejemplo1=@"Hola";
    
    
    NSString *ejemplo2= [[NSString alloc]initWithFormat:@"HolaMundo %i y %i",entero,4];
    
    
    NSString *ejemplo= [[NSString alloc]init];
    
    [self Metodo1];
    
    entero=[self Metodo2];
    
    NSLog(@"Entero Modificado %i ",entero);
    
    [self Metodo3:@"Parametro"];
    
    [self Metodo4:5 Parametro2:9];
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) Metodo1{
    // logica
    NSLog(@"Se ha ejecutado el metodo 1");
}


-(int) Metodo2{
    //Logica 
    return 7;
}

-(void) Metodo3 : (NSString *)var{
    
    NSLog(@"La variable es : %@ ",var);
}

-(void) Metodo4 : (int)numero1  Parametro2 : (int)numero2{
    NSLog(@"La suma es : %i" , numero1+numero2);
}

@end
