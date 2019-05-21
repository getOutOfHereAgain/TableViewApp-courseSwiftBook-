//
//  ViewController.swift
//  TableViewApp(courseSwiftBook)
//
//  Created by Антон Антонов on 21/05/2019.
//  Copyright © 2019 Антон Антонов. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
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
        cell.textLabel?.text = namedOfPlaces[indexPath.row]
        cell.imageView?.image = UIImage(named: namedOfPlaces[indexPath.row])
        return cell
    }
    

}

