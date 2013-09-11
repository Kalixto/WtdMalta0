//
//  WTMModeloTablonCurso.h
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WTMModeloCurso.h"

@interface WTMModeloTablonCurso : NSObject

// Definimos 3 tipos de Cursos: Idiomas, Buceo y Cocina
// No lo ponemos en .h lo ocultamo en .m


// loas siguientes propiedades si las definimos aqui y seran las que contengan
// el número de Anuncios por tipo de Anuncios: Eventos, Turismo y Restauración

@property (readonly, nonatomic) int idiomasCount;
@property (readonly, nonatomic) int buceoCount;
@property (readonly, nonatomic) int cocinaCount;

// Métodos

-(WTMModeloCurso *) idiomasAtIndex: (int) index;
-(WTMModeloCurso *) buceoAtIndex: (int) index;
-(WTMModeloCurso *) cocinaAtIndex: (int) index;

@end
