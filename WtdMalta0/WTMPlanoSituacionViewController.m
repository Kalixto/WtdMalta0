//
//  WTMPlanoSituacionViewController.m
//  WtdMalta0
//
//  Created by Edu Ardo on 16/09/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WTMPlanoSituacionViewController.h"

@interface WTMPlanoSituacionViewController ()

@end

@implementation WTMPlanoSituacionViewController

@synthesize localizacion;

-(id) initWithModelo: (WTMModeloAnuncio *) aModelo {
    if (self = [super initWithNibName:nil bundle:nil]) {
        _modelo = aModelo;
        
        self.title = @"Plano";
        
    }
    return  self;
}
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewDidAppear:(BOOL)animated {
    
    CLLocationCoordinate2D plano;
    plano.latitude = self.modelo.latitud;
    plano.longitude = self.modelo.longitud;
    MKPointAnnotation *punto = [[MKPointAnnotation alloc] init];
    punto.coordinate = plano;
    punto.title = self.modelo.nombre;
    punto.subtitle = self.modelo.matriz;
    [localizacion addAnnotation:punto];
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(plano, 500, 500);
    MKCoordinateRegion adjustedRegion = [localizacion regionThatFits:viewRegion];
    [localizacion setRegion:adjustedRegion animated:YES];
}

-(IBAction) cambioMapa:(id)sender {
    switch ([sender selectedSegmentIndex]) {
        case 0:
        {
           [localizacion setMapType:MKMapTypeStandard];
        }
            break;
        case 1:
        {
            [localizacion setMapType:MKMapTypeSatellite];
        }
            break;
        case 2:
        {
            [localizacion setMapType:MKMapTypeHybrid];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
