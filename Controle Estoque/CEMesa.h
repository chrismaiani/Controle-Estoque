//
//  CEMesa.h
//  Controle Estoque
//
//  Created by Estagio on 22/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CEProduto.h"


@interface CEMesa : CEProduto

@property (nonatomic)NSInteger tamanho;
@property (nonatomic)BOOL entalhe;


-(void) initWithID : (NSInteger)Id andCor : (UIColor *)cor andPeso : (float) peso andTipo : (NSString *)tipo andTamanho : (NSInteger) tamanho andEntalhe : (BOOL) entalhe;

@end
