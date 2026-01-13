BEGIN EXHUME_#

IF ~GlobalGT("EXHUME","LOCALS",2)~ THEN BEGIN TIMES-3
SAY ~Hello, <GABBER>. I understand there was another unfortunate turn of events. But worry not, this wonderful magic has performed as intended. Don't look concerned, I feel fine. Let us get going.~
IF ~~ THEN REPLY ~Are you sure? No headaches or anything?~ GOTO 6
IF ~~ THEN REPLY ~Yes, back on the road. Chop-chop!~ GOTO 7
IF ~~ THEN REPLY ~Eh... Wait here for a while, all right? There is something I just remembered I must do.~ EXIT
END

IF ~Global("EXHUME","LOCALS",2)~ THEN BEGIN TIMES-2
SAY ~It happened again, didn't it? This headache, like something burrowing inside my skull... And my clothes melded with my skin again... Or is it the other way around? I feel very strange, <GABBER>. As if this is not really my body any more.~
IF ~~ THEN REPLY ~You need rest, of course, I understand. After all, you have been reborn, in a manner of speaking.~ GOTO 4
IF ~~ THEN REPLY ~No need to go over all that again. It'll pass.~ GOTO 5
IF ~~ THEN REPLY ~You just wait here for now, we can spare a few moments.~ EXIT
END

IF ~Global("EXHUME","LOCALS",1)~ THEN BEGIN TIMES-1
SAY ~Akhhhh... What... happened to me? I... akkhh... heard such a noise in my ears... A pounding...~
IF ~~ THEN REPLY ~Are you all right? I am sorry, but there was no other way to bring you back but with this magic.~ GOTO 2
IF ~~ THEN REPLY ~Just a little necromantic aid from a while back, remember? The gods have smiled on you, rejoice! Off you go into the ranks.~ GOTO 3
IF ~~ THEN REPLY ~So I imagine. Rub the temples, it might help, and sit down... I will be back in a short while.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~I think so... It's just my head... And my skin... Look, what happened to my skin?~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Oh... Blast it... My head...~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~Reborn? Reborn or maybe born.~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~As you say, szaskelin. I mean, <GABBER>...~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~Oh, no. Hah hah hah. No such thing. I feel as good as new. And we can, of course, resume our old relationship, me and <GABBER> side by side, now that we know I am quite safe from all danger. I can only recommend the same treatment for you, truly.~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7
SAY ~Yes. I can't wait to see the world.~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

