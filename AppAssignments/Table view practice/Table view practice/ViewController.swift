//
//  ViewController.swift
//  Table view practice
//
//  Created by Jonas Jacobs on 10/12/21.
//

import UIKit

struct PetName {
    let id: UUID
    let name: String
    let animal: String
    
}

class ViewController: UITableViewController {
    
    
    var petNames = [PetName(id: UUID(), name: "lenard", animal: "Lizard"),
                    PetName(id: UUID(), name:"Bingus", animal: "Dog"),
                    PetName(id: UUID(), name: "yourMom", animal: "Person")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCreateNew", let vc = segue.destination as? Detail2ViewController{
            
                vc.delegate = self
        }
            
            if segue.identifier == "toEdit", let vc = segue.destination as? Detail2ViewController, let petName = sender as? PetName {
               
                vc.delegate = self
                vc.petName = petName
            }
    }
}
    extension ViewController {
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let petName = petNames[indexPath.row]
            performSegue(withIdentifier: "toEdit", sender: petName)
        }

}

extension ViewController {
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        let petName = petNames[indexPath.row]
        
        cell.textLabel?.text = petName.name
        cell.detailTextLabel?.text = petName.animal
        
        return cell
        }
}
extension ViewController: DetailViewControllerDelegate {
    func didCreateNewPetName(_ newPetName: PetName) {
        petNames.append(newPetName)
        
    }
    
    func didEditPetName(_ editedPetName: PetName) {
            guard let editedIndex = (petNames.firstIndex { storedPetName in
                storedPetName.id == editedPetName.id
            }) else {
                print("Something went horribly wrong")
                return
            }
            
            petNames.remove(at: editedIndex)
            petNames.insert(editedPetName, at: editedIndex)
        }
}
