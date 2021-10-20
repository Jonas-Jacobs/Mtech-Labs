//
//  FoodTableTableViewController.swift
//  Meal Tracker
//
//  Created by Jonas Jacobs on 10/11/21.
//

import UIKit

class FoodTableViewController: UITableViewController {
    var meals: [Meal] {
        let breakfast = Meal(food: [
            Food(name: "Pancakes", description: "light fluffy sweet bread"),
            Food(name: "Eggs", description: "There eggs bro"),
            Food(name: "Crepes", description: "Flat bread with sweet insides")
        ], name: "breakfast")
        let lunch = Meal(food: [
            Food(name: "Burger", description: "Burger with burger interrior"),
            Food(name: "sandwich", description: "Sand and whitches very scary stuff"),
            Food(name: "Curry", description: "Best thing on earth")
        ], name: "lunch")
        let dinner = Meal(food: [
            Food(name: "Sushi", description: "Best food in the know universe"),
            Food(name: "Nachos", description: "Easy to make easier to eat"),
            Food(name: "cereal", description: "POV its 1 AM on a Tuesday")
        ], name: "dinner")
        
        return [breakfast, lunch, dinner]
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let meal = meals[section]
        return meal.food.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let section = indexPath.section
        let row = indexPath.row
        
        let meal = meals[section]
        let food = meal.food[row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let meal = meals[section]
        
        return meal.name
    }

}
