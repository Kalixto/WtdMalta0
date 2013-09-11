//
//  WTMLugaresViewController.m
//  WtdMalta0
//
//  Created by Edu Ardo on 24/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WTMLugaresViewController.h"

@interface WTMLugaresViewController ()

@end

@implementation WTMLugaresViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"Paso por initWithNibName@");
        // Crear objeto locationManager
        gestorDeLocalizacion = [[CLLocationManager alloc] init];
        [gestorDeLocalizacion setDelegate:self];
        // Queremos todos los resultados de locationManager
        [gestorDeLocalizacion setDistanceFilter: kCLHeadingFilterNone];
        // Queremos que tenga la mayor precisión posible
        [gestorDeLocalizacion setDesiredAccuracy: kCLLocationAccuracyBest];
        // Le decimos que empiece a buscar la ubicación inmediatamente
        // [gestorDeLocalizacion startUpdatingLocation];
        [vistaMundial setShowsUserLocation:YES];
        
        self.title = @"What to do Malta";
        self.tabBarItem.image = [UIImage imageNamed:@"73-radar"];
        self.tabBarItem.title = @"Lugares";
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.1
                                                                        green:0.1
                                                                         blue:0.5 alpha:1];
     NSLog(@"Paso por viewWillAppear");
    [gestorDeLocalizacion startUpdatingLocation];
//    [indicadorActividad startAnimating];
//    [campoDireccion setHidden:YES];
    
}

-(void) gestorDeLocalizacion: (CLLocationManager *) gestor
      didUpdateToLocation: (CLLocation *) nuevaLocalizacion
           fromLocation: (CLLocation *) antiguaLocalizacion {
    NSLog(@"Paso%@", nuevaLocalizacion);
    
}

-(void) gestorDeLocalizacion: (CLLocationManager *) gestor
            didFailWithError: (NSError *) error {
    NSLog(@"No puedo encontrar la localización: %@", error);
}

//- (void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
- (void) mapView:(MKMapView *)mapaVista didUpdateUserLocation:(MKUserLocation *)localizacionUsuario {
    CLLocationCoordinate2D loc = [localizacionUsuario coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [vistaMundial setRegion:region animated:YES];
    NSLog(@"Paso por mapView");
}

- (void) buscarLocalizacion {
    [gestorDeLocalizacion startUpdatingLocation];
    [indicadorActividad startAnimating];
    [campoDireccion setHidden:YES];
    NSLog(@"Paso por buscarLocalizacion");
}

- (BOOL) textFieldShouldReturn:(UITextField *)campoTexto {
    // Este método aún no está impleementado: lo estará pronto
    [self buscarLocalizacion];
    
    [campoTexto resignFirstResponder];
    
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
