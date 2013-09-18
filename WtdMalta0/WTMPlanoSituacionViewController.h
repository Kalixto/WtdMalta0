//
//  WTMPlanoSituacionViewController.h
//  WtdMalta0
//
//  Created by Edu Ardo on 16/09/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "WTMModeloAnuncio.h"

@interface WTMPlanoSituacionViewController : UIViewController <MKMapViewDelegate> {
    BOOL _doneInitialZoom;
    IBOutlet MKMapView *localizacion;
    
}

@property (strong, nonatomic) WTMModeloAnuncio *modelo;
@property (nonatomic, retain) IBOutlet MKMapView *localizacion;


-(id) initWithModelo: (WTMModeloAnuncio *) aModelo;

-(IBAction) cambioMapa:(id)sender;

@end
