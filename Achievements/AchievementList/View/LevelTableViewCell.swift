//
//  LevelTableViewCell.swift
//  Achievements
//
//  Created by Ayman Zeine on 7/29/18.
//  Copyright © 2018 Ayman Zeine. All rights reserved.
//

import UIKit
class LevelTableViewCell: UITableViewCell {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var constLabel: UILabel!
    @IBOutlet weak var levelNumLbl: UILabel!
    
    @IBOutlet weak var currPointsLbl: UILabel!
    @IBOutlet weak var totalPointsLbl: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBOutlet var infoBG: [UIView]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor.clear
    }
    
    func set(forLevel level: LevelModel) {
        //update information per cell
        self.selectionStyle = .none
        
        levelNumLbl?.text = level.level
        currPointsLbl.text = "\(level.progress)pts"
        totalPointsLbl.text = "\(level.total)pts"
        
        progressBar.progress = Float(level.progress)/Float(level.total)
        
        let url = URL(string: level.bg_image_url)
        let data = try? Data(contentsOf: url!)
        bgImage?.image = UIImage(data: data!)
        
        if(level.accessible == false) {
            bgImage.alpha = 0.5
            bgImage.isUserInteractionEnabled = false
        }else{
            bgImage.alpha = 1
            bgImage.isUserInteractionEnabled = true
        }
    }
}
