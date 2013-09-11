//
//  WTMCursoViewController.h
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTMModeloCurso.h"

@interface WTMCursoViewController : UIViewController

// Propiedades

@property (strong, nonatomic) WTMModeloCurso *modelo;

@property (weak, nonatomic) IBOutlet UIImageView *tituloView;
@property (weak, nonatomic) IBOutlet UILabel *empresaLabel;
@property (weak, nonatomic) IBOutlet UILabel *ciudadLabel;
@property (weak, nonatomic) IBOutlet UILabel *notasLabel;
@property (weak, nonatomic) IBOutlet UIImageView *logoView;

-(id) initWithModelo: (WTMModeloCurso *) aModelo;

-(IBAction)displayUrl:(id)sender;

@end
