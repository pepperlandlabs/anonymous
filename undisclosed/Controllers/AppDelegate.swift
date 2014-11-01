import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        
        Parse.setApplicationId("PA4Qog6OI5WNxkNnSqT5hnv8VK266KOlH4sd6Vsv", clientKey: "uREcFBkByjL3BM5yYvNHcq5c7AXjS0Ad5cxfOKAV")

        PFAnalytics.trackAppOpenedWithLaunchOptionsInBackground(launchOptions, nil)

        PFTwitterUtils.initializeWithConsumerKey("rqP21Psqq6aow4bzwGVJVXjax", consumerSecret: "8cuK8Kdigst4k18giKWnVAumWozWal2R0DUUuW4CHS65rC8AvF")

        PFTwitterUtils.logInWithBlock { (user: PFUser!, error: NSError!) -> Void in
            if user == nil {
                NSLog("Uh oh. The user cancelled the Twitter login.")
                return
            } else if user.isNew {
                NSLog("User signed up and logged in with Twitter!")
            } else {
                NSLog("User logged in with Twitter!")
            }
        }

        return true;
    }
}
