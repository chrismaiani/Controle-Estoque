//
//  CECadeiraViewController.m
//  Controle Estoque
//
//  Created by Estagio on 24/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CECadeiraViewController.h"
#import "CEAppDelegate.h"

@interface CECadeiraViewController ()

@end

@implementation CECadeiraViewController

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
    [_TFBraco resignFirstResponder];
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

/*- (IBAction)cancel:(id)sender
{
    [self.delegate cecadeiraViewControllerDidCancel:self];
}
*/
- (IBAction)done:(id)sender

{
     CECadeira *cadeira = [[CECadeira alloc] init];
    
    CEAppDelegate *myDelegate = [[UIApplication sharedApplication] delegate];
    //[[[myDelegate cadeira] tipo] TFTipo.self];
    //[[myDelegate cadeira] tipo]; _TFTipo.text;
    //[cadeira initWithID:5 andCor:[UIColor blackColor] andPeso: andTipo:_TFTipo.text];
    
    
    [cadeira setId:0];
    [cadeira setPeso:[_TFPeso.text floatValue]];
    [cadeira setTipo:_TFTipo.text];
    [cadeira setBraco:[_TFBraco.text isEqualToString:@"sim"]];
    if([_TFCor.text  isEqual: @"verde"])
    {
        [cadeira setCor:[UIColor greenColor]];
    }else{
        if ([_TFCor.text isEqual: @"azul"]) {
            [cadeira setCor:[UIColor blueColor]];
        }else{
            if ([_TFCor.text isEqual:@"preto"]) {
                [cadeira setCor:[UIColor blackColor]];
            }else{
                [cadeira setCor:[UIColor whiteColor]];
            }
        }
        }

    if([[[myDelegate estoque] listaItens] count] <= [[myDelegate estoque] MAX_ITENS])
    {
        [[[myDelegate estoque]listaItens]addObject:cadeira];
    }
    
    _TFCor.text = @"";
    _TFPeso.text = @"";
    _TFTipo.text = @"";
    _TFBraco.text = @"";
    
}

@end
