//
//  CEEstante.h
//  Controle Estoque
//
//  Created by Estagio on 22/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEProduto.h"

@interface CEEstante : CEProduto



@property (nonatomic) float altura;


-(void) initWithID : (NSInteger)Id andCor : (UIColor *)cor andPeso : (float) peso andTipo : (NSString *)tipo andAltura : (float) altura;



@end
