//
//  CAPSPageMenuConfiguration.swift
//  PageMenuConfigurationDemo
//
//  Created by Matthew York on 3/5/17.
//  Copyright © 2017 Aeron. All rights reserved.
//

import UIKit

public class CAPSPageMenuConfiguration {
    open var menuHeight : CGFloat = 34.0
    open var menuMargin : CGFloat = 15.0
    open var menuItemWidth : CGFloat = 111.0
    open var selectionIndicatorHeight : CGFloat = 3.0
    open var scrollAnimationDurationOnMenuItemTap : Int = 500 // Millisecons
    open var selectionIndicatorColor : UIColor = UIColor.white
    open var selectedMenuItemLabelColor : UIColor = UIColor.white
    open var unselectedMenuItemLabelColor : UIColor = UIColor.lightGray
    open var scrollMenuBackgroundColor : UIColor = UIColor.black
    open var viewBackgroundColor : UIColor = UIColor.white
    open var bottomMenuHairlineColor : UIColor = UIColor.white
    open var menuItemSeparatorColor : UIColor = UIColor.lightGray
    
    open var menuItemFont : UIFont = UIFont.systemFont(ofSize: 15.0)
    open var menuItemSeparatorPercentageHeight : CGFloat = 0.2
    open var menuItemSeparatorWidth : CGFloat = 0.5
    open var menuItemSeparatorRoundEdges : Bool = false
    
    open var addBottomMenuHairline : Bool = true
    open var menuItemWidthBasedOnTitleTextWidth : Bool = false
    open var titleTextSizeBasedOnMenuItemWidth : Bool = false
    open var useMenuLikeSegmentedControl : Bool = false
    open var centerMenuItems : Bool = false
    open var enableHorizontalBounce : Bool = true
    open var hideTopMenuBar : Bool = false
    
    open var useOverlayStyleSelectionIndicator : Bool = false
    open var overlayStyleSelectionIndicatorColor : UIColor = .clear
    open var overlayStyleSelectionIndicatorCornerRadius : CGFloat = 8.0
    open var overlayStyleSelectionIndicatorPaddingX : CGFloat = 0.0
    open var overlayStyleSelectionIndicatorPaddingY : CGFloat = 0.0
    
    open var menuItemsAccessibilityLabels: [Int: String] = [Int: String]()
    open var menuItemsAccessibilityIdentifiers: [Int: String] = [Int: String]()
    
    public init() {
        
    }
}
