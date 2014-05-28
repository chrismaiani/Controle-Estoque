//
//  CEMesaViewController.m
//  Controle Estoque
//
//  Created by Estagio on 25/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEMesaViewController.h"
#import "CEAppDelegate.h"

@interface CEMesaViewController ()

@end

@implementation CEMesaViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [_TFTipo resignFirstResponder];
    [_TFPeso resignFirstResponder];
    [_TFCor resignFirstResponder];
    [_TFEntalhe resignFirstResponder];
    [_TFTamanho resignFirstResponder];
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

- (IBAction)done:(id)sender {
    
    
    CEMesa *mesa = [[CEMesa alloc] init];
    
    CEAppDelegate *myDelegate = [[UIApplication sharedApplication] delegate];
  
    [mesa setId:0];
    [mesa setPeso:[_TFPeso.text floatValue]];
    [mesa setTipo:_TFTipo.text];
    [mesa setTamanho:[_TFTamanho.text intValue]];
    [mesa setEntalhe:[_TFEntalhe.text isEqualToString:@"sim"]];
    if([_TFCor.text  isEqual: @"verde"])
    {
        [mesa setCor:[UIColor greenColor]];
    }else{
        if ([_TFCor.text isEqual: @"azul"]) {
            [mesa setCor:[UIColor blueColor]];
        }else{
            if ([_TFCor.text isEqual:@"preto"]) {
                [mesa setCor:[UIColor blackColor]];
            }else{
                [mesa setCor:[UIColor whiteColor]];
            }
        }
    }
    
    if([[[myDelegate estoque] listaItens] count] <= [[myDelegate estoque] MAX_ITENS])
    {
        [[[myDelegate estoque]listaItens]addObject:mesa];
    }
    
    _TFCor.text = @"";
    _TFPeso.text = @"";
    _TFTipo.text = @"";
    _TFEntalhe.text = @"";
    _TFTamanho.text = @"";
    

    
    
}
@end
