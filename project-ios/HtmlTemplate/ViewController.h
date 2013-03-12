//
//  ViewController.h
//  MindReader-iOS
//
//  Created by Corrado Ubezio on 09/03/13.
//  Copyright (c) 2013 Corerd. All rights reserved.
//

/*
 Embed HTML, CSS and Javascript in an universal native iOS app.
 
 Require:
 - Start a new XCode Project using the single view-based app template.
 - Add an UIWebView to each ViewController_iPad and ViewController_iPhone files
   and connect them in the ViewController.
 - Load the HTML, CSS and Javascript files in to the Web View.
 - Open a console in the project-ios folder.
 - Create a new folder named www.
 - Create a symlink reference from the “src” directory to “project-ios/www/src”.
     Use full path reference, NOT relative.
     E.g.: ln -s /path/to/MobileTemplates/www/ www
 - In "Project Navigator" right click on project name.
 - In the "Add Files to <project-name>" dialog, choose the www folder,
   select "Copy items into destination group's folder
   and select "Create folder reference for any added folders".
 
 Remove all extended attributes from each project file using the command:
 xattr -c -r <project_root_folder>
 
 Reference: [A Native iOS Web App Tutorial/Template]
 (http://www.bitwit.ca/blog/an-native-ios-web-app-tutorialtemplate/)
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

/// Connect to the iPhone ViewController UIWebView.
@property (nonatomic, retain) IBOutlet UIWebView *iPhoneWebView;

/// Connect to the iPad ViewController UIWebView.
@property (retain, nonatomic) IBOutlet UIWebView *iPadWebView;

@end
