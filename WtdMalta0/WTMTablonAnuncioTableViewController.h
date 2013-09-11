//
//  WTMTablonAnuncioTableViewController.h
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTMModeloTablonAnuncio.h"

#define SECCION_EVENTOS 0
#define SECCION_TURISMO 1
#define SECCION_RESTAURACION 2

@interface WTMTablonAnuncioTableViewController : UITableViewController

@property (nonatomic, strong) WTMModeloTablonAnuncio *modelo;

-(id) initWithModelo: (WTMModeloTablonAnuncio *) aModelo
               style:(UITableViewStyle) aStyle;

@end
