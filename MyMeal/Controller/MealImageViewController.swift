//
//  MealImageViewController.swift
//  MyMeal
//
//  Created by Dennis Zubkoff on 06/10/2018.
//  Copyright © 2018 Denis Zubkov. All rights reserved.
//

import UIKit

class MealImageViewController: UIViewController, UIScrollViewDelegate {
    
    var image = UIImage()
    var titleImage: String?
    
    @IBOutlet weak var mealImageView: UIImageView!
    @IBOutlet weak var mealScrollView: UIScrollView!
    @IBOutlet weak var titleImageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mealImageView.image = image
        titleImageLabel.text = titleImage
        mealScrollView.maximumZoomScale = 10
        mealScrollView.minimumZoomScale = 1
        mealScrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return mealImageView
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
