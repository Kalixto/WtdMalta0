//
//  WTMAnuncioViewController.h
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTMModeloAnuncio.h"

@interface WTMAnuncioViewController : UIViewController

// Propiedades

@property (strong, nonatomic) WTMModeloAnuncio *modelo;

// @property (weak, nonatomic) IBOutlet UIImageView *logoView;
@property (weak, nonatomic) IBOutlet UIImageView *fotoView;
@property (weak, nonatomic) IBOutlet UITextView *notasLabel;

-(id) initWithModelo: (WTMModeloAnuncio *) aModelo;

-(IBAction)displayUrl:(id)sender;
-(IBAction)displayPlano:(id)sender;

@end
