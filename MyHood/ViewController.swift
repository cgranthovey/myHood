//
//  ViewController.swift
//  MyHood
//
//  Created by Chris Hovey on 3/22/16.
//  Copyright © 2016 Chris Hovey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {       //if we have a tableView we need to provide these delegates to the table can call the functions it needs to

    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self   //this is saying we need a delegate for these table functions and we are assigning the delegate to the VC
        tableView.dataSource = self  //the VC is the delegate and she's listeing.  Hey where's the data, well the VC is caying it
        //tableView.estimatedRowHeight = 79.0      this allows for flexible row heights if need more space for rows.  with this we don't nee the func tableView heightForRowAtIndexPath
        
        var post = Post(imagePath: "", title: "hey there", postDesc: "love is in the air")
        var post2 = Post(imagePath: "", title: "yoyo", postDesc: "gpa was a yoyo star")
        var post3 = Post(imagePath: "", title: "SingSingSing", postDesc: "yep")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()  //will refresh the table funcs below 
        
        
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count  //we want the same number of rows in our table as posts in our array
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {  //create a new cell each time we need to put data in it
        let post = posts[indexPath.row] //indexPath.row will give us the number of the current row and we will thus have the correct post info
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell{  //call table view here and ask if it has a cell we can use.  It will give us UITableViewCell but we will cast it as a PostCell
            cell.configureCell(post)
            return cell
        } else {  //in case it fails to find new cell
            let cell = PostCell()  //we just create our own cell
            cell.configureCell(post)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 79.0
    }
    
//    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {     when we want to click on a row and have new data or view load
//        <#code#>
//    }
    
}

