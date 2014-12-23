//
//  Tarea.m
//  NotasApp
//
//  Created by JHONATAN ACELAS AREVALO on 17/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "Tarea.h"
#import <sqlite3.h>
#import "AppDelegate.h"




@implementation Tarea


-(BOOL) insertar :(NSString *)tituloTarea Descripcion : (NSString *)descripciontitulo{
    
    BOOL transaccion=NO;
    
    AppDelegate *appDelegate = (AppDelegate *) [[UIApplication sharedApplication]delegate];

    //estructura contiene  db
    sqlite3 *dataBase;
    //variable de sentencia o consulta sobre la base de datos
    sqlite3_stmt *sentencia;
    
    
//Abrimos la base de datos con la ruta y la almacena en la variable database
    if (sqlite3_open([appDelegate.rutaBaseDatos UTF8String], &dataBase)== SQLITE_OK) {
//creamos el comando sql para ajecutar en la base de datos
        NSString *sql = [NSString stringWithFormat:@"insert into notas (\"tituloNota\", \"descripcionNota\" , \"estado\") values ( \" %@ \" , \" %@ \" , \" %@ \" )",tituloTarea,descripciontitulo,@"pendiente"];
//preparamos el sql y lo pasamos de string a sentencia sqlite
        if (sqlite3_prepare_v2(dataBase, [sql UTF8String], -1, &sentencia, NULL)== SQLITE_OK) {
            
            if (sqlite3_step(sentencia)) {
                NSLog(@"Registro Insertado");
                transaccion = YES;
            }
           
            
        }else{
            NSLog(@"error en la creacion del sql");
        }
        
        sqlite3_finalize(sentencia);
    }else {
        
        NSLog(@"No pudo abrir la DB");
    }
    
       sqlite3_close(dataBase);
    
    
    return transaccion;

}













-(NSMutableArray *) listar{
    
    NSMutableArray *a= [[NSMutableArray alloc]init] ;
    
    
    AppDelegate *appDelegate = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    
    //estructura contiene  db
    sqlite3 *dataBase;
    //variable de sentencia o consulta sobre la base de datos
    sqlite3_stmt *sentencia;
    
    
    //Abrimos la base de datos con la ruta y la almacena en la variable database
    if (sqlite3_open([appDelegate.rutaBaseDatos UTF8String], &dataBase)== SQLITE_OK) {
        //creamos el comando sql para ajecutar en la base de datos
         NSString *sql= [NSString stringWithFormat:@"select * from notas"];
//        convertimos el sql string en sentencia sqlite
        if (sqlite3_prepare_v2(dataBase, [sql UTF8String], -1, &sentencia, NULL)== SQLITE_OK) {
            
            while (sqlite3_step(sentencia)==SQLITE_ROW) {
            
                NSMutableDictionary *tmp = [[NSMutableDictionary alloc]init];
                
                 NSString *tituloNota = [NSString  stringWithUTF8String:( char *)sqlite3_column_text(sentencia, 1)];
                 NSString *descripcionNota = [NSString  stringWithUTF8String:( char *)sqlite3_column_text(sentencia, 2)];
                
                [tmp setValue:tituloNota forKey:@"tituloNota"];
                [tmp setValue:descripcionNota forKey:@"descripcionNota"];
                
                [a addObject:tmp];
                
                
            }
            
        }else {
            NSLog(@"error en la creacion del sql Listar notas");
        }
    
    }else {
        
        NSLog(@"No pudo abrir la DB");
    }
    
    sqlite3_close(dataBase);
    
    NSLog(@" %@ ",a);

    
    return a;
}

@end
