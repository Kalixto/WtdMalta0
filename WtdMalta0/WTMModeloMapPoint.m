//
//  WTMModeloMapPoint.m
//  WtdMalta0
//
//  Created by Edu Ardo on 13/09/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WTMModeloMapPoint.h"

@implementation WTMModeloMapPoint

@synthesize coordinate, titulo;

-(id) initWithCoordenadas: (CLLocationCoordinate2D) c
                     titulo: (NSString *) t {
    
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitulo:t];
    }
    return self;
}

@end
