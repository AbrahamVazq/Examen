//
//  CoverTableViewCell.swift
//  Examen
//
//  Created by Sem on 26/10/22.
//

import UIKit

class CoverTableViewCell: UITableViewCell {
    @IBOutlet weak var imgCover: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setCell(withAlbum alb: Album){
        self.imgCover.image = UIImage(named: alb.artist ?? "")
}
}
