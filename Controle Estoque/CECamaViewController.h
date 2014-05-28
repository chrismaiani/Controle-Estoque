//
//  CECamaViewController.h
//  Controle Estoque
//
//  Created by Estagio on 25/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEMainViewController.h"

@interface CECamaViewController : CEMainViewController
@property (weak, nonatomic) IBOutlet UITextField *TFCor;
@property (weak, nonatomic) IBOutlet UITextField *TFPeso;
@property (weak, nonatomic) IBOutlet UITextField *TFTipo;
@property (weak, nonatomic) IBOutlet UITextField *TFCasal;
- (IBAction)done:(id)sender;

@end
