//
//  FlashCardView.swift
//  Cl!ck
//
//  Created by saito on 2020/06/05.
//  Copyright © 2020 ys-0-sy. All rights reserved.
//

import SwiftUI

struct FlashCardView: View {
  var cards: FetchedResults<Card>
  @Environment(\.managedObjectContext) var viewContext
    var body: some View {
      ZStack {
        ForEach(cards) { card in
          ClickCard(card: card)
          .animation(.easeInOut)
        }
      }
      .padding()
    }
}

//struct FlashCardView_Previews: PreviewProvider {
//    static var previews: some View {
//      @State var cards = [Card()]
//        FlashCardView()
//    }
//}