//
//  pdf.swift
//  heena
//
//  Created by Appinventiv-PC on 28/03/18.
//  Copyright © 2018 Appinventiv-PC. All rights reserved.
//

//import Foundation
//import SimplePDF
//
//let a4PaperSize = CGSize(width: 595, height: 842)
//let pdf = SimplePDF(pageSize: a4PaperSize)
//pdf.setContentAlignment(.center)
//
//
//
//pdf.addLineSpace(30)
//
//pdf.setContentAlignment(leftLeft)
//pdf.addText("Normal text follows by line separator")
//pdf.addLineSeparator()
//
//pdf.addLineSpace(20.0)
//
//pdf.setContentAlignment(.right)
//pdf.addText("Text after set content alignment to .Right")
//pdf.addLineSpace(20.0)
//
//pdf.addText("l purus.")
//
//pdf.addLineSpace(30)
//
//pdf.setContentAlignment(.Center)
//
//pdf.addText("Center Text")
//pdf.addLineSpace(20.0)
//pdf.addText("nt montes, nascetur ridiculus mus. Proin scelerisque posuere mi, non consequat mauris auctor a. Fusce lacinia auctor lectus a elementum.")
//
//
//pdf.addLineSpace(30.0)
//
//pdf.setContentAlignment(.Left)
//let textString = "anmol"
//pdf.addText(textString)
//
//
//pdf.beginNewPage()
//pdf.addText("Begin new page")
//
//
//    if let documentDirectories = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first {   in
//    
//    let fileName = "example.pdf"
//    let documentsFileName = documentDirectories + "/" + fileName
//    
//    let pdfData = pdf.generatePDFdata()
//    do{
//        try pdfData.writeToFile(documentsFileName, options: .DataWritingAtomic)
//        print("\nThe generated pdf can be found at:")
//        print("\n\t\(documentsFileName)\n")
//    }catch{
//        print(error)
//}
//}
//
