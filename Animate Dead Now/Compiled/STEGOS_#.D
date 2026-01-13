BEGIN STEGOS_#

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN CHARMED
SAY ~Between you and me, friend, I'm not too thrilled about this brewing war with Amn. All of the action is going to move out of the city south, and all the fresh cadavers will be clogging the Cloudpeaks' passes, neither properly interred nor useful to anyone as they are. What's the point of a war, anyway? I've never understood the idea. But keep this to yourself, please. I don't want to be thought unpatriotic.~
IF ~~ THEN EXIT
END

IF ~Global("STEGOS","GLOBAL",1)~ THEN BEGIN AWAY
SAY ~We have nothing more to say to each other, <SIRMAAM>. I bid you good night.~
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN RETURN
SAY ~Back for more, I see. Yes, cadavers are perishable goods, especially upstairs, in the heat. It's a good thing for all of us autumn is on the way. Or did you bring something?~
IF ~~ THEN DO ~StartStore("STEGOS_#",LastTalkedToBy)~ EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN RETURN
SAY ~Welcome to my special little shop. Few people know even to look for it, so I'm certain you are a connoisseur. Today I have a particularly original inventory, even a shipment of spiders from Cloakwood. Lots of them there lately, and some hunters are making a mint. As for my standard stock, be advised that females go under a higher price tag.~
IF ~~ THEN REPLY ~Pardon, my good man, but I stumbled in here by accident. Just what is it you sell, exactly?~ GOTO 1
IF ~~ THEN REPLY ~Females cost more? How come?~ GOTO 2
IF ~~ THEN REPLY ~Yes, I've heard all about your business. Let's deal, mister.~ DO ~StartStore("STEGOS_#",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~By accident? Then you might be in for a bit of a shock, <SIRMAAM>. You see, I not only sell, but buy cadavers of every description. Mostly bodies of people found here and there, but sometimes dead pets pass through my hands, too. As an illustration, just the other day I bought a Chult parrot. Quite run down the curtain, it had. I paid 20 gold for it, but I'm sure I can resell it to some still life lover. That's how it goes: you bring me bodies... dead or nearly... and state your wishes as to what should be done with them: sell them for parts, animate them as servants, raise them, heal them. In this life there is a party or a couple out there interested in almost everyone who reclines even for a moment, alive or dead, for quite contrary purposes.~
IF ~~ THEN REPLY ~Something to think about next time I lie on a sofa... Do all the cadavers you sell come from accidental sales like that?~ GOTO 1A
IF ~~ THEN REPLY ~I can't believe my ears! This is cruel, revolting and surely illegal, both ways!~ GOTO 1B
END

IF ~~ THEN BEGIN 2
SAY ~They must be more useful to some people, <SIRMAAM>, and I'll leave it at that.~
IF ~~ THEN DO ~StartStore("STEGOS_#",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 1A
SAY ~Of course not, I could not maintain a steady supply! A variety of people end up dead on Baldur's Gate bad side: the poor, the homeless, the sick, thieves stabbed in the back by their buddies. The city does not know what to do with a lot of them, and you might have noticed there is no proper cemetery. The Grand Dukes want to avoid disease. In the past the Chionthar used to flood the graveyard, and that could really lead to problems.~ = ~Nowadays there are a couple of burial grounds farther up the river, but running barges costs money, and if the person in question had none, if he had no relatives that could pay either - or cared to... then the city may not mind if the body disappears. I'm a self-employed man, but I keep this process orderly, I know who to sell to and make sure there are no zombies roaming the streets as a result - or worse. Please don't ask for details, though. So, are you interested in my kind of goods?~ 
IF ~~ THEN REPLY ~Show them to me. I'll pinch my nose...~ DO ~StartStore("STEGOS_#",LastTalkedToBy)~ EXIT
IF ~~ THEN REPLY ~Never! Every dead person deserves burial or, if possible, to be raised from the dead! Baldur's Gate is crawling with priests, it should be their job!~ GOTO 3
END

IF ~~ THEN BEGIN 1B
SAY ~It's not a legal occupation, but neither is it criminal. Like my hours here, it's in the shadowy twilight territory. The city benefits from a controlled management of the forgotten and forsaken, and there are other groups, too. It's a kind of export-import business... But I see that my words fall on deaf ears. By all means, suit yourself, go!~
IF ~~ THEN REPLY ~And so I will, you degenerate!~ DO ~SG("STEGOS",1)~ EXIT
IF ~~ THEN REPLY ~I simply worry what will become with, to, those I might bring, if they can't be revived...~ GOTO 3 
END

IF ~~ THEN BEGIN 3
SAY ~It reflects well on you to feel this way, but there are far too few clerics with the power who have enough of conscience to go with it. Illmater's, perhaps, but their following is small, and they have no clout. I can reassure you a little, though: the bodies you sell me will be buried and the rites performed, if that's what you desire. This can be arranged. If the people you bring are not dead yet, they can be nursed to health, too. But, of course, all that costs money, and I can't offer you the same price that I could if I had more liberty with the audience to target.~
IF ~~ THEN REPLY ~I don't care! I might bring you people to hide them, and they must receive decent treatment. Cared for in some quiet place or interred properly. No taking them apart for organs or selling them to necromancers or any of that, you hear?~ DO ~ChangeStoreMarkup("STEGOS_#",70,100)~ GOTO 4
IF ~~ THEN REPLY ~That's quite limiting for me, too... I'll just trust your judgment. Let's deal.~ GOTO 5
IF ~~ THEN REPLY ~*Spin on your heels and walk off.*~ DO ~SG("STEGOS",1)~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~As you say.~
IF ~~ THEN DO ~StartStore("STEGOS_#",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~That's what I'm here for, <SIRMAAM>.~
IF ~~ THEN DO ~StartStore("STEGOS_#",LastTalkedToBy)~ EXIT
END

 