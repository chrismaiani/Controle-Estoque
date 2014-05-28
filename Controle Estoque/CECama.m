//
//  CECama.m
//  Controle Estoque
//
//  Created by Estagio on 24/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CECama.h"

@implementation CECama



-(void) initWithID : (NSInteger)Id andCor : (UIColor *)cor andPeso : (float) peso andTipo : (NSString *)tipo andCasal : (BOOL) casal

{
    [self setId:Id];
    [self setCor:cor];
    [self setPeso: peso];
    [self setTipo:tipo];
    [self setCasal:casal];
}

@end
