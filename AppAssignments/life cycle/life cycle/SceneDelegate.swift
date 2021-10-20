//
//  SceneDelegate.swift
//  life cycle
//
//  Created by Jonas Jacobs on 10/5/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var viewController: ViewController?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        viewController = window?.rootViewController as? ViewController
        viewController?.willConnect += 1
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("Some Code")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        viewController?.didBecomeActive += 1
        viewController?.UpdateView()
    }

    func sceneWillResignActive(_ scene: UIScene) {
        viewController?.WillResign += 1
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        viewController?.willEnterForground += 1
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        viewController?.didEnterbackGround += 1
    }
    
}

