//
//  ViewController.swift
//  TableViewApp(courseSwiftBook)
//
//  Created by Антон Антонов on 21/05/2019.
//  Copyright © 2019 Антон Антонов. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let namedOfPlaces = ["Балкан Гриль", "Бочка", "Вкусные истории", "Дастархан", "Индокитай", "Классик", "Шок", "Bonsai", "Burger Heroes", "Kitchen", "Love&Life", "Morris Pub", "Sherlock Holmes", "Speak Easy", "X.O"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namedOfPlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        if let customCell = cell as? CustomCell {
            customCell.imageOut.image = UIImage(named: namedOfPlaces[indexPath.row])
            customCell.imageOut.layer.cornerRadius = customCell.imageOut.frame.height/2
            customCell.imageOut.clipsToBounds = true
            
            customCell.nameLable.text = namedOfPlaces[indexPath.row]
            customCell.placeLabel.text = "Place?!"
            customCell.typeOfPlace.text = "Type?!"
        }
        
//        cell.textLabel?.text = namedOfPlaces[indexPath.row]
//        cell.imageView?.image = UIImage(named: namedOfPlaces[indexPath.row])
//        cell.imageView?.bounds.height = cell.frame.height * 0.8
//        cell.imageView?.layer.cornerRadius = cell.frame.height/2
//        cell.imageView?.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    

}

