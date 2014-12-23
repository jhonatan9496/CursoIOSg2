//
//  CadaTareaTableViewCell.h
//  NotasApp
//
//  Created by JHONATAN ACELAS AREVALO on 17/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CadaTareaTableViewCell : UITableViewCell


@property (strong,nonatomic)IBOutlet  UILabel *tituloTarea;
@property (strong,nonatomic)IBOutlet  UILabel *descripcion;

@property (strong,nonatomic)IBOutlet  UIButton *estadoBoton;

-(IBAction)eliminarTarea:(id)sender;

@end
