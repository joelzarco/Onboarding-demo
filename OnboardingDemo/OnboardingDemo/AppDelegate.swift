//
//  AppDelegate.swift
//  OnboardingDemo
//
//  Created by Johel Zarco on 09/05/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let testPageVC = OnboardingViewController(emoji: "🐶", titleText: "Something cool is commig...")
    
    func application(_ application : UIApplication, didFinishLaunchingWithOptions launchOptions : [UIApplication.LaunchOptionsKey : Any]?) -> Bool{
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemPink
        window?.rootViewController = testPageVC
        return true
    }

}

