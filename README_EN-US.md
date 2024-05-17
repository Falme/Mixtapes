
[README PT-BR](https://github.com/Falme/Mixtapes/blob/main/README.md) 👈

# MIXTAPES - Short Games Collection

MIXTAPES is a project in [Godot 4.2](https://godotengine.org/download/archive/) that groups together 9 short games intended to be sold at a short price.

## Currently Working on

- [] Improving Visual Appearence


## Why?

Indie game developers typically spend months or even years creating a single game for release to the public. However, it is evident that creating shorter games would be beneficial for both developers and players. 

The project's intentions are as follows:

- To incentivize the production of shorter games
- To release and sell a bundle of 9 short games
- Each game is short, ranging from 10 to 15 minutes
- No demos, but they can be used as publicity for the developer
- Offer a small price, making it accessible to everyone
- Collaboration among various developers in a Mixtape to help reach new players
- To serve as a response to layoffs in big game companies 
- To fight against game company colonization

The Mixtapes were inspired by [Alejandro Quan-Madrid's](https://www.youtube.com/watch?v=I1yBJD4yRss) Mixtape. 

Developing and publishing games doesn't have to be difficult; we can create themed Mixtapes about anything for anyone.

## Quick Start

Download the latest version of the Mixtapes Collection Hub in the [Releases Page](https://github.com/Falme/Mixtapes/releases/).

- Unzip the file "Mixtapes.zip" with zip, 7zip or similar
- Run "Mixtapes.exe" to open the collection
- Select a game to open in the 3x3 grid

There's some dummy projects in the Mixtapes collection, to change to your games check the Usage section.


## Usage

### For Already Compiled (Without Godot Engine)

To start adding your games to the Mixtapes, first open your Mixtapes unzipped folder and open the "Games" folder, there you will find 9 folders called:

- Game1
- Game2
- Game3
- Game4
- Game5
- Game6
- Game7
- Game8
- Game9

These are the folders that your games will be in, so we can use the Folder "Game1" as an example.

Open the "Game1" folder, delete all the contents except "mixtape_info.txt", this is the information data for loading your game.

Copy your game files and paste in "Game1" folder. Then update your game info inside "mixtape_info.txt".

Let's make an example that your game is called "My Own Game", that the developer is called "Lucas", the image file of your game is called "backgroundBanner.png" and the EXE file of your game is called "MyOwnGame.exe". So your mixtape_info.txt file must be something like:

```
TITLE:My Own Game
AUTHOR:Lucas
ART:backgroundBanner.png
FILE:MyOwnGame.exe
```

With that information, the Mixtapes can read and play your game when selected.

Just open the Mixtapes.exe and your game could be selected and played normally.

**Do Not Rename the Game1 Folder** , this is a Engine Compiled Level identification of the directory.

#### What Games Should I Add to a Mixtape?

Whatever game you want, if you want to sell or not, if you want to compile your favorite games, the end of the universe is the limit.

What I, Falme, reccomend is:

- Short Personal Experiences
- Length of 10 to 15 minutes, or a single mechanic for infinite game
- Not fully code Polished, No one will look at your code or care about it (bugs can be fun too)
- In an open-source game engine, like Godot, so it's fully yours
- With a Theme, like Educational Games or FPS Shooters or Roguelikes
- Gather 9 different Developers to make 9 games, from Veterans to Students/Beginners
- If you gonna Sell it, make sure you work with someone you trust or have an accountant
- If the Mixtape is not enough or need to change, Change it! Do it!
- Not dependable of a server, so the game could die (unplayable) in the future
- Not demos, a full short experience, If people liked it they will reach you

And last but not least, grow the short games community, talk to people, show your games to events, you will have 9 games to show to people, they can choose one or nine to play on the spot.

**Disclaimer** : At the moment I have only coded for Windows machines, but this will change soon.

If you want some examples, this is a list of short games to be inspired to : https://itch.io/c/6160/small-is-beautiful

### For Editing the Project (With Godot Engine)

Before using the repository check that you have:

- [Godot Engine](https://godotengine.org/download/archive/)

To use the project you will need to clone the repository and open it with the Godot Engine v4.2.

#### How It is structured?

Opening the project you will find two scenes:

- Splash
	- This is the Splash screen, there's nothing more than a Splash Screen with Mixtapes Logo and Text, and a transition to the Collections scene
- Collections
	- This is where the Manifestos and Tapes (Games) is found. there's a grid 3x3 of Tapes and each one have a Script to load from "mixtape_info.txt" and the calling to a folder (like Game1, Game2, Game3...) in the inspector.

Visually this is pretty editable, if you ever played with Godot Engine, then you can modify as you like, the project is not complex in structure.

Icons and Images is made and exported as SVG using Inkscape, you can change colors, layers, appearance and after saving Godot will automatically change in the scene.

#### Exporting

To export the project make sure the Grid of Tapes in Collections scene is pointing to a folder that need to exist (default is Game1, Game2, Game3... ). Select to export for Windows using Godot exporting settings and you will have a file named "Mixtapes.exe".

After that, in the same folder of Mixtapes.exe create this structure of folders:

- Mixtapes.exe
- Games
	- Game1
		- mixtape_info.txt
	- Game2
		- mixtape_info.txt
	- Game3
		- mixtape_info.txt
	- Game4
		- mixtape_info.txt
	- Game5
		- mixtape_info.txt
	- Game6
		- mixtape_info.txt
	- Game7
		- mixtape_info.txt
	- Game8
		- mixtape_info.txt
	- Game9
		- mixtape_info.txt

The Game1 to Game9 folders need to be the same name in the Inspector Field of Tape Node in Godot. If you need an example, just download the zipped exported project in the [Releases Page](https://github.com/Falme/Mixtapes/releases/).

Just put your games in the GameX folder and setup your data in "mixtape_info.txt". This should make your project work as intended.

## Contributing

This is a section of contibuting, and I'm not only talking about contibuting to the Mixtapes Project and Repository, but in a community level as well.

Need to talk to me? 

- [Bluesky](https://bsky.app/profile/falme.bsky.social)

### Mixtapes Repository and Owning

For using, copying, modifying, selling, buying, eating, or any other thing with the project, please check first the ["PUBLIC LICENSE.TXT"](https://github.com/Falme/Mixtapes/blob/main/PUBLIC%20LICENSE.txt) file, this is very important for redistributing the Mixtapes project.

### Making Your Mixtape

DO MAKE YOUR OWN MIXTAPE. 

That's the message, and should be enough. I'm not talking only to copy the exported zip and making your games, but make your own Mixtape project. Make one with 3 games, make one with 100 games, make with 3D adventure where you need to solve Puzzles as it was made with Dread XP. Make your own "Your games compilation" as Cactusquid made in the Mondo Media, compiling their short experiences. Heck, make bootlegs of your already made games like Devolver did with the Devolver Bootleg. I don't care what you do with this project, but I DO care that you have easier development of games and more success selling them. 

I hope you can be successful, this is my goal.

### N->N Developers

This was not originally made for only one developer to compile their games into an exe hub, you can do it, do it. But please try to make this Mixtapes with many developers, talk in Bluesky or any other social media and find other developers to work with, share code, make similar features, make different features and grow as a group. 

Really, you are not employed to work in a Mixtape, you will collaborate with other developers, if something goes wrong, you just make with other people, if it goes right, keep them going.

Many developers working together = more chance of success in general.

### Unionize

Uuuhhh, I said the dangerous word. 

Really, if even SEGA is accepting Unionization of the workers you should too. And what you should do is work about thing and with other workers to talk about better working conditions, talk about how many hours you are stuck in the job, how many hours you are doing what you love to do. And also about how many hours you are working in a game.

Time developing games is also a time you should be spending in a better thing, Mixtapes incentivize to work less hours for less than 30 min game length. Game developers is attached to make now 40-80hrs of game length for people that are addicted to high price and unecessary 10% of a month of a worker. It's a Ouroboros loop cycle.

For companies you are an asset, just a pawn, even if you are explendid, [They Will](https://layoffs.fyi/) [Fire You](https://publish.obsidian.md/vg-layoffs/Archive/2024) and you can do nothing about it. With Unionization you can have a chance of better and safer workplace conditions.


### CyberSecurity and Feature Suggestions

I know a problem in the project and is a Pink Elephant called Security.

I just know something here and there about Cybersecurity, and this project have 2 things to look for:

1. I'm making a CMD call to an EXE file, this is beyond not secure, so please always check for
	1. What the "mixtape_info.txt" says
	2. If the Mixtapes Hub have the same Hash as in the Github Releases Page, this guarantees that the project was not modified. But limits the project propagation
	3. Check the files in the [VirusTotal](https://www.virustotal.com/gui/) website
	4. If you find something bad, just flag it immediately or Open an Issue
2. The games added is not protected, as encrypted, but external calls will always have the problem of "So, how do you call an exe externally?", I checked and DreadXP does the same thing, you game is easily traveled through the internet.

Suggestions about the project, please open an issue or make a fork and send me a pull request, I will look it up.


### Copyright and Using Assets

I do not recommend to use copyrighted assets, It will give you headaches beyond earth. 

BUT I suggest that you use a free library of assets to use in your game, everybody wins with free open assets. here's some recommendations

- https://gentleland.notion.site/e2a28a127cc3421295c9b41dd70dc29f?v=a7242f603ee948bab2f0d2e546d84dca
- https://www.vg-resource.com/
- https://game-icons.net/
- https://sfbgames.itch.io/chiptone
- https://lovmura.itch.io/black-hair-live2d-example
- https://opengameart.org/

In general, Gentleland made a very compiled assets for gaming : https://gentleland.notion.site/Ultimate-Resource-Database-9f7f86e9ce5a408090eee1985182d951

Don't forget do name the creators, even if don't need to.

### Flags

This is very straightforward, if you want a new flag in the transition, just make a pull request.

The JSON file is in Mixtapes/Data/flagcolors.json

Just copy-paste a new flag with new colors in RGB.

### Political Views

If you open the project you know my political views. 

The thing is, if I open an modified Mixtape and this is changed, I will know your political view and I will judge you.


### For Non-Left Views

I though about that already, so I made a video tutorial that explains step-by-step on how to change the woke parts to a state-pro values, here's the [link](https://www.youtube.com/watch?v=dQw4w9WgXcQ);
