//
//  ViewController.swift
//  life cycle
//
//  Created by Jonas Jacobs on 10/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    var willConnect = 0
    var didBecomeActive = 0
    var WillResign = 0
    var willEnterForground = 0
    var didEnterbackGround = 0
    
    @IBOutlet weak var DidFinishLaunching: UILabel!
    @IBOutlet weak var ConfigForConnection: UILabel!
    @IBOutlet weak var WillConnect: UILabel!
    @IBOutlet weak var SceneDidBecomeActive: UILabel!
    @IBOutlet weak var SceneWillResign: UILabel!
    @IBOutlet weak var SceneWillEnterForeground: UILabel!
    @IBOutlet weak var SceneDidEnterBackGround: UILabel!
    
    
    func UpdateView() {
        DidFinishLaunching.text = "The App has launched \(appDelegate.launchCount) time(s)"
        ConfigForConnection.text = "The app ha configured \(appDelegate.configurationForConnectingount) time(s)"
        WillConnect.text = "The app has connected \(willConnect) time(s)"
        SceneDidBecomeActive.text = "The app became active \(didBecomeActive) time(s)"
        SceneWillResign.text = "The app has resigned \(WillResign) time(s)"
        SceneWillEnterForeground.text = "The app has entered foreground \(willEnterForground) time(s)"
        SceneDidEnterBackGround.text = "The app did enter backGround \(didEnterbackGround) time(s)"
    }
}

