//
//  CEAppDelegate.m
//  Controle Estoque
//
//  Created by Estagio on 19/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//
#import "CEEstoque.h"
#import "CEAppDelegate.h"
#import "CECadeira.h"
#import "CEMesa.h"
#import "CEEstante.h"
#import "CECama.h"

@implementation CEAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /* Versão 1
    NSMutableArray *listaCores = [[NSMutableArray alloc] init];
    [listaCores addObject:@"verde"];
    [listaCores addObject:@"vermelho"];
    [listaCores addObject:@"azul"];
    [listaCores addObject:@"preto"];
    [listaCores addObject:@"cinza"];
    [listaCores addObject:@"marrom"];
    [listaCores addObject:@"branco"];
    */
   
    /*  Versão 2
    NSMutableArray *listaItens = [[NSMutableArray alloc] init];
    
    
    CECadeira *cadeira1 = [[CECadeira alloc] init];
    [cadeira1 initWithID:0 andCor: [UIColor blackColor] andPeso:10.5 andTipo:@"simples"];
    
    CECadeira *cadeira2 = [[CECadeira alloc] init];
    [cadeira2 initWithID:1 andCor: [UIColor redColor] andPeso:9.5 andTipo:@"simples"];

    CECadeira *cadeira3 = [[CECadeira alloc] init];
    [cadeira3 initWithID:2 andCor: [UIColor greenColor] andPeso:8.5 andTipo:@"simples"];
    
    CEMesa *mesa1 = [[CEMesa alloc] init];
    [mesa1 initWithID:3 andCor: [UIColor yellowColor] andPeso:100.0 andTipo:@"simples" ];
    
    CEMesa *mesa2 = [[CEMesa alloc] init];
    [mesa2 initWithID:5 andCor: [UIColor purpleColor] andPeso:50.0 andTipo:@"c/ entalhes"];
    
    CEEstante *estante1 = [[CEEstante alloc] init];
    [estante1 initWithID:4 andCor: [UIColor brownColor] andPeso:80.0 andTipo:@"artesanal" ];
    
    CEEstante *estante2 = [[CEEstante alloc] init];
    [estante2 initWithID:6 andCor: [UIColor redColor] andPeso:65.8 andTipo:@"simples"];
    
    
    
    //TESTE MESA COM PROPRIEDADES DIFERENTES
    
    CEMesa *mesa3= [[CEMesa alloc] init];
    [mesa3 initWithID:7 andCor: [UIColor redColor] andPeso:100.0 andTipo:@"simples"
     andTamanho:4 andEntalhe:YES];
    
    //TESTE CADEIRA COM PROPRIEDADES DIFERENTES
    CECadeira *cadeira4 = [[CECadeira alloc] init];
    [cadeira4 initWithID: 8 andCor: [UIColor greenColor] andPeso:8.5 andTipo:@"simples"  andBraco:NO];
    
    //TESTE ESTANTE COM PROPRIEDADES DIFERENTES
    
    CEEstante *estante3 = [[CEEstante alloc] init];
    [estante3 initWithID:9 andCor: [UIColor redColor] andPeso:65.8 andTipo:@"simples" andAltura:2.1];
    
    // TESTE CAMA
    CECama *cama1 = [[CECama alloc]init];
    [cama1 initWithID:10 andCor:[UIColor blackColor] andPeso:60.5 andTipo:@"simples" andCasal:NO];
    
    
    [listaItens addObject:cadeira1];
    [listaItens addObject:cadeira2];
    [listaItens addObject:cadeira3];
    [listaItens addObject:mesa1];
    [listaItens addObject:mesa2];
    [listaItens addObject:estante1];
    [listaItens addObject:estante2];
    [listaItens addObject:mesa3];
    [listaItens addObject:cadeira4];
    [listaItens addObject:estante3];
    [listaItens addObject:cama1];
    

    
    
    CEEstoque *estqBrag = [[CEEstoque alloc] init];
    [estqBrag initWithID:0 andEndereco:@"Rua dos Bobos, numero 0" andMaxItens:20 andListaItens:listaItens];
    */
    
    NSMutableArray *listaItens = [[NSMutableArray alloc] init];
    
    CEEstoque *estoque = [[CEEstoque alloc]init];
    [estoque initWithID:0 andEndereco:@"Bragança" andMaxItens:20 andListaItens:listaItens];
    
    //[estoque initWithID:1 andEndereco:@"Piaui" andMaxItens:50 andListaItens:listaItens];
    _estoque = estoque;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    
    
    
    
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
