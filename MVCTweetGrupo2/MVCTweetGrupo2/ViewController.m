//
//  ViewController.m
//  MVCTweetGrupo2
//
//  Created by JHONATAN ACELAS AREVALO on 9/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tweet = [[Tweet alloc]init];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)enviar:(id)sender {
    // Asginamos texto al atributo de la clase tweet
    self.tweet.bodyTweet= self.viewTweetBody.text;
    
    
    
    NSString *resultado = [[NSString alloc]initWithFormat:@"El tweet tiene %i", self.tweet.contarLargo ];
    
    self.label.text = resultado;
    
    
    // jhonatan_a94@hotmail.com
    
}

- (IBAction)NumeroCaracteres:(id)sender {
    
    NSLog(@"evento ejecutado");
    
    self.tweet.bodyTweet = self.viewTweetBody.text;
    
    NSString *resultado = [[NSString alloc]initWithFormat:@"%i",self.tweet.restantes];
    
    self.restantes.text = resultado;
    
    if (self.tweet.restantes<0) {
        self.restantes.textColor= [UIColor redColor];
    }else{
        self.restantes.textColor= [UIColor blackColor];
    }
    
    
}
@end
