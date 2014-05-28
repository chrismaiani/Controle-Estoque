//
//  CECadeira.h
//  Controle Estoque
//
//  Created by Estagio on 19/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CEProduto.h"


@interface CECadeira : CEProduto

@property (nonatomic)BOOL braco;


-(void) initWithID : (NSInteger)Id andCor : (UIColor *)cor andPeso : (float) peso andTipo : (NSString *)tipo andBraco : (BOOL) braco;
@end
