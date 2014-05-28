//
//  CEMesa.m
//  Controle Estoque
//
//  Created by Estagio on 22/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEMesa.h"


@implementation CEMesa

-(void) initWithID : (NSInteger)Id andCor : (UIColor *)cor andPeso : (float) peso andTipo : (NSString *)tipo andTamanho : (NSInteger) tamanho andEntalhe : (BOOL) entalhe




{
    [self setId:Id];
    [self setCor:cor];
    [self setPeso:peso];
    [self setTipo:tipo];
    [self setTamanho:tamanho];
    [self setEntalhe:entalhe];
}


@end
