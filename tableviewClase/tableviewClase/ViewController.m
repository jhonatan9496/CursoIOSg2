//
//  ViewController.m
//  tableviewClase
//
//  Created by JHONATAN ACELAS AREVALO on 11/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
    return 100;
}



//------------------------------------------------------------------
//-----------------Crea cada celda y le asigna un contenido --------
//------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Celidentifield=@"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Celidentifield];
    
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:Celidentifield];
        
    }
    
    cell.textLabel.text=@"Mi Celda";
    cell.detailTextLabel.text=@"Descripcion";
    cell.imageView.image=[UIImage imageNamed:@"icn.png"];
    
    // Configure the cell...
    
    return cell;
}


@end
