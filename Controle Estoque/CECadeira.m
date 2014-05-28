//
//  CECadeira.m
//  Controle Estoque
//
//  Created by Estagio on 19/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CECadeira.h"

@implementation CECadeira

-(void) initWithID : (NSInteger)Id andCor : (UIColor *)cor andPeso : (float) peso andTipo : (NSString *)tipo andBraco:(BOOL)braco
{
    [self setId:Id];
    [self setCor:cor];
    [self setPeso:peso];
    [self setTipo:tipo];
    [self setBraco:braco];
    
}


@end
