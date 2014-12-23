//
//  CadaTareaTableViewCell.m
//  NotasApp
//
//  Created by JHONATAN ACELAS AREVALO on 17/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "CadaTareaTableViewCell.h"

@implementation CadaTareaTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(IBAction)eliminarTarea:(id)sender{
    NSLog(@"se intento eliminar");
}

@end
