//
//  AppDelegate.m
//  NotasApp
//
//  Created by JHONATAN ACELAS AREVALO on 17/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
     NSArray *rutas = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    
     NSLog(@" %@ ",rutas);
    
     NSString *documentsDirectiory = [rutas objectAtIndex:0];
    
    
     self.rutaBaseDatos = [documentsDirectiory stringByAppendingPathComponent:@"notas.sqlite"];
    
    [self cargarBaseDeDatos];
    
    return YES;
}

-(void)cargarBaseDeDatos{

    
    BOOL exito;
    
    
    // adquirimos el path del telefono para buscar la base de datos
    NSFileManager *filemanager= [ NSFileManager defaultManager];
    NSError *error;
    
//    solicitamos directorio de archivos del dispositivo
//    nos retorna un vector de rutas
    
   NSArray *paths =  NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    
//    obtenemos la ruta en posicion o del vector
//    que deberia tener la ruta donde se aloja la db
    
    NSString *documentsDirectiory = [paths objectAtIndex:0];

//    Generamos ruta con el nombre de nuestra base de datos
    
    NSString *writableDBpath =[documentsDirectiory stringByAppendingPathComponent:@"notas.sqlite"];
    
//    Pregunto al Administrador de archivos si la ruta o archivo existe
    
    exito = [filemanager fileExistsAtPath:writableDBpath] ;

    if (exito) {
        NSLog(@"La base de datos Existe ");
        return;
    }else{
        NSLog(@"no existe la base de datos");
        
        NSString  * defaultDBpath= [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"notas.sqlite"];
        
        NSLog(@"%@",defaultDBpath);
        
        exito = [filemanager copyItemAtPath:defaultDBpath toPath:writableDBpath error:&error];
        
        if (!exito) {
            NSLog(@"no se pudo copiar la DB %@",[error description]);
            
        }else {
            NSLog(@"La base de datos fue Creada");
        }
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
