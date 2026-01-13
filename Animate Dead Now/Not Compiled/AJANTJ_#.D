APPEND ~AJANTJ~

IF WEIGHT #-1 ~Global("ZOMBIES","LOCALS",0)~ THEN BEGIN ZOMBIES-A
SAY ~What are those vile shambling things? <CHARNAME>, do you make a business of violating the repose of death?~
IF ~~ THEN REPLY ~I wake a few sleepyheads, when I need to. If you can't stomach the sight, you might as well leave the group.~ GOTO ZOMBIES-2
IF ~~ THEN REPLY ~Only on rare occasions. They are tools in an emergency.~ GOTO ZOMBIES-3
END

IF WEIGHT #-1 ~Global("ZOMBIES","LOCALS",1)~ THEN BEGIN ZOMBIES-B
SAY ~Zombies still and again! I see that I have been a fool. In the code of the Radiant Heart the sentence for habitual necromancy is quick death, before the fiend subjects more of the world to his perversions!~
IF ~~ THEN DO ~VerbalConstant(Myself,UNHAPPY_BREAKING_POINT) SG("ZOMBIES",2) LeaveParty() Enemy()~ EXIT
END

IF ~~ THEN BEGIN ZOMBIES-2
SAY ~Indeed I shall! But I will remember your name and face, and how we parted. If I hear of more ghoulish practices in this land and troops such as these being paraded along the Coast, I will know the source. Then expect to meet me again, sword in hand.~
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ZOMBIES-3
SAY ~What emergency could justify such desecration? Even the lowest peasant deserves a place to sleep in the earth.~
IF ~~ THEN REPLY ~And what about the bandits we fight? Must we stay behind to give each a proper burial, recite the prayers?~ GOTO ZOMBIES-4
IF ~~ THEN REPLY ~But I sometimes come across vicious, inhuman monsters. What does a squire paladin say about the corpses of ogres and worgs?~ GOTO ZOMBIES-5
IF ~~ THEN REPLY ~There is a sinister plot unfolding on the Coast, and you hold us back over such trifles? The proprieties of peacetime must be suspended in a crisis!~ GOTO ZOMBIES-6
END

IF ~~ THEN BEGIN ZOMBIES-4
SAY ~That would be too generous, I guess... The priests of Illmater have a prayer for everyone, but I serve Helm, and I am a warrior...~
IF ~~ THEN REPLY ~And the hand that ran the sword through them would tire to bless them and make graves for them? Then what objection do you have to my treating them with a like indifference?~ GOTO ZOMBIES-7
IF ~~ THEN REPLY ~Oh, but a great variety of suffering in this land calls for compassion and piety. Warriors abound beside you. Why don't you put on the priest's robe and administer to the sick and poor instead of adding to the misery?~ GOTO ZOMBIES-8
IF ~~ THEN REPLY ~If they deserved death in life, why may they not serve the cause of justice after they expire? Is forced labor a harsher punishment than execution?~ GOTO ZOMBIES-9
END

IF ~~ THEN BEGIN ZOMBIES-7
SAY ~But it takes away the respect they are due... Of course, they were scum... Very well, I shall tolerate this way of disposing of their bodies for a short time. But do not let it turn into regular necromancy!~
IF ~~ THEN DO ~SetGlobal("ZOMBIES","LOCALS",1) SetGlobalTimer("ZOMB","LOCALS",FOUR_DAYS)~ EXIT
END

IF ~~ THEN BEGIN ZOMBIES-8
SAY ~That was not my mission! I was chosen by Helm to do the work of righteous justice! Not... personally... chosen, but this has been my dream... Oh, very well. As penance for what we have done to them, let's endure this affront for a little while. But do not make a habit of it!~
IF ~~ THEN DO ~SetGlobal("ZOMBIES","LOCALS",1) SetGlobalTimer("ZOMB","LOCALS",FOUR_DAYS)~ EXIT
END

IF ~~ THEN BEGIN ZOMBIES-9
SAY ~Well, no, but we did execute them, too... Their souls are not inside, so they are not truly punished, when they are made to work... By Helm, I am no jurist! Take them, use them, but only because they were lawless. We must not do this all the time and to everyone!~
IF ~~ THEN DO ~SetGlobal("ZOMBIES","LOCALS",1) SetGlobalTimer("ZOMB","LOCALS",FOUR_DAYS)~ EXIT
END

