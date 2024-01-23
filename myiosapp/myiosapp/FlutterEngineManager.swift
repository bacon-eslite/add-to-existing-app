import Foundation
import Flutter

class FlutterEngineManager: NSObject {
    
    static let shared = FlutterEngineManager()
    
    private let cachedEngines = NSCache<NSString, FlutterEngine>()
    
    func contains(engineId: String) -> Bool {
        return cachedEngines.object(forKey: NSString(string: engineId)) != nil
    }
    
    func get(engineId: String) -> FlutterEngine? {
        print("get \(engineId)")
        let e = cachedEngines.object(forKey: NSString(string: engineId))
        print("e: \(e)")
        return e
    }
    
    func destory(engineId: String) -> Void {
        if !contains(engineId: engineId) {
            return
        }
        cachedEngines.removeObject(forKey: NSString(string: engineId))
    }
    
    func warmup(tag: FlutterRoutes) -> FlutterEngine {
        print("tag: \(tag)")
        
        let e = FlutterEngine(name: "\(tag)")
        e.run(withEntrypoint: nil, initialRoute: tag.rawValue)
        cachedEngines.setObject(e, forKey: NSString(string: "\(tag)"))
        initDefaultMethodChannel(tag: tag)
        return e
    }
    
    func getVC(tag: FlutterRoutes) -> FlutterViewController? {
        print("getVC: \(tag)")
        guard let e = get(engineId: "\(tag)") else { return nil }
        return FlutterViewController(engine: e, nibName: nil, bundle: nil)
    }
    
    private func initDefaultMethodChannel(tag: FlutterRoutes) {
        guard let e = get(engineId: "\(tag)") else { return }
        
        FlutterMethodChannel(name: "\(FlutterRoutes.Main)", binaryMessenger: e.binaryMessenger).setMethodCallHandler { call, result in
            print("method: \(call.method)")
            switch (call.method) {
            case "message_to_flutter":
                result("Hello from iOS")
                break
            case "exit":
                if e.viewController?.isBeingPresented ?? false {
                    e.viewController?.navigationController?.popViewController(animated: true)
                    return
                }
                e.viewController?.view.removeFromSuperview()
                e.viewController?.removeFromParent()
                result("exit")
                break
            default:
                result(FlutterMethodNotImplemented)
            }
        }
    }
    
    static func attachView(child: UIView, parent: UIView) {
        
        child.translatesAutoresizingMaskIntoConstraints = false
        
        parent.addSubview(child)
        
        let constraints = [
            child.topAnchor.constraint(equalTo: parent.topAnchor),
                    child.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
                    child.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
                    child.trailingAnchor.constraint(equalTo: parent.trailingAnchor)
                ]
        
        NSLayoutConstraint.activate(constraints)
    }
}

enum FlutterRoutes: String {
    case Main = "/main"
    case PartialView = "/partial_view"
    case Fullscreen = "/fullscreen"
    case Weather = "/weather"
    case Users = "/users"
}


