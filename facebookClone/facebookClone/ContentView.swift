//
//  ContentView.swift
//  facebookClone
//
//  Created by Samarth Munde on 19/03/22.
//

import SwiftUI


struct FBpostModel: Hashable{
    var imageName: String
    var userName: String
    var post: String
    var time: Int
}

struct ContentView: View {
    
    @State var text: String = ""
    let storyImages = ["story1","story2", "story3" , "story1","story2","story3"]
    
    let posts: [FBpostModel] = [
        FBpostModel(imageName: "dp1", userName: "Mark Zukenberg", post: "Hey this is me , your Marky", time:12),
        FBpostModel(imageName: "dp2", userName: "Jeff Bezon", post: "Still ruling the world", time: 5),
        FBpostModel(imageName: "dp3", userName: "Bill Gates", post: "Everthing is under my control", time: 3)
        
    ]
    
    
    var facbookTextColor = UIColor(red:23/255.0, green:120/255.0, blue:242/255.0, alpha:1)
    
    var body: some View {
        VStack {
            
            HStack {
                Text("facebook")
                    .font(.system(size: 48, weight: .bold, design: .default))
                .foregroundColor(Color(facbookTextColor))
                
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width:45, height: 45, alignment: .center)
                    .foregroundColor(.secondary)
            }
            .padding()

                TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(13)
                .padding(.horizontal,15)
            Spacer()
            
            ZStack{
                Color(.secondarySystemBackground)
                ScrollView(.vertical){
                    VStack{
                        StoryView(stories: storyImages)
                        
                        ForEach(posts, id: \.self){
                            model in
                            FBPost(model: model)
                            Spacer()
                        }
                    }
                }
                
            }
            Spacer()
        }
    }
}


struct StoryView: View{
    let stories: [String]
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:10) {
                ForEach(stories, id: \.self){
                name in Image(name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 200, alignment: .center)

                .clipped()
                }
            }
            .padding()
        }

    }
}

struct FBPost: View{

    @State var isLiked:Bool = false

    let model: FBpostModel

    var body: some View{
        VStack{
            HStack{
                Image(model.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60, alignment: .center)
                    .cornerRadius(25)
                VStack{
                    HStack {
                        Text(model.userName)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack {
                        Text(String(model.time)+" minutes ago")
                            .foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }
                }
                Spacer()
            }
            HStack{
                Text(model.post)
                    .font(.system(size: 22, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            HStack{
                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Image(systemName: isLiked ? "hand.thumbsup.fill":"hand.thumbsup")
                    Text(isLiked ? "Liked":"Like")
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                    Text("Comment")
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Share")
                })
            }
            .padding(5)
        }
        .padding()
        .cornerRadius(7)
        .background(Color(.systemBackground))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
