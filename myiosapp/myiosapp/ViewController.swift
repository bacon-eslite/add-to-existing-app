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
        initFragmentVC()
    }

    @IBAction func onFullscreenAction(_ sender: Any) {
        let engine = FlutterEngine(name: "fullscreen")
        engine.run(withEntrypoint: nil, initialRoute: "/fullscreen")
        
        FlutterMethodChannel(name: "fullscreen", binaryMessenger: engine.binaryMessenger).setMethodCallHandler { call, result in
            switch (call.method) {
            case "message_to_flutter":
                result("Hello from iOS")
                break
            case "message_from_flutter":
                self.messageLabel.text = (call.arguments as! Dictionary<String, String>)["message"]
                break
            default:
                result(FlutterMethodNotImplemented)
            }
        }
        
        
        let vc = FlutterViewController(engine: engine, nibName: nil, bundle: nil)
        
        present(vc, animated: true)
    }
    
    func initFragmentVC() -> Void {
        let engine = FlutterEngine(name: "fragment")
        engine.run(withEntrypoint: nil, initialRoute: "/fragment")
        
        FlutterMethodChannel(name: "fragment", binaryMessenger: engine.binaryMessenger).setMethodCallHandler { call, result in
            switch call.method {
            case "message_to_flutter":
                result("Hello from iOS")
                break
            case "message_from_flutter":
                self.messageLabel.text = (call.arguments as! Dictionary<String, String>)["message"]
                break
            default:
                result(FlutterMethodNotImplemented)
            }
        }
        
        let vc = FlutterViewController(engine: engine, nibName: nil, bundle: nil)
        
        addChild(vc)
        
        guard let flutterView = vc.view else { return }
        
        flutterView.translatesAutoresizingMaskIntoConstraints = false
        
        self.fragmentView.addSubview(flutterView)
        
        let constraints = [
            flutterView.topAnchor.constraint(equalTo: self.fragmentView.topAnchor),
                    flutterView.leadingAnchor.constraint(equalTo: self.fragmentView.leadingAnchor),
                    flutterView.bottomAnchor.constraint(equalTo: self.fragmentView.bottomAnchor),
                    flutterView.trailingAnchor.constraint(equalTo: self.fragmentView.trailingAnchor)
                ]
        
        NSLayoutConstraint.activate(constraints)
        
        vc.didMove(toParent: self)
        
        flutterView.layoutIfNeeded()
    }
}

