# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting Data"
Genre.destroy_all
Developer.destroy_all
Game.destroy_all
Platform.destroy_all
Review.destroy_all
User.destroy_all


User.create!(email: 'john@gmail.com', password: 'password')

puts "Creating Genres..."

g1 = Genre.create(name: 'FPS', description: 'First Person Shooter', genre_image_url:'https://play-lh.googleusercontent.com/5cpsDta8hXwWPukv1M6TrRfLrBMJxoQq_dmqrQouAwW7B-5wFC1DewgU0_Kqzujf-w')
g2 = Genre.create(name: 'Puzzle', description: 'First Person Shooter', genre_image_url:'')
g3 = Genre.create(name: 'RPG', description: 'First Person Shooter', genre_image_url:'')
g4 = Genre.create(name: 'Racing', description: 'First Person Shooter', genre_image_url:'')
g5 = Genre.create(name: 'Sports', description: 'First Person Shooter', genre_image_url:'')
g6 = Genre.create(name: 'Horror', description: 'First Person Shooter', genre_image_url:'')
g7 = Genre.create(name: 'MOBO', description: 'Multiplayer online battle arena', genre_image_url:'')
g8 = Genre.create(name: 'Action-Adventure', description: 'Multiplayer online battle arena', genre_image_url:'')
g9 = Genre.create(name: 'Battle-Royale', description: 'Multiplayer online battle arena', genre_image_url:'')
g10 = Genre.create(name: 'Survival', description: 'Survive Duh', genre_image_url:'')

puts "Creating Developers..."

d1 = Developer.create(name: 'Riot', hq_location: '', date_founded: '', developer_image_url: '')
d2 = Developer.create(name: 'Valve', hq_location: '', date_founded: '', developer_image_url: '')
d3 = Developer.create(name: 'Rockstar', hq_location: '', date_founded: '', developer_image_url: '')
d4 = Developer.create(name: 'Epic Games', hq_location: '', date_founded: '', developer_image_url: '')
d5 = Developer.create(name: 'Bethesda', hq_location: '', date_founded: '', developer_image_url: '')
d6 = Developer.create(name: 'Respawn', hq_location: '', date_founded: '', developer_image_url: '')
d7 = Developer.create(name: 'FromSoftware', hq_location: '', date_founded: '', developer_image_url: '')

puts "Creating Platforms..."

p1 = Platform.create(name: 'PC', platform_image_url: 'https://i.pinimg.com/originals/2b/14/fe/2b14fedeef482b00ca5b53bca9f21e19.jpg')

puts "Creating Games..."

game1 = Game.create(name: 'Valorant', description: 'Valorant is a tactical shooting game involving two teams with 5 players in each team. Every player can sign in and play remotely from anywhere in the world. Every game has 25 rounds and the team that wins 13 of them first wins the game. Players can choose their in-game characters called agents at the start of the game. Players can buy abilities and weapons at the start of the game.', store: 'https://playvalorant.com/en-us/', release_date: 'June 2, 2020', critic_rating: '9', multiplayer: true,
age_rating: 'M', player_count: '22,500,000', twitch_url: 'https://www.youtube.com/watch?v=kwB4ycDxyco&t=10s', game_image_url: 'https://images.igdb.com/igdb/image/upload/t_1080p/co2mvt.jpg',
developer_id: d1.id, genre_id: g1.id, platform_id: p1.id)

game2 = Game.create(name: 'Counter-Strike: Global Offensive', description: 'Counter-Strike took the gaming industry by surprise when the unlikely MOD became the most played online PC action game in the world almost immediately after its release in August 1999," said Doug Lombardi at Valve. "For the past 12 years, it has continued to be one of the most-played games in the world, headline competitive gaming tournaments and selling over 25 million units worldwide across the franchise. CS: GO promises to expand on CS award-winning gameplay and deliver it to gamers on the PC as well as the next gen consoles and the Mac.', store: 'https://store.steampowered.com/app/730/CounterStrike_Global_Offensive/', release_date: 'August 21, 2012', critic_rating: '8', multiplayer: true,
    age_rating: 'M', player_count: '35,000,000', twitch_url: 'https://www.youtube.com/watch?v=edYCtaNueQY', game_image_url: 'https://www.gamespot.com/a/uploads/scale_medium/mig/7/2/0/5/2227205-i2cs9uzmq4yua.jpg',
    developer_id: d2.id, genre_id: g1.id, platform_id: p1.id)

