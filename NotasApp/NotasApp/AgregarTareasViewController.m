//
//  AgregarTareasViewController.m
//  NotasApp
//
//  Created by JHONATAN ACELAS AREVALO on 17/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "AgregarTareasViewController.h"
#import "Tarea.h"
#import "ListarTareasViewController.h"

@interface AgregarTareasViewController ()

@end

@implementation AgregarTareasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)inserta:(id)sender {
    
    
    Tarea *t = [[Tarea alloc]init];
    
    
    if ([t insertar:self.tituloTarea.text Descripcion:self.descripcionTarea.text]) {
        
        UIStoryboard *story= [UIApplication sharedApplication].delegate.window.rootViewController.storyboard;
        
        ListarTareasViewController *lista =[story instantiateViewControllerWithIdentifier:@"lista"];
        
        lista.modalTransitionStyle= UIModalTransitionStyleCoverVertical;
        
        
        [self presentViewController:lista animated:YES completion:nil];
    }
    
}
@end
