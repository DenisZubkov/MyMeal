//
//  MealDetailViewController.swift
//  MyMeal
//
//  Created by Dennis Zubkoff on 06/10/2018.
//  Copyright © 2018 Denis Zubkov. All rights reserved.
//

import UIKit

class MealDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var meal: Meal?
    
    @IBOutlet weak var mealDetailTableView: UITableView!
    @IBOutlet weak var mealImageView: UIImageView!
    @IBOutlet weak var imageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageButton.imageView?.contentMode = .scaleAspectFit
        if let image = meal?.photo {
            setButtonImage(image: image)
        }

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mealDetailTableView.dequeueReusableCell(withIdentifier: "MealDetailCell", for: indexPath) as! MealDetailTableViewCell
        if let meal = meal {
            switch indexPath.row {
            case 0:
                cell.keyLabel.text = "Что съел:"
                cell.valueLabel.text = meal.name
            case 1:
                cell.keyLabel.text = "Когда съел:"
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "dd.MM.yyyy hh:mm:ss"
                let dateString = dateFormatter.string(from: meal.timestamp)
                cell.valueLabel.text = dateString
            case 2:
                cell.keyLabel.text = "Понравилось?:"
                cell.valueLabel.text = String(meal.rating)
            case 3:
                cell.keyLabel.text = "Комментарий:"
                cell.valueLabel.text = meal.notes
            default:
                break
            }
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ImageSegue" {
            if let image = self.imageButton.imageView?.image {
                let dvc = segue.destination as! MealImageViewController
                dvc.image = image
                if let titleImage = meal?.name {
                    dvc.titleImage = titleImage
                }
            }
        }
    }
    
    func setButtonImage(image: UIImage) {
        self.imageButton.setImage(image, for: .normal)
        self.imageButton.setImage(image, for: .highlighted)
        self.imageButton.setImage(image, for: .selected)
        self.imageButton.setImage(image, for: .focused)
    }
    
    @IBAction func imageTappedButton(_ sender: UIButton) {
        
    }
    
    @IBAction func unwindFromImage(unwindSegue: UIStoryboardSegue) {
        
    }

}
