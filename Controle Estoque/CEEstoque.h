//
//  CEEstoque.h
//  Controle Estoque
//
//  Created by Estagio on 19/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CEEstoque : NSObject

@property (nonatomic) NSInteger ID;
@property (nonatomic) NSInteger MAX_ITENS;
@property (strong,nonatomic) NSString *endereco;
@property (strong,nonatomic) NSMutableArray *listaItens;

//metodos publicos
-(void)initWithID:(NSInteger)ID andEndereco:(NSString *)endereco andMaxItens:(NSInteger)maxItens andListaItens:(NSMutableArray *)listaItens;
//-(bool)verificaEstoqueCheio: (NSMutableArray *) listaItens andMaxItens: (NSInteger) MAX_ITENS;



@end
