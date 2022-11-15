//
//  AlbumTableViewCell.swift
//  Examen
//
//  Created by Anayeli Guerrero Pulido on 14/11/22.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {

    @IBOutlet weak var ContenedorUIView: UIView!
    
    @IBOutlet weak var imgAlbum: UIImageView!
    
    @IBOutlet weak var viewCentro: UIView!
    
    @IBOutlet weak var lblAlbum: UILabel!
    
    @IBOutlet weak var lblArtista: UILabel!
    
    @IBOutlet weak var lblAnio: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
