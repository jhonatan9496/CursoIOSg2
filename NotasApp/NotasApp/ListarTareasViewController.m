//
//  ListarTareasViewController.m
//  NotasApp
//
//  Created by JHONATAN ACELAS AREVALO on 17/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "ListarTareasViewController.h"
#import "CadaTareaTableViewCell.h"
#import "Tarea.h"

@interface ListarTareasViewController ()

@end

@implementation ListarTareasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Tarea *t = [[Tarea alloc]init];
    
    self.listaTareas = [t listar];
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



//------------------------------------------------------------------
//-----------------Numero de secciones en la table -----------------
//------------------------------------------------------------------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

//------------------------------------------------------------------
//-----------------Numero de celdas    en la table -----------------
//------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.listaTareas count] ;
}



//------------------------------------------------------------------
//-----------------Crea cada celda y le asigna un contenido --------
//------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CadaTareaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cadaTarea"];
    
    NSDictionary *tmp = [self.listaTareas objectAtIndex:indexPath.row];
    
    cell.tituloTarea.text = [tmp objectForKey:@"tituloNota"];
    cell.descripcion.text = [tmp objectForKey:@"descripcionNota"];
    
    cell.estadoBoton.hidden=YES;
    
    [cell.estadoBoton addTarget:self action:@selector(recargarTabla) forControlEvents:UIControlEventTouchUpInside];
    
    UISwipeGestureRecognizer *gestoIzquierda = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideCell:)] ;
    
    [gestoIzquierda setDirection:UISwipeGestureRecognizerDirectionLeft];
    
    [cell addGestureRecognizer:gestoIzquierda];
    
    UISwipeGestureRecognizer *pressGestureRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideCell:)] ;
    [pressGestureRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [cell addGestureRecognizer:pressGestureRight];
    
    
        return cell;
}

-(void)recargarTabla{
    Tarea *t = [[Tarea alloc]init];
    
    self.listaTareas = [t listar];
    
    [self.tableView reloadData];
}

-(void) slideCell :(UISwipeGestureRecognizer *)gesture{
    
     CadaTareaTableViewCell *cell = (CadaTareaTableViewCell *) [gesture view];
    
    if (gesture.direction==UISwipeGestureRecognizerDirectionLeft) {
        
        
        for (int i=0; i< [self.listaTareas count]; i++) {
            
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:i inSection:0];
            
            CadaTareaTableViewCell *cell2 = [[self tableView] cellForRowAtIndexPath:indexPath];
            
            cell2.estadoBoton.hidden=YES;
        }
        
       
        cell.estadoBoton.hidden=NO;
    }else if (gesture.direction==UISwipeGestureRecognizerDirectionRight){
         cell.estadoBoton.hidden=YES;
    }
    
  
    
}


@end
