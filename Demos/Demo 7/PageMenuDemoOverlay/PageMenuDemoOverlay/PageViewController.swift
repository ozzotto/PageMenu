//
//  PageViewController.swift
//  PageMenuDemoOverlay
//
//  Created by Othonas Antoniou on 26/10/2017.
//

import UIKit

class PageViewController: UIViewController {
    
    private static let storyboardIdentifier = "PageViewController"
    
    static func makeInstance(title: String) -> PageViewController? {
        guard let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: storyboardIdentifier) as? PageViewController else { return nil }
        controller.title = title
        return controller
    }
    
    @IBOutlet var lblTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.text = title
    }

}
