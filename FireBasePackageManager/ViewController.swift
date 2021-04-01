//
//  ViewController.swift
//  FireBasePackageManager
//
//  Created by Gene Backlin on 4/1/21.
//
/*
 echo "*** Uploading symbol files to Crashlytics"
 ${BUILD_DIR}/../../SourcePackages/checkouts/firebase-ios-sdk/Crashlytics/upload-symbols -d -p iOS -gsp ${BUILT_PRODUCTS_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/GoogleService-Info.plist ${DWARF_DSYM_FOLDER_PATH}
 echo "*** Script completed"#imageLiteral(resourceName: "simulator_screenshot_FD04B8AD-C81D-4B2F-84E2-D2FD83711473.png")

 NSString *const kFirebaseCoreErrorDomain = @"com.firebase.core";

 [NSException raise:kFirebaseCoreErrorDomain
             format:@"`[FIRApp configure];` (`FirebaseApp.configure()` in Swift) could not find "
                    @"a valid GoogleService-Info.plist in your project. Please download one "
                    @"from %@.",
                    kPlistURL];

 */

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
          AnalyticsParameterItemID: "id-FireBasePackageManager-viewDidLoad",
          AnalyticsParameterItemName: "FireBasePackageManager",
          AnalyticsParameterContentType: "cont"
          ])
        Crashlytics.crashlytics().setCustomValue(2021, forKey: "year")
        Crashlytics.crashlytics().setCustomValue(Date(), forKey: "time")
        Crashlytics.crashlytics().setUserID("testuser")
    }

    @IBAction func crashApp(_ sender: Any) {
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
          AnalyticsParameterItemID: "id-FireBasePackageManager-crashApp",
          AnalyticsParameterItemName: "FireBasePackageManager",
          AnalyticsParameterContentType: "cont"
          ])
        Crashlytics.crashlytics().log("force error in function crashApp")
        fatalError()
    }
    
}

