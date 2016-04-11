//
//  TodosViewController.swift
//  bitlist
//
//  Created by Mihir Waknis on 12/19/15.
//  Copyright © 2015 mihirwaknis. All rights reserved.
//

import UIKit

class TodosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var baseArray: [[TodoModel]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let todo1 = TodoModel(title: "Study iOS", favorited:
            false, dueDate: NSDate(), completed: false, repeated:
        nil, reminder: nil)
        
        let todo2 = TodoModel(title: "Eat Dinner", favorited: false, dueDate: nil,
            completed: false, repeated: nil, reminder: nil)
        
        let todo3 = TodoModel(title: "Gym", favorited: false, dueDate: NSDate(),
            completed: false, repeated: nil, reminder: nil)
        
        baseArray = [[todo1, todo2, todo3]]
        
        tableView.dataSource = self
        tableView.delegate = self 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editBarButtonItemTapped(sender: UIBarButtonItem) {
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell: AddTodoTableViewCell = tableView.dequeueReusableCellWithIdentifier("AddTodoCell")
            as!  AddTodoTableViewCell
            
            cell.backgroundColor = UIColor(red: 208/255, green: 198/255, blue: 177/225, alpha: 0.7)
            
            return cell
        }
        
        else if indexPath.section == 1 || indexPath.section == 2 {
            let currentTodo = baseArray[indexPath.section - 1]
                [indexPath.row]
            
            let cell: TodoTableViewCell = tableView.dequeueReusableCellWithIdentifier("TodoCell") as!
            TodoTableViewCell
            
            cell.titleLabel.text = currentTodo.title
            
        }
        
        
        return UITableViewCell()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else if section == 1 {
             return baseArray[0].count
        }
        else if section == 2 {
             return baseArray[2].count
        }
        else {
            return 0
        }
    }
   
}












