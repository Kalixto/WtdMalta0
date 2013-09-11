//
//  WTMModeloTablonAnuncio.h
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WTMModeloAnuncio.h"

@interface WTMModeloTablonAnuncio : NSObject

// Definimos 3 tipos de Anuncios: Eventos, Turismo y Restauración
// No lo ponemos en .h lo ocultamo en .m


// loas siguientes propiedades si las definimos aqui y seran las que contengan
// el número de Anuncios por tipo de Anuncios: Eventos, Turismo y Restauración

@property (readonly, nonatomic) int eventosCount;
@property (readonly, nonatomic) int turismoCount;
@property (readonly, nonatomic) int restauracionCount;

// Métodos

-(WTMModeloAnuncio *) eventosAtIndex: (int) index;
-(WTMModeloAnuncio *) turismoAtIndex: (int) index;
-(WTMModeloAnuncio *) restauracionAtIndex: (int) index;

@end
