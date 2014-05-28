//
//  CEMesaViewController.h
//  Controle Estoque
//
//  Created by Estagio on 25/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEMainViewController.h"

@interface CEMesaViewController : CEMainViewController

@property (weak, nonatomic) IBOutlet UITextField *TFCor;
@property (weak, nonatomic) IBOutlet UITextField *TFPeso;
@property (weak, nonatomic) IBOutlet UITextField *TFTipo;
@property (weak, nonatomic) IBOutlet UITextField *TFTamanho;
@property (weak, nonatomic) IBOutlet UITextField *TFEntalhe;



- (IBAction)done:(id)sender;

@end
