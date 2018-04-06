//
//  ViewController.swift
//  heena
//
//  Created by Appinventiv-PC on 28/03/18.
//  Copyright © 2018 Appinventiv-PC. All rights reserved.
//

import UIKit
import SimplePDF

class ViewController: UIViewController {
    //Mark :- Properties
    var taskArr = [Task]()
    var task: Task!
    // Mark :- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        task = Task()
            for _ in 0..<5 {
                task.name = "anmol"
                task.date = "\(Date())"
                task.startTime = "Start \(Date())"
                task.endTime = "End \(Date())"
                taskArr.append(task!)
            }
        }
    //Mark :-PDFConversion Button
    @IBAction func convertToPdfButton(_ sender: UIButton) {
        let A4paperSize = CGSize(width: 595, height: 842)
        let pdf = SimplePDF(pageSize: A4paperSize)
         pdf.beginHorizontalArrangement()
         pdf.addHorizontalSpace(60)
         pdf.endHorizontalArrangement()
         pdf.addVerticalSpace(70)
         let dataArray = [["Test1", "Test2"],["Test3", "Test4"]]
         pdf.addTable(2, columnCount: 2, rowHeight: 20.0, columnWidth: 30.0, tableLineWidth: 1.0, font: UIFont.systemFont(ofSize: 5.0), dataArray: dataArray)
         if let documentDirectories = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first {
            let fileName = "example.pdf"
            let documentsFileName = documentDirectories + "/" + fileName
            let fileUrlllll = URL(fileURLWithPath: documentsFileName)
            let pdfData = pdf.generatePDFdata()
                do{
                          try pdfData.write(to: fileUrlllll, options: .atomic)
                           print("\n\t\(documentsFileName)\n")
                   }
                catch{
                            print(error)
                    }
        }
    }
    //Mark :- CSV conversion
    @IBAction func convertToCSVBUtton(_ sender: UIButton) {
        let fileName = "Tasks.csv"
        let path = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName)
        var csvText = "Date,Task Name,Time Started,Time Ended\n"
        
        for task in taskArr {
            let newLine = "\(task.date),\(task.name),\(task.startTime),\(task.endTime)\n"
            csvText.append(newLine)
        }
        
        do {
            try csvText.write(to: path!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Failed to create file")
            print("\(error)")
        }
        print(path ?? "not found")
   }
}
// Mark :- model
class Task: NSObject {
    var date:String = ""
    var name: String = ""
    var startTime: String = ""
    var endTime: String = ""
}

