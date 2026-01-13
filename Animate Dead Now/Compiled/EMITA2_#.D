BEGIN EMITA2_#

IF ~True()~ THEN BEGIN 1
SAY ~Why are you... I... Oh! What happened? I was talking to that grinning clerk, and suddenly there ws such a pain in the back... Look, there is blood all over my dress! They killed me, didn't they? I can't believe it... And you revived me?~
IF ~~ THEN REPLY ~Yes, ma'am, we did. Now you can bear witness to the scheming evil of the Iron Throne, though, unfortunately, first-hand. They planned to replace you with a face-swapping doppelganger. You must warn the Grand Dukes!~ GOTO 2
IF ~~ THEN REPLY ~We brought you back, and well might you thank us for it, being a stranger. We don't use magic of this caliber on every body we come across. But we were happy to help a personage of... worth.~ GOTO 3  
END

IF ~~ THEN BEGIN 2
SAY ~That I will! Eltan and Belt will know all about their treachery - and your surprising and welcome magnanimity!~
IF ~~ THEN DO ~ReputationInc(1) EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~I understand. Though it was a mercenary motive, I hardly can wish you hadn't done what you did. I can't see my purse... Have you got anything to write on? Take this. Any merchant in the city will accept my note for live coin. And now I must return to warn my friends... and wash.~
IF ~~ THEN DO ~GiveItemCreate("EMITAR_#",LastTalkedToBy,0,0,0) EscapeAreaDestroy(10)~ EXIT
END