game3 = Game.create(name: 'League of Legends', description: 'Players work with their team to break the enemy Nexus before the enemy team breaks theirs. League of Legends is a complex game which involves both high-level strategy and fast-paced gameplay. Skilled players know how to beat the opponent in front of them, while keeping the macro-elements in mind to support their team to victory.', store: 'https://www.leagueoflegends.com/en-us/?utm_source=riotbar&utm_medium=productcard%2Bwww.riotgames.com&utm_campaign=lol&utm_content=lol_keyart01', release_date: 'October 27, 2009', critic_rating: '9.2', multiplayer: true,
    age_rating: 'T', player_count: '180,000,000', twitch_url: 'https://www.youtube.com/watch?v=aR-KAldshAE', game_image_url: 'https://www.xtrafondos.com/en/descargar.php?id=4055&vertical=1',
    developer_id: d1.id, genre_id: g7.id, platform_id: p1.id)

game4 = Game.create(name: 'Grand Theft Auto V', description: 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the seventh main entry in the Grand Theft Auto series, following 2008s Grand Theft Auto IV, and the fifteenth instalment overall. Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists—retired bank robber Michael De Santa, street gangster Franklin Clinton, and drug dealer and gunrunner Trevor Philips—and their attempts to commit heists while under pressure from a corrupt government agency and powerful criminals. The open world design lets players freely roam San Andreas open countryside and the fictional city of Los Santos, based on Los Angeles.', store: 'https://store.steampowered.com/app/271590/Grand_Theft_Auto_V/', release_date: 'September 17, 2013', critic_rating: '10', multiplayer: true,
    age_rating: 'M', player_count: '18,000,000', twitch_url: 'https://www.youtube.com/watch?v=QkkoHAzjnUs', game_image_url: 'https://media.rockstargames.com/rockstargames/img/global/news/upload/actual_1364906194.jpg',
    developer_id: d3.id, genre_id: g8.id, platform_id: p1.id)

game5 = Game.create(name: 'Fortnite', description: 'Fortnite is at heart a battle royale game, developed by Epic Games. In it, players drop into a map, either on their own or with a team, alongside 99 other players. After landing, it’s a mad dash to pick up as many weapons and items as possible, all while working your way toward the center of the map. Whoever is the last player standing wins the match.', store: 'https://www.epicgames.com/fortnite/en-US/home', release_date: 'July 21, 2017', critic_rating: '9.6', multiplayer: true,
    age_rating: 'T', player_count: '251,000,000', twitch_url: 'https://www.youtube.com/watch?v=8DfIFYZJEbQ', game_image_url: 'https://campaigntv.blob.core.windows.net/images/637183379999917094-fortnite_(1).jpg',
    developer_id: d4.id, genre_id: g9.id, platform_id: p1.id)

game6 = Game.create(name: 'Rocket League', description: 'Rocket League is a video game that involves the combination of car racing and soccer, created and developed by Psyonix Studios. In the game, two teams of players are pitted against each other in a futuristic arena to duke it out in five-minute matches. Rocket League is the sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars (known as SARPBC), which was created by the same developer.', store: 'https://www.rocketleague.com/', release_date: 'July 7, 2015', critic_rating: '8', multiplayer: true,
    age_rating: 'M', player_count: '87,000,000', twitch_url: 'https://www.youtube.com/watch?v=SgSX3gOrj60', game_image_url: 'https://www.mobygames.com/images/covers/l/658777-rocket-league-xbox-one-front-cover.jpg',
    developer_id: d4.id, genre_id: g5.id, platform_id: p1.id)

