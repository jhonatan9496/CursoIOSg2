//
//  Tarea.h
//  NotasApp
//
//  Created by JHONATAN ACELAS AREVALO on 17/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tarea : NSObject

-(BOOL) insertar :(NSString *)tituloTarea Descripcion : (NSString *)descripciontitulo;

-(NSMutableArray *) listar;



@end
