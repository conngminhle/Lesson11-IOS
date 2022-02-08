//
//  RouteGestureVC.swift
//  Lesson11
//
//  Created by Lê Công Minh on 07/02/2022.
//

import UIKit

class RouteGestureVC: UIViewController {
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRouteGesture()
    }
    
    func setupRouteGesture() {
        //Khai báo
        let route = UIRotationGestureRecognizer(target: self, action: #selector(routeOnLogo))
        imgLogo.isUserInteractionEnabled = true
        imgLogo.addGestureRecognizer(route)
    }
    
    @objc func routeOnLogo(route: UIRotationGestureRecognizer) {
        //Thực hiện
        if let view = route.view {
            view.transform = view.transform.rotated(by: route.rotation)
            route.rotation = 0
        }
    }
}