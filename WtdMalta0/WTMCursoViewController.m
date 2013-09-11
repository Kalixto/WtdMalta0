//
//  WTMCursoViewController.m
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WTMCursoViewController.h"
#import "WTMWebCursoViewController.h"

@interface WTMCursoViewController ()

@end

@implementation WTMCursoViewController

-(id) initWithModelo: (WTMModeloCurso *) aModelo{
    
    // decimos que el nib/xib sea el por defecto
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _modelo = aModelo;
        
        self.title = aModelo.empresa;
    }
    return self;
}

// Sincronizamos Modelo y Vista
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self sincronizarVistaYModelo];
    
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.1
                                                                        green:0.1
                                                                         blue:0.5
                                                                        alpha:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma  mark - Acciones

- (IBAction) displayUrl:(id)sender{
    
    // Crear un webVC
    WTMWebCursoViewController *webVC = [[WTMWebCursoViewController alloc] initWithModelo:self.modelo];
    
    // hacemos un Push
    [self.navigationController pushViewController:webVC
                                         animated:YES];
}

#pragma  mark - Utilidades

-(void) sincronizarVistaYModelo {
    
    self.notasLabel.text = self.modelo.notas;
    self.logoView.image = self.modelo.logo;
    self.empresaLabel.text = self.modelo.empresa;
    self.ciudadLabel.text = self.modelo.ciudad;
    self.tituloView.image = self.modelo.titulo;

    
}


@end
