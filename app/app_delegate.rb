class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible
    
    # Present login modal screen
    login_modal = LoginViewController.alloc.initWithNibName("LoginViewController", bundle: nil)
    navigationController.modalPresentationStyle = UIModalPresentationPopover
    navigationController.presentViewController(login_modal, animated: true, completion: nil)

    true
  end
end
