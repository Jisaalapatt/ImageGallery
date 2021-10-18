//
//  ViewController.swift
//  ImageGallery
//
//  Created by Jisa Gigi on 10/18/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    var imageInt = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageGallery()
        // Do any additional setup after loading the view.
    }
    @IBAction func next(_ sender: Any) {
        imageInt += 1
        self.imageGallery()
    }
    
    @IBAction func back(_ sender: Any) {
        imageInt -= 1
        self.imageGallery()
    }
    func imageGallery(){
        label1.text = String("\(imageInt)/8")

        imageView.image = UIImage(named: "Image\(imageInt)")
       /// imageView.layer.borderWidth = 2.0
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOffset = CGSize(width: 10, height: 10)
        imageView.layer.shadowRadius = 10
        imageView.layer.shadowOpacity = 0.5
       // imageView.layer.borderColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5).cgColor
       // imageView.layer.cornerRadius = 1
       // imageView.clipsToBounds = true
        if imageInt == 1{
            backButton.isEnabled = false
            backButton.alpha = 0.25
            
        }else if imageInt == 8{
           nextButton.isEnabled = false
            nextButton.alpha = 0.25
            
        }else{
            backButton.isEnabled = true
            backButton.alpha = 1
            nextButton.isEnabled = true
            nextButton.alpha = 1
        }
        
        
    }
    
}

