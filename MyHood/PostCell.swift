//
//  PostCell.swift
//  MyHood
//
//  Created by Chris Hovey on 3/22/16.
//  Copyright © 2016 Chris Hovey. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(post: Post){
        titleLbl.text = post.title
        descLbl.text = post.postDesc
        
    }

}
