//
//  ContentView.swift
//  Lab03-Calc-Bessonova
//
//  Created by user on 17.12.2021.
//  Copyright © 2021 KITMobile. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State var a: String = "0"
	@State var b: String = "0"
	@State var fn: String = ""
    var body: some View {
			ZStack{
				
				Color("backgr")
				VStack(spacing:1){
					Spacer()
					Text(fn.count == 0 ? a : b).font(.system(size:80)).frame(width: UIScreen.main.bounds.width, alignment: .trailing)
					
					HStack(spacing:1){
					
					Button(action:{
						self.a = "0"
						self.b = "0"
						self.fn = ""
					}){
						
						ZStack{
							
							Color("btn_spec")
							Text("AC")
						   }
					  }
					Button(action:{
						
						self.fn = "+/-"
					}){
					
					ZStack{
						
						Color("btn_spec")
						Image(systemName: "plusminus")
						 }
					}
					
					Button(action:{
						
						self.fn = "%"
					}){
					
					ZStack{
						
						Color("btn_spec")
						Text("%")
						 }
					}
					
					Button(action:{
						
						self.fn = "/"
						
					}){
					
					ZStack{
						
						Color("btn_act")
						Image(systemName: "divide")
						 }
					}
					
					}.frame(height: UIScreen.main.bounds.width / 4)
				
					HStack(spacing:1){
					
					Button(action:{
						if (self.fn.count == 0)
						{
							self.a += "7"
						}
						else{
							self.b += "7"
						}
						
					}){
						
						ZStack{
							
							Color("btn_dig")
							Text("7")
						   }
					  }
					Button(action:{
						if(self.fn.count == 0){
							self.a = "8"
						}
						else{
							self.b = "8"
						}
						
					}){
					
					ZStack{
						
						Color("btn_dig")
						Text("8")
						 }
					}
					
					Button(action:{
						if(self.fn.count ==  0){
							self.a = "9"
						}
						else{
							self.b = "9"
						}
						
					}){
					
					ZStack{
						
						Color("btn_dig")
						Text("9")
						 }
					}
					
					Button(action:{
						
						self.fn = "*"
					}){
					
					ZStack{
						
						Color("btn_act")
						Image(systemName: "multiply")
						 }
					}
					
					}.frame(height:UIScreen.main.bounds.width / 4)
					
					HStack(spacing:1){
						Button(action:{
							
							if (self.fn.count == 0)
							{
								self.a = "4"
							}
							else{
								self.b = "4"
							}
							
						}){
							ZStack{
							Color("btn_dig")
							Text("4")
							}
							
						}
						Button(action:{
							if (self.fn.count == 0)
							{
								self.a = "5"
							}
							else{
								self.b = "5"
							}
						}){
							ZStack{
							Color("btn_dig")
								Text("5")
								
							}
							
						}
						Button(action:{
							
							if (self.fn.count == 0)
							{
								self.a = "6"
							}
							else{
								self.b = "6"
							}						}){
							ZStack{
								Color("btn_dig")
								Text("6")
							}
						}
						Button(action:{
							self.fn = "-"
						}){
							ZStack{
								Color("btn_act")
								Text("-")
							}
						}
						
					}.frame(height:UIScreen.main.bounds.width / 4)
					
					HStack(spacing:1){
						Button(action:{
							
							if (self.fn.count == 0)
							{
								self.a = "1"
							}
							else{
								self.b = "1"
							}						}){
							ZStack{
								Color("btn_dig")
								Text("1")
							}
						}
						Button(action:{
							if (self.fn.count == 0)
							{
								self.a = "2"
							}
							else{
								self.b = "2"
							}
						}){
							ZStack{
								Color("btn_dig")
								Text("2")
							}
						}
						Button(action:{
							
							if (self.fn.count == 0)
							{
								self.a = "3"
							}
							else{
								self.b = "3"
							}						}){
							ZStack{
								Color("btn_dig")
								Text("3")
							}
						}
						Button(action:{
							self.fn = "+"
						}){
							ZStack{
								Color("btn_act")
								Text("+")
							}
						}
					}.frame(height: UIScreen.main.bounds.width / 4)
					HStack(spacing:1){
						Button(action:{
							
							if (self.fn.count == 0)
							{
								self.a = "0"
							}
							else{
								self.b = "0"
							}						}){
							ZStack{
								Color("btn_dig")
								Text("0")
							}
						}.frame(width: UIScreen.main.bounds.width / 2 - 0.5)
						
						Button(action:{
							
							if (self.fn.count == 0)
							{
								self.a += "."
							}
							else{
								self.b += "."
							}						})
						{
							ZStack{
								Color("btn_dig")
								Text(".")
							}
						}
						Button(action: {
							
							var x:Float = Float(self.a)!
							var y:Float = Float(self.b)!
							if self.fn == "+"
							{
								self.a = String( x + y)
							}
							else if self.fn == "-"{
								self.a = String(x - y)
							}
							else if self.fn == "*"{
								self.a = String(x*y)
							}
							else if self.fn == "/"{
								self.a = String(x / y)
							}
							else if (self.fn == "%"){
								self.a = String(x / 100.0)
							}
							else if (self.fn == "+/-")
							{
								self.a = String(x * -1)
							}
							self.b = "0"
							self.fn = ""
						}){
							ZStack{
								Color("btn_act")
								Text("=")
							}
						}
						
					}.frame(height: UIScreen.main.bounds.width / 4)
					
					
					
				}.foregroundColor(.white).font(.system(size:25))
					
				}
				
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
