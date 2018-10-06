//
//  MealListTableViewController.swift
//  MyMeal
//
//  Created by Denis Zubkov on 05/10/2018.
//  Copyright © 2018 Denis Zubkov. All rights reserved.
//

import UIKit

class MealListTableViewController: UITableViewController {
    var meals: [Meal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMeals()
         tableView.tableFooterView = UIView(frame: CGRect.zero)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals.count
    }

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealListCell", for: indexPath) as! MealListTableViewCell
        let meal = meals[indexPath.row]
        cell.textLabel?.text = meal.name
        cell.imageView?.image = meal.photo
     return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MealDetailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let dvc = segue.destination as! MealDetailViewController
                dvc.meal = meals[indexPath.row]
            }
        }
    }
    
    @IBAction func unwindFromDetail(unwindSegue: UIStoryboardSegue) {
        
    }

    
    func saveMeals() {
    }
    func loadMeals() {
        if let image = UIImage(named: "hamburger_big") {
            let meal = Meal.init(name: "Гамбургер",
                                   photo: image,
                                   notes: "Рубленый бифштекс из натуральной цельной говядины на карамелизованной булочке, заправленной горчицей, кетчупом, луком и кусочком маринованного огурчика.",
                                   rating: 4,
                                   timestamp: Date())
            meals.append(meal)
        }
        if let image = UIImage(named: "big_mac_big") {
            let meal = Meal.init(name: "Биг Мак®",
                                 photo: image,
                                 notes: "Большой сандвич с двумя рублеными бифштексами из натуральной цельной говядины на специальной булочке «Биг Мак» ®, заправленной луком, двумя кусочками маринованных огурчиков, ломтиком сыра «Чеддер», свежим салатом, и специальным соусом «Биг Мак»®.",
                                 rating: 5,
                                 timestamp: Date())
            meals.append(meal)
        }
        if let image = UIImage(named: "Fries_small") {
            let meal = Meal.init(name: "Картофель фри",
                                 photo: image,
                                 notes: "Вкусные, обжаренные в растительном фритюре и слегка посоленные палочки картофеля.",
                                 rating: 3,
                                 timestamp: Date())
            meals.append(meal)
        }
        if let image = UIImage(named: "Salat-ovoshnoi-big") {
            let meal = Meal.init(name: "Салат овощной",
                                 photo: image,
                                 notes: "Салат из сочных салатных листьев, помидоров Черри, черных оливок и свежих огурцов, приправленный по Вашему выбору салатными заправками.",
                                 rating: 4,
                                 timestamp: Date())
            meals.append(meal)
        }
        if let image = UIImage(named: "PieCherry-big") {
            let meal = Meal.init(name: "Пирожок с вишней",
                                 photo: image,
                                 notes: "Обжаренный во фритюре пирожок со сладкой начинкой из вишни.",
                                 rating: 4,
                                 timestamp: Date())
            meals.append(meal)
        }
        if let image = UIImage(named: "capuccino03") {
            let meal = Meal.init(name: "Капучино",
                                 photo: image,
                                 notes: "Кофе натуральный жареный в зернах. Темнообжаренный. Нормализованное молоко",
                                 rating: 4,
                                 timestamp: Date())
            meals.append(meal)
        }
    }
}
