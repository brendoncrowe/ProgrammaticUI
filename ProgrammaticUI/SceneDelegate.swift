//
//  SceneDelegate.swift
//  ProgrammaticUI
//
//  Created by Brendon Crowe on 2/20/23.
//

import UIKit

// the scene delegate gives iPad apps the ability to have multiple windows

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    // iOS 13 now has a SceneDelegate, this is where the window property is.
    // In order to set up programmatic code, the root view controller property must be set
    // e.g window.rootViewController = ViewController()
    
    // MARK: Steps to remove storyboard from info.plist file
    // 1. delete "Main storyboard" entry from the info.plist
    // 2. delete the storyboard name value from the "scene configuration"
    // 3. delete Main.storyboard file, which is (optional)
    
    var window: UIWindow? // the container of the app. "Look through the window and what do you see?" border of a painting
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        // Steps to configure programmatic ui in SceneDelegate
        // Steps in configuring the window property
        
        
        
        
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        // set the size of the window frame to take up the entire screen of the device
        // instantiating the window with a frame
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        // entry point of the app; "storyboard arrow"
        // window?.rootViewController = ViewController()
        
        // embedding a UIViewController in a UINavigationController
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        
        window?.makeKeyAndVisible()
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

