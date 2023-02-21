//
//  ViewController.swift
//  ImageViews
//
//  Created by DIRECTOR on 12.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
     AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
         }
    
    @IBOutlet var imageView: UIImageView!
    
    var imageToShow = 0
    
    
    @IBAction func addImage1(sender: AnyObject) {
        let image = UIImage(named: "pokimanelol.jpg")
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x:75, y:50, width: 250, height: 250)
        self.view.addSubview(imageView)
    }
    
    
    @IBAction func addImage2(sender: AnyObject) {
        
        if (imageToShow == 0 ) {
            imageView.image = UIImage(named: "Ariana_Grande.jpeg")
            imageToShow = 1
        } else {
            imageView.image = UIImage(named: "Megan_Fox.png")
            imageToShow = 0
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

