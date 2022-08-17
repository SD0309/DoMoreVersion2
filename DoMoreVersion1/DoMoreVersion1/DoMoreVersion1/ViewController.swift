//
//  ViewController.swift
//  DoMoreVersion1
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    var toDo1 = ToDo()
    //toDo1.title = "Say Hi to Karlie!"
    
    var toDo2 = ToDo()
    //toDo2.title = "Make a productivity app"
    
    var toDo3 = ToDo()
    //toDo3.title = "Make my Bed"
    
    let todos = [toDo1,toDo2,toDo3]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView,cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        
        let cell =  tableView.dequeueReusableCell(withIdentifier: "checked cell", for: indexPath) as! CheckTableViewCell
        let todo = todos[indexPath.row]
       
        cell.set(title: todo.title, checked: todo.isComplete)
       
        return cell
    }
    
}
