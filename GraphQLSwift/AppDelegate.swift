//
//  AppDelegate.swift
//  GraphQLSwift
//
//  Created by Kevinho Morales on 5/5/25.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private var navigationController: UINavigationController = UINavigationController()
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setUpInitView()
        return true
    }
    
    private func setUpInitView() {
        launchView()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    func launchView() {
        let citiesView: CitiesViewController = instantiateViewController(ofType: CitiesViewController.self)
        pushViewController(citiesView)
    }
    
    private func instantiateViewController<T: UIViewController>(ofType type: T.Type, bundle: Bundle? = nil) -> T {
        T(nibName: String(describing: type), bundle: bundle)
    }
    
    private func pushViewController<T: UIViewController>(_ viewController: T, animated: Bool = true) {
        navigationController.pushViewController(viewController, animated: animated)
    }
}

