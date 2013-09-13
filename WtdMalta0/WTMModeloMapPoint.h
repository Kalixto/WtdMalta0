//
//  WTMModeloMapPoint.h
//  WtdMalta0
//
//  Created by Edu Ardo on 13/09/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WTMModeloMapPoint : NSObject <MKAnnotation> {
    
}

// definimos nuestro Inicializador Designado

-(id) initWithCoordenadas: (CLLocationCoordinate2D) c
                     titulo: (NSString *) t;

// Propiedad obligatoria de MKAnnotation

@property (nonatomic, readonly)CLLocationCoordinate2D coordinate;

// Propiedad Opcional para MKAnnotation

@property (nonatomic, copy) NSString *titulo;

@end
