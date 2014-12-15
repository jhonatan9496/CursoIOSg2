//
//  ViewController.m
//  NavigationTableViewPErsonalizadaClase
//
//  Created by JHONATAN ACELAS AREVALO on 12/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "ViewController.h"
#import "CadaCeldaTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.peliculas = [[NSMutableArray alloc]init];
    
    NSArray *llaves= [NSArray arrayWithObjects:@"nombre" ,@"comentario", @"imagen",@"descripcion", nil];
    
     NSArray *valores= [NSArray arrayWithObjects:@"Jhonatan A." ,@"Esperando Segunda Parte", @"the.jpg",@"The Hunger Games", nil];
    
    
    
    NSDictionary *theHungerGames = [NSDictionary dictionaryWithObjects:valores forKeys:llaves];
    
    
    NSLog(@" Primera Publicacoin %@ ", theHungerGames);
    
    [self.peliculas addObject:theHungerGames];
    [self.peliculas addObject:theHungerGames];
    
    
    NSLog(@"  Vector  %@ ", self.peliculas);
  

    
    
    
    
    //NSDictionary *theHungerGames = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"Jhonatan Acelas Arevalo",@"Muy larga,Sin Trama",@"the.png",@"The Hunger Games Part 1", nil] forKeys:[NSArray arrayWithObjects:@"aa", nil]]
    
    
    
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
    return [self.peliculas count] ;
}


//------------------------------------------------------------------
//-----------------Crea cada celda y le asigna un contenido --------
//------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CadaCeldaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Celda"];
    
    cell.usuario.text=@"Jhonatan Acelas ";
    cell.comentario.text=@"Mala pelicula";
    cell.descripcion.text=@"Los juegos del hambre: Sinsajo - Parte 1";
    
    cell.imagen.image= [UIImage  imageNamed:@"the.jpg"];
    
    

    
    return cell;
}



@end
