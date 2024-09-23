import Flutter
import UIKit
import ZaloSDK

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    open url: URL,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
//    ZDKApplicationDelegate.sharedInstance().application(<#T##app: UIApplication!##UIApplication!#>, open: <#T##URL!#>)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

      // Zalo function go here
    override func application(_ app: UIApplication, open url: URL, options:
        [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        super.application(app, open: url, options: options)
        return ZDKApplicationDelegate.sharedInstance().application(app, open: url, options: options)
    }
}
