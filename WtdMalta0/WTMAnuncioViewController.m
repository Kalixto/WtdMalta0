//
//  WTMAnuncioViewController.m
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WTMAnuncioViewController.h"
#import "WTMWebAnuncioViewController.h"

/* No hace falta aquí
@interface WTMAnuncioViewController ()

@end
*/

@implementation WTMAnuncioViewController

-(id) initWithModelo: (WTMModeloAnuncio *) aModelo{
    
    // decimos que el nib/xib sea el por defecto
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _modelo = aModelo;
        
        self.title = aModelo.nombre;
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
    
    //  NSLog(@"Ir a: %@", self.modelo.url);
    
    // Crear un webVC
    WTMWebAnuncioViewController *webVC = [[WTMWebAnuncioViewController alloc] initWithModelo:self.modelo];
    
   // WTMMapaAnuncioViewController *mapaVC = [[WTMMapaAnuncioViewController alloc] initWithModelo:self.modelo];
    
    // hacemos un Push
    [self.navigationController pushViewController:webVC
                                         animated:YES];
    
}

#pragma  mark - Utilidades

-(void) sincronizarVistaYModelo {
    
    self.notasLabel.text = self.modelo.notas;
    self.logoView.image = self.modelo.logo;
    self.fotoView.image = self.modelo.foto;
    
    //    self.botonUrl.imageView = self.modelo.logo;
    
    //  [self.notasLabel setNumberOfLines:0];
    
}

@end
