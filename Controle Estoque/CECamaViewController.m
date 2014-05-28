//
//  CECamaViewController.m
//  Controle Estoque
//
//  Created by Estagio on 25/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CECamaViewController.h"
#import "CEAppDelegate.h"

@interface CECamaViewController ()

@end

@implementation CECamaViewController

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
    [_TFCasal resignFirstResponder];
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
    
    
    
    
    CECama *cama = [[CECama alloc] init];
    
    CEAppDelegate *myDelegate = [[UIApplication sharedApplication] delegate];
    
    [cama setId:0];
    [cama setPeso:[_TFPeso.text floatValue]];
    [cama setTipo:_TFTipo.text];
    [cama setCasal:[_TFCasal.text isEqualToString:@"sim"]];
    if([_TFCor.text  isEqual: @"verde"])
    {
        [cama setCor:[UIColor greenColor]];
    }else{
        if ([_TFCor.text isEqual: @"azul"]) {
            [cama setCor:[UIColor blueColor]];
        }else{
            if ([_TFCor.text isEqual:@"preto"]) {
                [cama setCor:[UIColor blackColor]];
            }else{
                [cama setCor:[UIColor whiteColor]];
            }
        }	
    }
    
    if([[[myDelegate estoque] listaItens] count] <= [[myDelegate estoque] MAX_ITENS])
    {
        [[[myDelegate estoque]listaItens]addObject:cama];
    }
    
    

    _TFCor.text = @"";
    _TFPeso.text = @"";
    _TFTipo.text = @"";
    _TFCasal.text = @"";
    
    
    
    
}
@end
