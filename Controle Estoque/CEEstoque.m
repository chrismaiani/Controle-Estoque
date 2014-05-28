//
//  CEEstoque.m
//  Controle Estoque
//
//  Created by Estagio on 19/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEEstoque.h"


@implementation CEEstoque


 
 /*-(bool)verificaEstoqueCheio: (NSMutableArray *) listaItens andMaxItens: (NSInteger) MAX_ITENS
{
  return [listaItens count] <= MAX_ITENS;
}
 */


-(void)initWithID:(NSInteger)ID andEndereco:(NSString *)endereco andMaxItens:(NSInteger)maxItens andListaItens:(NSMutableArray *)listaItens
{
    [self setID:ID];
    [self setEndereco:endereco];
    [self setMAX_ITENS:maxItens];
    [self setListaItens:listaItens];
   
}

@end
