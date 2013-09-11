//
//  WTMTablonCursoTableViewController.h
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTMModeloTablonCurso.h"

#define SECCION_IDIOMAS 0
#define SECCION_BUCEO 1
#define SECCION_COCINA 2

@interface WTMTablonCursoTableViewController : UITableViewController

@property (strong, nonatomic) WTMModeloTablonCurso *modelo;

-(id) initWithModelo: (WTMModeloTablonCurso *) aModelo
               style:(UITableViewStyle) aStyle;

@end
