//
//  CECadeiraViewController.h
//  Controle Estoque
//
//  Created by Estagio on 24/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import "CEMainViewController.h"
#import "CECadeira.h"

/*@class CECadeiraViewController;

@protocol CECadeiraViewControllerDelegate <NSObject>
- (void)cecadeiraViewControllerDidCancel:(CECadeiraViewController *)controller;
- (void)cecadeiraViewControllerDidSave:(CECadeiraViewController *)controller;
@end
*/

// resignFirstResponder







@interface CECadeiraViewController : CEMainViewController


@property (weak, nonatomic) IBOutlet UITextField *TFCor;
@property (weak, nonatomic) IBOutlet UITextField *TFPeso;
@property (weak, nonatomic) IBOutlet UITextField *TFTipo;
@property (weak, nonatomic) IBOutlet UITextField *TFBraco;
@property (weak, nonatomic) IBOutlet UITextField *TesteCor;
@property (weak, nonatomic) IBOutlet UITextField *TestePeso;
@property (weak, nonatomic) IBOutlet UITextField *TesteBraco;

@property (weak, nonatomic) IBOutlet UITextField *TesteTipo;

//@property (nonatomic, weak) id <CECadeiraViewControllerDelegate> delegate;


- (IBAction)done:(id)sender;

@end


