//
//  CEEstante.m
//  Controle Estoque
//
//  Created by Estagio on 22/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEEstante.h"

@implementation CEEstante



-(void) initWithID : (NSInteger)Id andCor : (UIColor *)cor andPeso : (float) peso andTipo : (NSString *)tipo andAltura:(float)altura

{
    [self setId:Id];
    [self setCor:cor];
    [self setPeso:peso];
    [self setTipo:tipo];
    [self setAltura:altura];
    
}



@end
