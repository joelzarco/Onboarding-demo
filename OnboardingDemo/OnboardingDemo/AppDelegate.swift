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
    
//    let testPageVC = OnboardingViewController(emoji: "🐶", titleText: "Something cool is commig...")
    let containnerViewController = ContainnerViewController()
    func application(_ application : UIApplication, didFinishLaunchingWithOptions launchOptions : [UIApplication.LaunchOptionsKey : Any]?) -> Bool{
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemPink
        containnerViewController.delegate = self
        window?.rootViewController = containnerViewController
        return true
    }
}

extension AppDelegate : onboardingDelegate{
    func didFinishOnboarding() {
        print("Has finished onboarding")
        setRootViewController(WelcomeViewController())
    }
}

extension AppDelegate{
    func setRootViewController(_ vc : UIViewController, animated : Bool = true){
        guard animated, let window = self.window else{
            self.window?.rootViewController = vc
            self.window?.makeKeyAndVisible()
            return
        }
        window.rootViewController = vc
        window.makeKeyAndVisible()
        UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)
    }
}

