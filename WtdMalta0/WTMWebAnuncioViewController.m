//
//  WTMWebAnuncioViewController.m
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WTMWebAnuncioViewController.h"

/* No lo usamos
@interface WTMWebAnuncioViewController ()

@end
*/

@implementation WTMWebAnuncioViewController

-(id) initWithModelo: (WTMModeloAnuncio *) aModelo {    
    if (self = [super initWithNibName:nil bundle:nil]) {
        _modelo = aModelo;
        
        self.title = @"Web";
        
    }
    return  self;
}
-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self displayURL: self.modelo.url];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma  mark - UIWebViewDelegate

-(void) webViewDidFinishLoad:(UIWebView *)webView {
    
    [self.visorActividad stopAnimating];
    [self.visorActividad setHidden:YES];
}

#pragma mark - Utilidades

-(void) displayURL: (NSURL *) aURL {
    
    
    self.browser.delegate = self;
    
    self.visorActividad.hidden = NO;
    [self.visorActividad startAnimating];
    [self.browser loadRequest:[NSURLRequest requestWithURL:aURL]];
    
}

@end
