//
//  CEEstoqueViewController.m
//  Controle Estoque
//
//  Created by Estagio on 25/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEEstoqueViewController.h"
#import "CEAppDelegate.h"
#import "CEEstoque.h"

@interface CEEstoqueViewController ()

@end

@implementation CEEstoqueViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
       return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    CEEstoque *estoque = [(CEAppDelegate *)[[UIApplication sharedApplication] delegate] estoque];
    
    _TFEndereco.text = [estoque endereco];
    _TFMaxItens.text = [NSString stringWithFormat:@"%d", [estoque MAX_ITENS]];
    _TFCountLista.text = [NSString stringWithFormat:@"%d", [[estoque listaItens] count]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
