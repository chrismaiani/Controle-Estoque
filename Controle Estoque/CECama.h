//
//  CECama.h
//  Controle Estoque
//
//  Created by Estagio on 24/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEProduto.h"

@interface CECama : CEProduto

@property (nonatomic) BOOL casal;


-(void) initWithID : (NSInteger)Id andCor : (UIColor *)cor andPeso : (float) peso andTipo : (NSString *)tipo andCasal : (BOOL) casal;

@end
