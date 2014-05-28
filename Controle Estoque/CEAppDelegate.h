//
//  CEAppDelegate.h
//  Controle Estoque
//
//  Created by Estagio on 19/04/14.
//  Copyright (c) 2014 its4company. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CEEstoque.h"
#import "CECadeira.h"
#import "CEMesa.h"
#import "CEEstante.h"
#import "CECama.h"




@interface CEAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CEEstoque *estoque;

@end
