//
//  WTMLugaresViewController.h
//  WtdMalta0
//
//  Created by Edu Ardo on 24/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WTMLugaresViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate> {
    
    CLLocationManager *gestorLocalizacion;
    
    // Variables de Instancia
    
    IBOutlet MKMapView *vistaMundial;
    IBOutlet UIActivityIndicatorView *indicadorActividad;
    IBOutlet UITextField *tituloLugar;
    

    
    
  }

-(id) initLugar;
-(void) buscarLocalizacion;
-(void) LocalizacionEncontrada: (CLLocation *) loc;

@end
