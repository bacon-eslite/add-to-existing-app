//
//  ViewController.swift
//  myiosapp
//
//  Created by bacon-eslite on 2023/8/20.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var fragmentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onFullscreenAction(_ sender: Any) {
        let engine = FlutterEngineManager.shared.warmup(tag: .Fullscreen)
        
        FlutterMethodChannel(name: "\(FlutterRoutes.Fullscreen)", binaryMessenger: engine.binaryMessenger).setMethodCallHandler { call, result in
            switch (call.method) {
            case "message_from_flutter":
                self.messageLabel.text = (call.arguments as! Dictionary<String, String>)["message"]
                result("message received")
                break
            default:
                result(FlutterMethodNotImplemented)
            }
        }
        
        guard let vc = FlutterEngineManager.shared.getVC(tag: .Fullscreen) else { return }
        
        present(vc, animated: true)
    }
    @IBAction func onPartialViewAction(_ sender: Any) {
//        initFragmentVC()
        let engine = FlutterEngineManager.shared.warmup(tag: .PartialView)
        
        FlutterMethodChannel(name: "\(FlutterRoutes.PartialView)", binaryMessenger: engine.binaryMessenger).setMethodCallHandler { call, result in
            switch call.method {
            case "message_from_flutter":
                self.messageLabel.text = (call.arguments as! Dictionary<String, String>)["message"]
                result("message received")
                break
            default:
                result(FlutterMethodNotImplemented)
            }
        }
        
        guard let vc = FlutterEngineManager.shared.getVC(tag: .PartialView) else {
            print("vc is null 2")
            return }
        
        addChild(vc)
        
        guard let flutterView = vc.view else {
            print("flutter view not exist")
            return }
        
        FlutterEngineManager.attachView(child: flutterView, parent: self.fragmentView)
        
        vc.didMove(toParent: self)
        
        flutterView.layoutIfNeeded()
    }
}

