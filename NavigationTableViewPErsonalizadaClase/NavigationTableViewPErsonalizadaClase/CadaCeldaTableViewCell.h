//
//  CadaCeldaTableViewCell.h
//  NavigationTableViewPErsonalizadaClase
//
//  Created by JHONATAN ACELAS AREVALO on 12/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CadaCeldaTableViewCell : UITableViewCell


@property (strong,nonatomic) IBOutlet UILabel  *usuario;
@property (strong,nonatomic) IBOutlet UILabel  *comentario;
@property (strong,nonatomic) IBOutlet UILabel  *descripcion;


@property (strong,nonatomic) IBOutlet UIImageView *imagen;



@end
