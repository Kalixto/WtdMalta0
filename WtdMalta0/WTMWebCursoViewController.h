//
//  WTMWebCursoViewController.h
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTMModeloCurso.h"

@interface WTMWebCursoViewController : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) WTMModeloCurso *modelo;
@property (weak, nonatomic) IBOutlet UIWebView *browser;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *visorActividad;

-(id) initWithModelo: (WTMModeloCurso *) aModelo;

@end
