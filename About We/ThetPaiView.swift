//
//  ThetPaiView.swift
//  About We
//
//  Created by T Krobot on 31/5/23.
//

import SwiftUI

struct ThetPaiView: View {
    @State private var textSize = 10
    @State private var yAxis = -100
    @State private var faceRotation = 0.0
    var body: some View {
        HStack{
            Spacer()
            
            VStack{
                Spacer()
                Text("Hello, World!")
                    .font(.system(size: CGFloat(textSize)))
                    .fontWeight(.bold)
                    .rotation3DEffect(Angle(degrees: 40.0), axis: (x: 1, y: 0, z: 0))
                    .offset(y: CGFloat(yAxis))
                Button{
                    withAnimation(){
                        textSize = 50
                        yAxis = 0
                        faceRotation = 180.0
                    }
                }label: {
                    Image("ThetPai")
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                        .cornerRadius(1000)
                        .scaledToFit()
                        .rotationEffect(Angle(degrees: faceRotation))
                }
                
                Text("Yes this is in #best-of. (Click picture)")
                    .foregroundColor(.gray)
                Group{
                    Text("Si Ling Primary School Class of 2022")
                    Text("SJI")
                    Text("Average Scratch enjoyer")
                    Text("Legendary rank once in CODM")
                    Text("AL7 in PSLE")
                    Text("AK117 Lover")
                    Text("Once upon a time, in a small village nestled at the foot of a lush mountain range, there lived a person named Thet Pai. Thet was a humble and compassionate individual who possessed a unique gift - the ability to understand the language of animals. From an early age, Thet had always felt a deep connection with the creatures that roamed the forests and fields surrounding the village. Whenever a lost cat or injured bird crossed their path, Thet would approach it with tenderness and a soothing voice, comforting the distressed animal and somehow understanding their needs.Word of Thet's remarkable talent spread throughout the village, and soon people started seeking their help. Farmers sought guidance on how to keep their crops safe from pests, while children asked for advice on understanding their pets better. Thet became a trusted advisor and confidant, bridging the gap between humans and animals in the village.One day, as Thet wandered deep into the forest, they came across a wounded wolf lying in a patch of wildflowers. The animal's eyes were filled with pain and fear. Thet's heart went out to the wolf, and they cautiously approached, speaking softly to convey their intentions.To Thet's astonishment, the wolf responded, its thoughts forming words in their mind. The majestic creature introduced itself as Wynn, and it shared the story of how it had been injured while protecting its pack from a group of hunters. The hunters had left Wynn for dead, assuming it would never survive its injuries.Filled with a surge of empathy, Thet tended to Wynn's wounds, using their knowledge of herbal remedies and healing techniques. Day by day, the wolf's strength returned, and a strong bond grew between Thet and Wynn.News of Thet's encounter with the wolf spread throughout the village, capturing the attention of a renowned wildlife conservationist named Dr. Ava Moore. Driven by her passion for protecting endangered species, Dr. Moore embarked on a mission to study and conserve the unique connection between Thet and the animal kingdom.Under Dr. Moore's guidance, Thet's abilities were honed and refined. Thet discovered that their gift extended beyond mere communication; they could now sense the emotions and intentions of animals, understanding their needs on a profound level. Thet's insights and understanding led to groundbreaking discoveries in animal behavior and conservation practices, earning them recognition from scientists and researchers worldwide.As Thet's reputation grew, they became an ambassador for animal welfare and conservation efforts. They traveled to distant lands, helping organizations protect endangered species, promoting ethical treatment of animals, and raising awareness about the delicate balance of nature.Throughout their incredible journey, Thet never lost touch with their roots. They returned to their village whenever they could, sharing their knowledge and inspiring the younger generation to cherish and respect all living creatures. Thet's kindness and understanding brought harmony between humans and animals, fostering a deep sense of appreciation for the natural world.And so, Thet Pai's legacy lived on, not only in their ability to communicate with animals but also in the countless lives they touched, reminding everyone that empathy, compassion, and understanding were the keys to coexisting harmoniously with the creatures that share our planet.")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.center)
                        
                }
                Spacer()
            }
            Spacer()
        }
        .background(.orange, ignoresSafeAreaEdges: .all)
    }
}

struct ThetPaiView_Previews: PreviewProvider {
    static var previews: some View {
        ThetPaiView()
        
    }
}