IF ~~ THEN BEGIN ZOMBIES-5
SAY ~Ogres and such can rot, for all we need to care.~
IF ~~ THEN REPLY ~Then there is no principled objection to putting bodies to use?~ GOTO ZOMBIES-10
IF ~~ THEN REPLY ~Very well, but there are half-ogres and half-orcs in the world, ogrillons and others. How human does one need to be for animation to become unacceptable? One half, one fourth, one eighth?~ GOTO ZOMBIES-11
IF ~~ THEN REPLY ~What if we can prevent the death of humans at the hands of some of those monsters by dint of reviving spent flesh, human or otherwise? What is more important: saving a life or mortis de rigueur?~ GOTO ZOMBIES-12
END

IF ~~ THEN BEGIN ZOMBIES-10
SAY ~My stomach is making one! But in principle... only the high officers and sages of my order could rule on that. I shall tolerate you using this tool for a short time, but cast it away soon!~
IF ~~ THEN DO ~SetGlobal("ZOMBIES","LOCALS",1) SetGlobalTimer("ZOMB","LOCALS",FOUR_DAYS)~ EXIT
END

IF ~~ THEN BEGIN ZOMBIES-11
SAY ~Oh, why do you have to complicate things? We are here, they are on the other side. They were evil enough, if we slew them. I suppose you can put their carcasses to use... But such magic is proscribed all the same! Only for a short time, perhaps, we might use such means to end this crisis... a short time!~
IF ~~ THEN DO ~SetGlobal("ZOMBIES","LOCALS",1) SetGlobalTimer("ZOMB","LOCALS",FOUR_DAYS)~ EXIT
END

IF ~~ THEN BEGIN ZOMBIES-12
SAY ~Saving a life, of course, but it's still vile! Well... As a knight errant, I must learn to decide such things on my own... If we can protect innocents with a wall of dead flesh, it's worth it, but I know for sure: this kind of magic always corrupts the soul. Do not use it lightly, I warn you!~
IF ~~ THEN DO ~SetGlobal("ZOMBIES","LOCALS",1) SetGlobalTimer("ZOMB","LOCALS",FOUR_DAYS)~ EXIT
END

IF ~~ THEN BEGIN ZOMBIES-6
SAY ~Some things become less important, yes, but we must not forget who we are, what we stand for!~
IF ~~ THEN REPLY ~I stand for putting the end to the bandit and monster threat, and I do what that takes. And you?~ GOTO ZOMBIES-13
IF ~~ THEN REPLY ~The sacrifices we'll make are going to include personal distaste and more. You would put your life on the line for the cause, but not your identity? What is more important, the quest or your qualms along the way?~ GOTO ZOMBIES-14
IF ~~ THEN REPLY ~Your zeal is admirable, but we are but a small group. We must be crafty, clever and unpredictable in our tactics and strategy, if we are warriors rather than suicides.~ GOTO ZOMBIES-15
END

IF ~~ THEN BEGIN ZOMBIES-13
SAY ~...The same thing. But, they taught me, evil will find a way through. If you start bringing the dead to life at every chance, you will sink to a common necromancer. Do not use this magic long!~
IF ~~ THEN DO ~SetGlobal("ZOMBIES","LOCALS",1) SetGlobalTimer("ZOMB","LOCALS",FOUR_DAYS)~ EXIT
END

IF ~~ THEN BEGIN ZOMBIES-14
SAY ~Of course it is the quest! I am ready to lay down everything... except my honor. In a great need, yes, even these means can be used, but not often and not for long. I warn you!~
IF ~~ THEN DO ~SetGlobal("ZOMBIES","LOCALS",1) SetGlobalTimer("ZOMB","LOCALS",FOUR_DAYS)~ EXIT
END

IF ~~ THEN BEGIN ZOMBIES-15
SAY ~But who has heard of a squire paladin employing dead bodies? Or sorcery at all... I suppose I did set out to learn so I might deserve the spurs of a knight, but this is too strange... Only for a short time will I tolerate their sight!~
 IF ~~ THEN DO ~SetGlobal("ZOMBIES","LOCALS",1) SetGlobalTimer("ZOMB","LOCALS",FOUR_DAYS)~ EXIT
END
END
