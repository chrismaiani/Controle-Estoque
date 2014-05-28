//
//  CEProduto.h
//  Controle Estoque
//
//  Created by Estagio on 22/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CEProduto : NSObject


//DEVIDO AO FATO DE TODOS OS PRODUTOS TEREM ATRIBUTOS-BASE IGUAIS, CRIAMOS UMA CLASSE PRODUTO, PADRONIZANDO POR MEIO DA HERANÇA. PODEMOS ADICIONAR ATRIBUTOS NOVOS PARA PRODUTOS, EM SUAS RESPECTIVAS CLASSES(RESPEITANDO A HERANÇA)


@property (nonatomic)NSInteger Id;
@property (strong,nonatomic)NSString *tipo;
@property (nonatomic)float peso;
@property (strong,nonatomic)UIColor *cor;


-(void) initWithID : (NSInteger)Id andCor : (UIColor *)cor andPeso : (float) peso andTipo : (NSString *)tipo;

@end
