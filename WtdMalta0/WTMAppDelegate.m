//
//  WTMAppDelegate.m
//  WtdMalta0
//
//  Created by Edu Ardo on 16/08/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WTMAppDelegate.h"

#import "WTMModeloAnuncio.h"
#import "WTMAnuncioViewController.h"
#import "WTMWebAnuncioViewController.h"
#import "WTMModeloTablonAnuncio.h"
#import "WTMTablonAnuncioTableViewController.h"

#import "WTMModeloCurso.h"
#import "WTMCursoViewController.h"
#import "WTMWebCursoViewController.h"
#import "WTMModeloTablonCurso.h"
#import "WTMTablonCursoTableViewController.h"

#import "WTMLugaresViewController.h"

@implementation WTMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // Creamos un Modelo de Tablón de Anuncios y otro de Tablón de Cursos
    
    WTMModeloTablonAnuncio *tablonAnuncios = [[WTMModeloTablonAnuncio alloc] init];
    
    WTMModeloTablonCurso *tablonCursos = [[WTMModeloTablonCurso alloc] init];
    
    // Creamos 3 Controladores: 1 del tablón de Anuncios y otro de tablón de Cursos + otro de Lugares
    
    WTMTablonAnuncioTableViewController *tablonAnunciosVC = [[WTMTablonAnuncioTableViewController alloc] initWithModelo:tablonAnuncios
                                                                                                                  style:UITableViewStyleGrouped];
    WTMTablonCursoTableViewController *tablonCursosVC = [[WTMTablonCursoTableViewController alloc] initWithModelo:tablonCursos
                                                                                                            style:UITableViewStyleGrouped];
    
    WTMLugaresViewController *lugaresVC = [[WTMLugaresViewController alloc] initLugar];
    
    // Creamos los Navigation para los Anuncios, Cursos y para los Lugares
    
    UINavigationController *naviAnunciosVC = [[UINavigationController alloc] initWithRootViewController:tablonAnunciosVC];
    UINavigationController *naviCursosVC   = [[UINavigationController alloc] initWithRootViewController:tablonCursosVC];
    UINavigationController *naviLugaresVC   = [[UINavigationController alloc] initWithRootViewController:lugaresVC];
    
    // Creamos el Combinador
    
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    
    // Le cargamos los Navigation
    
    tabVC.viewControllers = @[naviAnunciosVC, naviCursosVC, naviLugaresVC];
    
    // Lo asignamos como controlador Raiz
    
    self.window.rootViewController = tabVC;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
