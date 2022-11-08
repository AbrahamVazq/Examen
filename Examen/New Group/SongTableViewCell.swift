//
//  SongTableViewCell.swift
//  Examen
//
//  Created by LUIS GONZALEZ on 07/11/22.
//

import UIKit

class SongTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblSongTitle: UILabel!
    static var nib: UINib { return UINib(nibName: identifier, bundle: nil ) }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
