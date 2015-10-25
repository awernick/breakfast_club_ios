class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UniversitySearchViewController.alloc.initWithNibName("UniversitySearchViewController", bundle: nil)
    # navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = rootViewController # navigationController
    @window.makeKeyAndVisible
    true
  end
end
