//
//  WTMLugaresViewController.m
//  WtdMalta0
//
//  Created by Edu Ardo on 24/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WTMLugaresViewController.h"
#import "WTMModeloMapPoint.h"

@interface WTMLugaresViewController ()

@end

@implementation WTMLugaresViewController

-(id) initLugar {

    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.1
                                                                        green:0.1
                                                                         blue:0.5 alpha:1];
    self.title = @"What to do Malta";
    self.tabBarItem.image = [UIImage imageNamed:@"73-radar"];
    self.tabBarItem.title = @"Lugares";
    return self;
 
}

-(void) viewWillAppear:(BOOL)animated {
 //   [super viewWillAppear:animated];
 //   self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.1
 //                                                                       green:0.1
 //                                                                        blue:0.5 alpha:1];
    
 //   self.title = @"What to do Malta";
 //   self.tabBarItem.image = [UIImage imageNamed:@"73-radar"];
 //   self.tabBarItem.title = @"Lugares";
}

-(void) viewDidLoad {
    
    [vistaMundial setShowsUserLocation:YES];
    
}

-(void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)lugarUsuario {
    
    CLLocationCoordinate2D loc = [lugarUsuario coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [vistaMundial setRegion:region animated:YES];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    
 //   [self buscarLocalizacion];
    
    [textField resignFirstResponder];
    return YES;
}

-(void) buscarLocalizacion {
    
    [gestorLocalizacion startUpdatingLocation];
    [indicadorActividad startAnimating];
    [tituloLugar setHidden:YES];
    
}
-(void) LocalizacionEncontrada: (CLLocation *) loc {
    
    CLLocationCoordinate2D coord = [loc coordinate];
    
    // Creamos una instancia de WTMModeloMapPoint con losm datos actuales
    WTMModeloMapPoint *mp = [[WTMModeloMapPoint alloc] initWithCoordenadas:coord titulo:[tituloLugar text]];
    
    // Lo añadimos al Mapa
    [vistaMundial addAnnotation:mp];
    
    // Zoom por Region a la localización
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [vistaMundial setRegion:region animated:YES];
    
    // Reseteamos la vista
    [tituloLugar setText:@""];
    [indicadorActividad stopAnimating];
    [tituloLugar setHidden:NO];
    [gestorLocalizacion stopUpdatingLocation];
    
}

/*
-(void) locationManager:(CLLocationManager *) gestor
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation {
    NSLog(@"didUpdate: %@", newLocation);
    
    // Cuántos segundos hace que se creó la localización?
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    // CLLocationManager retornará la última localización del dispositivo. A nosotros plim
    // Si se realizó hace más de 3 minutos, lo ignora
    if (t < -180) {
        // Se trata de datos de caché, seguimos buscando
        return;
    }
    [self LocalizacionEncontrada:newLocation];
}
 */

/* Lo borro no sirve paná
 
-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
     NSLog(@"initWithName1:");
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Creamos el gestor de localización
        gestorLocalizacion = [[CLLocationManager alloc] init];
        
        // Queremos la mejor precisión independientemente del coste
        [gestorLocalizacion setDesiredAccuracy:kCLLocationAccuracyBest];
        
        // Establecemos que la propiedad de Delegado del Gestor de Localización es el WTMViewController
        [gestorLocalizacion setDelegate:self];
        
        // Lo ponemos a buscar la localización ya mismo
        [gestorLocalizacion startUpdatingLocation];
        
        NSLog(@"initWithName2:");
    }
    
    NSLog(@"initWithName3:");
    
    return self;
}


-(void) locationManager:(CLLocationManager *) gestor
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation {
    NSLog(@"didUpdate: %@", newLocation);
}

-(void) locationManager: (CLLocationManager *) gestor
       didFailWithError:(NSError *)error {
    
    NSLog(@"didFailWithError: %@", error);
    
}

-(void) dealloc {
    [gestorLocalizacion setDelegate:nil];
}
 
 */

@end
