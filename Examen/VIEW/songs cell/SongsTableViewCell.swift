//
//  SongsTableViewCell.swift
//  Examen
//
//  Created by Sem on 26/10/22.
//

import UIKit

class SongsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var lblNameSong: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setCell(withNoSong noSong: String, andNameSong strSong: String){
        self.lblNumber.text = noSong
        self.lblNameSong.text = strSong
    }

    
}