game7 = Game.create(name: 'The Elder Scrolls V: Skyrim', description: 'The game is set 200 years after the events of Oblivion, and takes place in Skyrim, the northernmost province of Tamriel. Its main story focuses on the players character, the Dragonborn, on their quest to defeat Alduin the World-Eater, a dragon who is prophesied to destroy the world. Over the course of the game, the player completes quests and develops the character by improving skills. The game continues the open-world tradition of its predecessors by allowing the player to travel anywhere in the game world at any time, and to ignore or postpone the main storyline indefinitely.', store: 'https://store.steampowered.com/app/489830/The_Elder_Scrolls_V_Skyrim_Special_Edition/', release_date: 'Oct 27, 2016', critic_rating: '8', multiplayer: false,
age_rating: 'M', player_count: '1,700,000', twitch_url: 'https://www.youtube.com/watch?v=JSRtYpNRoN0', game_image_url: 'https://cdn1.epicgames.com/offer/c8738a4d1ead40368eab9688b3c7d737/EGS_SkyrimSpecialEdition_BethesdaGameStudios_S2_1200x1600-ae5d13f6510e81460fe80aa1ca19cf4c',
developer_id: d5.id, genre_id: g8.id, platform_id: p1.id)

game8 = Game.create(name: 'Apex Legends', description: 'Apex Legends is the award-winning, free-to-play Hero Shooter from Respawn Entertainment. Master an ever-growing roster of legendary characters with powerful abilities, and experience strategic squad play and innovative gameplay in the next evolution of Hero Shooter and Battle Royale.', store: 'https://store.steampowered.com/app/1172470/Apex_Legends/', release_date: 'Nov 4, 2020', critic_rating: '9', multiplayer: true,
    age_rating: 'M', player_count: '113,300,000', twitch_url: 'https://www.youtube.com/watch?v=10ZVZIqf4uM', game_image_url: 'https://upload.wikimedia.org/wikipedia/en/d/db/Apex_legends_cover.jpg',
    developer_id: d6.id, genre_id: g9.id, platform_id: p1.id)

game9 = Game.create(name: 'Terraria', description: 'Terraria is an action-adventure sandbox game developed by Re-Logic. The game was first released for Windows on May 16, 2011, and has since been ported to several other platforms. The game features exploration, crafting, building, painting, and combat with a variety of creatures in a procedurally generated 2D world.', store: 'https://store.steampowered.com/app/105600/Terraria/', release_date: 'May 16, 2011', critic_rating: '9', multiplayer: true,
    age_rating: 'T', player_count: '5,600,000', twitch_url: 'https://www.youtube.com/watch?v=6nUvWkD8rAE', game_image_url: 'https://assets1.ignimgs.com/2019/01/17/terraria---button-1547745886957.jpg',
    developer_id: d2.id, genre_id: g10.id, platform_id: p1.id)

game10 = Game.create(name: 'Elden Ring', description: 'Elden Ring is an action role-playing game played in a third person perspective, with gameplay focusing on combat and exploration. It features elements similar to those found in other games developed by FromSoftware, such as the Dark Souls series, Bloodborne, and Sekiro: Shadows Die Twice.', store: 'https://store.steampowered.com/app/1245620/ELDEN_RING/', release_date: 'Feb 24, 2022', critic_rating: '10', multiplayer: false,
    age_rating: 'M', player_count: '3,600,000', twitch_url: 'https://www.youtube.com/watch?v=K_03kFqWfqs', game_image_url: 'https://i.pinimg.com/originals/c8/eb/d5/c8ebd552afd58e6af5e8cceda9b28c31.png',
    developer_id: d7.id, genre_id: g8.id, platform_id: p1.id)


puts "Creating Reviews..."

r1 = Review.create(title: 'yes', description: 'i like this', score: 7, game_id: game1.id)
r2 = Review.create(title: 'good', description: 'i enjoyed it', score: 8.5, game_id: game1.id)

