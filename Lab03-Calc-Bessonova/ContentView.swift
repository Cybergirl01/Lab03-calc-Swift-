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
					Text("0").font(.system(size:80)).frame(width: UIScreen.main.bounds.width, alignment: .trailing)
					
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
					Button(action:{}){
					
					ZStack{
						
						Color("btn_spec")
						Image(systemName: "plusminus")
						 }
					}
					
					Button(action:{}){
					
					ZStack{
						
						Color("btn_spec")
						Text("%")
						 }
					}
					
					Button(action:{}){
					
					ZStack{
						
						Color("btn_act")
						Image(systemName: "divide")
						 }
					}
					
					}.frame(height: UIScreen.main.bounds.width / 4)
				
					HStack(spacing:1){
					
					Button(action:{}){
						
						ZStack{
							
							Color("btn_dig")
							Text("7")
						   }
					  }
					Button(action:{}){
					
					ZStack{
						
						Color("btn_dig")
						Text("8")
						 }
					}
					
					Button(action:{}){
					
					ZStack{
						
						Color("btn_dig")
						Text("9")
						 }
					}
					
					Button(action:{}){
					
					ZStack{
						
						Color("btn_act")
						Image(systemName: "multiply")
						 }
					}
					
					}.frame(height:UIScreen.main.bounds.width / 4)
					HStack(spacing:1){
						Button(action:{}){
							ZStack{
							Color("btn_dig")
							Text("4")
							}
							
						}
						Button(action:{}){
							ZStack{
							Color("btn_dig")
								Text("5")
								
							}
							
						}
						Button(action:{}){
							ZStack{
								Color("btn_dig")
								Text("6")
							}
						}
						Button(action:{}){
							ZStack{
								Color("btn_act")
								Text("-")
							}
						}
						
					}.frame(height:UIScreen.main.bounds.width / 4)
					
					HStack(spacing:1){
						Button(action:{}){
							ZStack{
								Color("btn_dig")
								Text("1")
							}
						}
						Button(action:{}){
							ZStack{
								Color("btn_dig")
								Text("2")
							}
						}
						Button(action:{}){
							ZStack{
								Color("btn_dig")
								Text("3")
							}
						}
						Button(action:{}){
							ZStack{
								Color("btn_act")
								Text("+")
							}
						}
					}.frame(height: UIScreen.main.bounds.width / 4)
					HStack(spacing:1){
						Button(action:{}){
							ZStack{
								Color("btn_dig")
								Text("0")
							}
						}.frame(width: UIScreen.main.bounds.width / 2 - 0.5)
						
						Button(action:{})
						{
							ZStack{
								Color("btn_dig")
								Text(".")
							}
						}
						Button(action: {}){
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
