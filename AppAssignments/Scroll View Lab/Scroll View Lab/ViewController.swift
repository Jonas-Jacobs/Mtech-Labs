//
//  ViewController.swift
//  Scroll View Lab
//
//  Created by Jonas Jacobs on 10/7/21.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollViewOutlet: UIScrollView!
    @IBOutlet weak var imgaeViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollViewOutlet.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / imgaeViewOutlet.bounds.width
        let heightScale = size.height / imgaeViewOutlet.bounds.height
        let scale = min(widthScale, heightScale)
        scrollViewOutlet.minimumZoomScale = scale
        scrollViewOutlet.zoomScale = scale
    }
    
    //MARK: Scroll View Delegate Stuff
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imgaeViewOutlet
    }
   
}

