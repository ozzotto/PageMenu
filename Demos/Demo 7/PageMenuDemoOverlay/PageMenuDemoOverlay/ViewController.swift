//
//  ViewController.swift
//  PageMenuDemoOverlay
//
//  Created by Othonas Antoniou on 26/10/2017.
//

import UIKit
import PageMenu

class ViewController: UIViewController {
    
    private var pageMenu : CAPSPageMenu?
    private let barColor = UIColor(red: 28.0/255.0, green: 125.0/255.0, blue: 206.0/255.0, alpha: 1.0)
    private let gray193Color = UIColor(red: 193.0/255.0, green: 193.0/255.0, blue: 193.0/255.0, alpha: 1.0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        // Initialize view controllers to display and place in array
        var controllerArray : [UIViewController] = []
        if let controller1 : PageViewController = PageViewController.makeInstance(title: "Tab 1") {
            controllerArray.append(controller1)
        }
        if let controller2 : PageViewController = PageViewController.makeInstance(title: "Tab 2") {
            controllerArray.append(controller2)
        }
        
        // Customize menu (Optional)
        let configuration = CAPSPageMenuConfiguration()
        configuration.addBottomMenuHairline = false
        configuration.scrollMenuBackgroundColor = barColor
        configuration.viewBackgroundColor = gray193Color
        configuration.selectionIndicatorColor = barColor
        configuration.menuItemFont = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        configuration.selectedMenuItemLabelColor = .white
        configuration.unselectedMenuItemLabelColor = gray193Color
        configuration.menuHeight = 60.0
        configuration.centerMenuItems = true
        configuration.menuMargin = 20.0
        configuration.useOverlayStyleSelectionIndicator = true
        configuration.overlayStyleSelectionIndicatorColor = gray193Color.withAlphaComponent(0.3)
        configuration.overlayStyleSelectionIndicatorCornerRadius = 18.0
        configuration.overlayStyleSelectionIndicatorPaddingX = 10.0
        configuration.overlayStyleSelectionIndicatorPaddingY = 12.0
        
        // Initialize scroll menu
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: topLayoutGuide.length, width: view.frame.width, height: view.frame.height), configuration: configuration)
        addChildViewController(pageMenu!)
        view.addSubview(pageMenu!.view)
        pageMenu!.didMove(toParentViewController: self)
        
    }


}

