//
//  SongsTableViewCell.swift
//  Examen
//
//  Created by LUIS GONZALEZ on 26/10/22.
//

import UIKit

class SongsTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var CellContainer: UIView!
    @IBOutlet weak var CellImageAlbum: UIImageView!
    @IBOutlet weak var lblCellAlbumName: UILabel!
    
    @IBOutlet weak var lblcellArtistName: UILabel!
    
    @IBOutlet weak var lblCellSongName: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
