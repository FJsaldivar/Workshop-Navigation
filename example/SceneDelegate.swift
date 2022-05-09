//
//  SceneDelegate.swift
//  example
//
//  Created by Francisco Javier Saldivar Rubio on 15/12/21.
//

import UIKit
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        
        self.window = UIWindow(windowScene: windowScene)
        let rootView: UIViewController = RootFeature(color: .white, title: "vista raíz")
        let navigationController: UINavigationController = .init(rootViewController: rootView)
        
        // El item indica como se presentara el botón que se agregara en el tab bar
        let item = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        navigationController.tabBarItem = item
        
        
        
        
        let feature4 = Feature4(color: .brown, title: "Caracteristica 4")
        let itemFeature4 = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        feature4.tabBarItem = itemFeature4
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers([navigationController, feature4], animated: true)
        
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
    }
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
}

