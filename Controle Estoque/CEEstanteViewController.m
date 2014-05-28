//
//  CEEstanteViewController.m
//  Controle Estoque
//
//  Created by Estagio on 25/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEEstanteViewController.h"
#import "CEAppDelegate.h"




@interface CEEstanteViewController ()

@end

@implementation CEEstanteViewController

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
    [_TFAltura resignFirstResponder];
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


    CEEstante *estante =[[CEEstante alloc] init];
    
    CEAppDelegate *myDelegate = [[UIApplication sharedApplication] delegate];
    
    [estante setId:0];
    [estante setPeso:[_TFPeso.text floatValue]];
    [estante setTipo:_TFTipo.text];
    [estante setAltura:[_TFAltura.text floatValue]];
    if([_TFCor.text  isEqual: @"verde"])
    {
        [estante setCor:[UIColor greenColor]];
    }else{
        if ([_TFCor.text isEqual: @"azul"]) {
            [estante setCor:[UIColor blueColor]];
        }else{
            if ([_TFCor.text isEqual:@"preto"]) {
                [estante setCor:[UIColor blackColor]];
            }else{
                [estante setCor:[UIColor whiteColor]];
            }
        }
    }
    
    if([[[myDelegate estoque] listaItens] count] <= [[myDelegate estoque] MAX_ITENS])
    {
        [[[myDelegate estoque]listaItens]addObject:estante];
    }
    
    _TFCor.text = @"";
    _TFPeso.text = @"";
    _TFTipo.text = @"";
    _TFAltura.text = @"";

    

}
@end
