//
//  AppDelegate.swift
//  BSAdaptScreen-swift-demo
//
//  Created by 吕必胜 on 2019/4/23.
//  Copyright © 2019 lbs. All rights reserved.
//

import UIKit

// UI设计的基准屏幕宽度（4.5英寸）
public let kRefereWidth: CGFloat = 375.0

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        BSAdaptScreenConfig.config { (floatValue) -> (CGFloat) in
            // 在这里面配置想要的缩放策略
            
            // 不缩放
            //return floatValue
            
            // 如果屏幕宽度小于基准屏幕就不缩放，否则进行放大
//            if UIScreen.main.bounds.size.width >= kRefereWidth {
//                return floatValue
//            }
            
            // 根据根据屏幕宽度来缩放
            return floatValue * UIScreen.main.bounds.size.width/kRefereWidth
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

