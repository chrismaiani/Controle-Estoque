//
//  CEProduto.m
//  Controle Estoque
//
//  Created by Estagio on 22/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEProduto.h"

@implementation CEProduto


//DEVIDO AO FATO DE TODOS OS PRODUTOS TEREM ATRIBUTOS-BASE IGUAIS, CRIAMOS UMA CLASSE PRODUTO, PADRONIZANDO POR MEIO DA HERANÇA. PODEMOS ADICIONAR ATRIBUTOS NOVOS PARA PRODUTOS, EM SUAS RESPECTIVAS CLASSES(RESPEITANDO A HERANÇA)


-(void) initWithID : (NSInteger)Id andCor : (UIColor *)cor andPeso : (float) peso andTipo : (NSString *)tipo
{
    _Id = Id;
    _cor = cor;
    _peso = peso;
    _tipo = tipo;
}


@end
