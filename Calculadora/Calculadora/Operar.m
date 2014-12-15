//
//  Operar.m
//  Calculadora
//
//  Created by JHONATAN ACELAS AREVALO on 10/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "Operar.h"

@implementation Operar


-(int)suma:(int)numero1 Numero2: (int)numero2{
    return numero1+numero2;
}


-(int)resta:(int)numero1 Numero2: (int)numero2{
    return numero1+numero2;
}


-(int)multiplicacion:(int)numero1 Numero2: (int)numero2{
    return numero1+numero2;
}


-(float)division:(float)numero1 Numero2:(float)numero2{
    
    if (numero2!=0) {
        return numero1/numero2;
    }else{
        return 0;
    }
    
}


@end
