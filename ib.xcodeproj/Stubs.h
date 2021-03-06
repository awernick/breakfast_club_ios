// Generated by IB v0.8.0 gem. Do not edit it manually
// Run `rake ib:open` to refresh

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <Security/Security.h>
#import <SystemConfiguration/SystemConfiguration.h>

@interface AppDelegate: UIResponder <UIApplicationDelegate>
@end

@interface UniversityDataSource: NSObject
-(IBAction) init;
-(IBAction) itemAtIndexPath:(id) index_path;
-(IBAction) filter_by_name:(id) text;

@end

@interface LoginViewController: UIViewController

@property IBOutlet UITextField * first_name_field;
@property IBOutlet UITextField * last_name_field;
@property IBOutlet UITextField * email_field;
@property IBOutlet UITextField * password_field;
@property IBOutlet UITextField * university_field;

-(IBAction) initWithUniversity:(id) university;
-(IBAction) login;
-(IBAction) signup;

@end

@interface UniversitySearchViewController: UIViewController

@property IBOutlet UISearchBar * search_bar;
@property IBOutlet UISearchDisplayController * search_controller;
@property IBOutlet UITableView * table_view;

-(IBAction) viewDidLoad;
-(IBAction) numberOfSectionsInTableView:(id) tableView;

@end

