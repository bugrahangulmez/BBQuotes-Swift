//
//  QuoteView.swift
//  BBQuotes
//
//  Created by Bugrahan on 1.11.2024.
//

import SwiftUI

struct QuoteView: View {
    let vm = ViewModel()
    let show: String
    
    var body: some View {
        GeometryReader { geo in
            let containerWidth = geo.size.width * 0.9
            
            ZStack {
                Image(show.lowercased().replacingOccurrences(of: " ", with: ""))
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: geo.size.height)
                
                VStack {
                    Text(vm.quote.quote)
                        .frame(maxWidth: .infinity)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.black.opacity(0.5))
                        .clipShape(.rect(cornerRadius: 10))
                        
                    
                    AsyncImage(url: vm.character.images[0]) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .clipShape(.rect(cornerRadius: 10))
                            .frame(width: containerWidth, height: geo.size.height * 0.65)
                            .overlay {
                                VStack {
                                    Spacer()
                                    Text(vm.character.name)
                                        .frame(maxWidth: .infinity)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(.ultraThinMaterial)
                                        .clipShape(.rect(cornerRadius: 10))
                                }
                            }
                            
                    } placeholder: {
                        ProgressView()
                    }

                }
                .frame(width: containerWidth)
                    
                    
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    QuoteView(show: "Better Call Saul")
        .preferredColorScheme(.dark)
}
