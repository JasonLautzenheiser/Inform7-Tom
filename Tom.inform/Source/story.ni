"Tom" by Jason Lautzenheiser

[Header Hierarchy Reminder: It goes "volume", "book", "part", "chapter", "section"]
Release along with website, interpreter, the source text, and library card.
Use no scoring and full-length room descriptions. [no scoring and verbose descriptions]
[Use no deprecated features.]
Use American dialect.


Volume - Bibliography

The story genre is "Horror".

The story description is "Checking into the Beaumont Hotel for business, Travis figures he's in for another boring business.  He soon learns otherwise."
The release number is 1.

The story creation year is 2013.

Volume - Testing & Debugging (not for release)

Book - Tests

test lobby with "n/no".

test reservation with "ask man about hotel room".
test lounge with "ask man about reservation/e".
test elevator with "ask man about room/n".
test elevator-2 with "ask man about room/n/push button/z/z/go in".

Volume - Extensions

Include Basic Screen Effects by Emily Short.
Include Locksmith by Emily Short.
Include Plurality by Emily Short.
Include Trinity Inventory by Mikael Segercrantz.
Include Epistemology by Eric Eve.
Include Small Kindnesses by Aaron Reed.
Include Keyword Interface by Aaron Reed.

Book  - Not for release

Include Object Response Tests by Juhana Leinonen.
[Include Property Checking by Emily Short.]

[Use library message alerts.]

Volume - Out of world material

Abouting is an action out of world applying to nothing.

Understand "about" as abouting.
Understand the command "credits" or "info" as "about".

Report abouting:
	say "[italic type][Story title][roman type] was created in the fall and winter of 2013-2014.[paragraph break]";
	say "[italic type][Story title][roman type] is copyright © 2013 by Jason Lautzenheiser (jlautz@sssnet.com or visit by blog at http://lautzofif.wordpress.com/). It may be distributed for free, but not sold or included in any for-profit collection without written permission from the author.[paragraph break]";


	
Volume - Uberstart

The uberstart rules are a rulebook.

After printing the banner text, say "Copyright © Jason Lautzenheiser 2013. [line break]First time players please type ABOUT."

The time of day is 6:36 PM.

When play begins:
	follow the uberstart rules.
	
An uberstart rule:
	now the left hand status line is "[the player's surroundings] / Moves: [turn count] ";
	now the right hand status line is "Time: [time of day]";
	
[if we end up supporting glulx title page and such, check out ghosterington-night source for an uberstart rule for title page.]



[When play begins: 
	now every scenery thing is keyworded;
	display the boxed quotation "... Next came one [line break]
	Who mourned in earnest, when the captive ark[line break]
	Maimed his brute image, head and hands lopt off,[line break]
	In his own temple, on the grunsel-edge,[line break]
	Where he fell flat and shamed his worshippers:[line break]
	Dagon his name, sea-monster, upward man[line break]
	And downward fish; yet had his temple high[line break]
	Reared in Azotus, dreaded through the coast[line break]
	Of Palestine, in Gath and Ascalon,[line break]
	And Accaron and Gaza's frontier bounds.[line break]
[line break]
	--Paradise Lost - John Milton[paragraph break]";
	now the left hand status line is
		"[the player's surroundings] / [turn count] / [score]";
	now the right hand status line is "Time: [time of day]";
	now the time of day is 7:13 PM.]



Volume - Definitions

[these definitions help us define whether there are people in a room or not (other than the player)]
Definition: a person is another if it is not the player.
Definition: A room is occupied rather than unoccupied if another person is in it.

A fardrop is a kind of backdrop.

The last mentioned thing is a thing that varies.

A person can be neutral, friendly, or angry.  A person is usually neutral.  [use this to control moods of characters]
A person can be depressed, excited, happy, sad, calm.  A person is usually calm. [Another aspect ot mood fo a character.]
A person can be recognized or not recognized.  [before we find out their name, they are not recognized]

A prop is a kind of thing. It is usually portable. [If props can be carried out of their initial room, they should not be in the room description, but appear in the room contents list.]
A furniture is a kind of supporter. It is usually scenery and fixed in place. [In general, furniture descriptions should be integrated into room descriptions.] 
A thing can be large. A thing is usually not large.

Every thing has some text called scent.  The scent is usually "".
Everything has some text called texture. The texture of something is usually "".

Parser highlighting is true.

Book - Wakefulness

A person can be tired or rested.  A person is usually rested.


Volume  - Mechanics

Book - General game properties

Chapter - Rules

The block kissing rule is not listed in any rulebook.
The kissing yourself rule is not listed in any rulebook.

Chapter - Actions



	


Chapter - Work arounds

[The printed name of the player is "yourself". That works really well for messages like "You can't take yourself." It fails miserably for things like NPC reactions, where the NPC may be reacting to another NPC or to the player: "Jemison follows [the leader]." So: a workaround "say" phrase.]
[To say name of (t - a thing):
	if t is the player begin;
		say "you";
		mark yourself in output;
	otherwise;
		say "[the t]";
	end if.

To say name of (t - a thing) is:
	if t is the player begin;
		say "you are";
		mark yourself in output;
	otherwise;
		say "[the t] is";
	end if.
]
Book - General Routines

After printing the name of something (called the target): 
	change the last mentioned thing to the target.
	
To say (regular verb - some text) in correct agreement:
	  say "[regular verb][if the last mentioned thing is not plural-named]s".



Book - Verbs

Part - Remember 

Remembering is an action applying to one thing.
Instead of remembering something, try examining it instead.

Chapter - Answer

Instead of answering:
	say "[lame talk]".

Chapter - Asking

Rule for reaching inside a room when asking someone about something:
	  allow access.

Chapter - Examining self

Conds is a list of indexed texts that varies.

check examining yourself:
	truncate conds to 0 entries;
	let tiredmsg be indexed text; let tiredmsg be "You are tired and could probably use some rest now";
	if the player is tired, add tiredmsg to conds;
	if the number of entries in conds is 0, say "You're not sure what to do next";
	say "[conds], but otherwise you're doing all right." instead.
	
[instead of touching or hugging yourself, try examining yourself.]




Chapter - Kissing

Understand the command "kiss" as something new.
Understand "kiss [a thing]" as kissing.
Report kissing:
	if the noun is:
		-- yourself:
			say "That would truly look awkward.";
		-- otherwise:
			if the noun is a person:
				say "That might not be the wisest course of action now.";
			otherwise:
				say "It's been a year since the divorce, but seriously, you are not so desperate to try kissing [the noun]."

Chapter - Dropping and Dropping On

Understand the command "drop" as something new.

Understand "drop [things preferably held]" as dropping.

Dropping it on is an action applying to two things.  Understand "drop [things preferably held] on [other things]" as putting it on.

Chapter - Digging

[Just because everyone is going to do it]
Digging is an action applying to nothing. Understand "dig" as digging. Specific digging is an action applying to one topic. Understand "dig [text]" as specific digging. Check specific digging: try digging instead.  

Carry out digging:
	if location is outside-hotel:
		say "You kick around the gravel on the sidewalk a bit as you stand there.";
	otherwise:
		say "You don't really have the proper tools or energy to dig here."
		
Chapter - Smelling

[nothing fancy here, but did lift a lot of this from, Hoosegow source - Ben Collins-Sussman, Jack Welch (https://code.google.com/p/hoosegow/),  as I liked the idea of ambient odor that decays over time.]

The ambient odor is a number that varies.  The ambient odor is 10.

Instead of smelling:
	let the regverb be "smell";
	if the noun is the location:
		let R be 1;
		repeat with N running from 1 to the number of rows in Table of Relative Smells:
			change R to N;
			if the intensity in row N of the Table of Relative Smells is greater than the ambient odor:
				break;
		if R is not the number of rows in the Table of Relative Smells:
			decrease R by one;
		choose row R in the Table of Relative Smells;
		say "[verbage entry].";
		the rule succeeds;
	otherwise:
		if the noun is a fardrop:
			say "[The noun] is too far away to smell.";
			the rule fails;
		if the scent of the noun is "":
	  	  	  say "The [noun] [the regverb in correct agreement] [one of]unremarkable[or]ordinary[or]not particularly interesting[in random order].";
	  	  	  the rule succeeds;
		if the noun is the player:
			say "You smell";
		otherwise if the noun is a person:
			if the noun is male:
				say "He";
			otherwise:
				say "She";
			say " smells";
		otherwise if the noun is part of the player or the noun is worn by the player:
			say "Your [noun] [the regverb in correct agreement]";
		otherwise:
			say "[The noun] [the regverb in correct agreement]";			
		say " [scent of the noun]."
			
Table of Relative Smells 
intensity		verbage
10		"Freshly brewed coffee"
20		"It smells mostly nice"
30		"You notice some odor in the air"
50		"There is an unpleasant odor"
100		"It stinks to high heaven"		


Chapter - Showing

Rule for reaching inside a room when the current action is showing:
	  allow access.
	  
Chapter - Touch

Instead of touching a fardrop:
	say "[The noun] is too far away to touch."

Chapter - Look For

Understand "look for [something]" as searching.
	

Chapter - Talking

Talking is an action applying to one thing.  Understand "talk to [something]" as talking.

Rule for reaching inside a room when the current action is talking:
	allow access.
	
Check talking:
	if the noun is not a person:
		say "You've been kind of lonely since the divorce, but you haven't resorted to talking inanimate objects yet." instead.
		
 Carry out talking:
	say "[lame talk]".
	
To say lame talk:
	say "You can ASK someone ABOUT something or SHOW something TO someone."
	
Chapter - Telling

Rule for reaching inside a room when telling someone about something:
	allow access.
	
instead of telling someone about anything:
	say "There isn't much to tell.[paragraph break]Maybe you could try ASK someone ABOUT something or SHOW something TO someone."
	
Book - Standard Responses

Instead of singing: say "Back in the day you thought you were a decent singer, your ex-wife thought differently.  You decide to refrain from singing so as not to subject others to it."
Instead of saying sorry: say "You mumble apologetically under your breath."
Instead of pushing or pulling or taking a fixed in place thing: say "You strain to move [the noun], but only succeed in working up a sweat and nothing more[if location is occupied]; well you do garner a few strange looks[end if]."
Instead of climbing an enterable supporter, try entering the noun.
Instead of climbing, say "You look for something to pull yourself up with, but find nothing and give up."
Instead of jumping, say "You used to enjoy jumping, but that was before the divorce, when you enjoyed a lot of things."
Instead of sleeping,  say "You can't just fall asleep here."
Instead of waking up, say "While reality can seem like a nightmare, you really are awake."
Instead of thinking, say "You've done a lot of thinking lately, but this is not the time for idle thoughts."

Book - New kinds 


Chapter - Elevator exterior

An elevator exterior is an undescribed backdrop.  It is not scenery.   The description of the elevator exterior is "The [o][call button][x] is in the wall to the right of the [if elevator-door is open]open [end if]door.  [dial-description]".  The printed name of elevator exterior is "elevator".

The elevator-door is an undescribed container.  It is closed and openable.  The elevator-door is part of the elevator-exterior.

To say dial-description:
	say "Above the elevator is an [o]old-fashioned dial[x] that shows the elevator is currently on [run paragraph on]";
	if current level of the lift is 1:
		say "your floor.";
	otherwise:
		say " floor [current level of lift in words]."

Instead of opening the elevator:
	say "The elevator doors can not be opened manually.  You will have to wait until the elevator arrives on your floor.";

before examining the elevator exterior:
	if location is the lobby:
		instead say "From here you can see the elevators to the north[if Checking In has ended].  That is probably the best way to get to your room[end if].";
	otherwise:
		instead say "[description of elevator exterior][paragraph break]".
		
Understand "elevators/door/doors" as elevator exterior when not in the Lift.

The call button is a thing.  The call button is part of the elevator exterior.  The description of call button is "Just a single button resides beside the elevator door."

The old-fashioned dial is a part of the elevator exterior.  The description of it is "The dial goes from 1 to 3[first time], but when I came in the the building looked much taller than that[only].  It currently points to [current level of the Lift]."

Before entering the elevator exterior, try going inside instead.
Before going north in first-floor-by-elevator, try going inside instead.

Instead of going inside in the presence of elevator exterior:
	if the elevator-door is open:
		move the player to the lift instead;
	otherwise:
		try opening the elevator-door instead.
		
Chapter - Elevator

The Lift is a room.  The description of the lift is "The large elevator [if the lift is unoccupied] is empty[end if].  A [three-legged stool], where a elevator jockey would sit, is in front of the elevators [control panel]."  The printed name of the Lift is "The Elevator".

Understand "elevators/door/doors" as Lift when in the Lift.

The three-legged stool is a fixed in place supporter in the lift.  The description is "The three-legged stool sits in front of the elevators control panel."  The stool is enterable.

The control panel is a fixed in place undescribed thing in the lift.  The description is "The panel's three buttons are labeled 1, 2, and 3."  The initial appearance of the panel is "The elevator's control panel sits beside the door with just three buttons labeled 1, 2 and 3."

Instead of listening:
	if location is the lift:
		say "You can hear the faint sound of music coming from all sides."

The Lift has a number called current level.  The current level of the lift is 3.

Before going south in the lift, try going outside instead.

Before going outside in the lift:
	if the elevator-door is open:
		if there is a floor corresponding to a level of the current level of the lift in the Table of Floors:
			let the other place be the floor corresponding to a level of the current level of the lift in the Table of Floors;
			move the player to the other place instead;
		otherwise:
			say "Error in Table of floors!!!" instead;
	otherwise:
		say "The doors of the elevator have to be opened first.  Try pushing one of the floor buttons.";

After pushing something (called the item pushed):
	if the item pushed is call button and location contains elevator exterior:
		if the current level of the lift is the current level of the player:
			now the elevator-door is open;
			the doors shut in two turns from now;
			say "The lift pings politely and opens its doors, since it was already here." instead;
		otherwise:
			now the current level of the lift is the current level of the player;
			now the elevator-door is open;
			say "You hear a ring as the elevator begins to move to your floor and in a few moments it is here and the doors open before you.".


At the time when the doors shut:
	if elevator-door is open:
		if the elevator-door is in location:
			say "The elevator doors close. quietly";
		now the elevator-door is closed.

Pressing button is an action applying to one number.
understand "push [number]" as pressing button.  Understand "push [number] button" as pressing button.  understand "push button [number]" as pressing button.  

Check pressing button:
	if the player is not in the lift, say "You cannot control the elevator if you are not inside of it." instead;
	if the number understood is the current level of the lift:
		now the elevator-door is open;
		the doors shut in two turns from now;
		say "The lift pings politely and opens its doors, since it was already here." instead;
	if the number understood is greater than 3, say "There are only three floors." instead;
	if the number understood is less than 0, say "You cannot go below the main floor in this elevator." instead.
	
Carry out pressing button:
	now the elevator-door is open;
	now the current level of the lift is the number understood;
	say "You press button [the number understood in words] and hear the elevator come to life and it begins to move.  Quickly, seemingly much faster than you thought it should take, you've arrived at floor [the number understood in words] and the doors open before you.";
	the doors shut in two turns from now;
	
		



Chapter - Luggage

Some luggage is a closed openable container.  The description is "Your hard-shell suitcase has served you well all these years. It may look old, but it serves its purpose."  Understand "suitcase" as luggage.

Instead of opening luggage when location is not room 203:
	say "You shouldn't unpack your luggage until you get to your room."

Understand "unpack [something]" as opening.	

Chapter - Bedrooms

A bed is a kind of supporter.  A bed is always enterable. 

A clothed bed is a kind of bed.

 A blanket is a kind of thing.  Some sheets are a kind of thing.  A pillow is a kind of thing.  Some sheets, a blanket, and a pillow are a part of every clothed bed.
 
 Instead of taking something that is part of a clothed bed:
	say "Stripping the bed down is not going to be useful."
	
The description of pillow is usually "Soft and comfortable, good for sleeping."
The description of sheets is usually "White and smell freshly laundered."
The description of blanket is usually "The blanks will keep you warm at night."


	


Book - Changes to the world model


Chapter - Additional lines for USE

Understand "use [a door]" as opening. Understand "use [an open door]" as entering.




Chapter - Sanity Check Rules

The sanity-check rules are a rulebook.
This is the sanity-check stage rule:
	abide by the sanity-check rules.
The sanity-check stage rule is listed before the before stage rule in the action-processing rules.

Sanity-check eating an inedible thing:
	say "[The noun] do[es]n't look very tasty, even if you were hungry." instead.
	
Sanity-check wearing something that is not wearable:
	say "[one of][The noun] [is-are]n't wearable.[or]I'm not sure how you would do that with [the noun].[at random]" instead.
	
instead of switching on or switching off or entering a person:
	say "That's probably not something they would appreciate you trying." 
	


Chapter - Liquids

[Minimal liquid needs for now so don't need the full extension]

A thing can be solid or fluid.  A thing is usually solid.

Instead of waving or squeezing or pulling or pushing or rubbing or turning a fluid thing: 
	say "[The noun] do[es]n't really respond to that." 
	
Sanity-check drinking a solid thing:
	say "[The noun][is-are]n't liquid." instead.
	
Check drinking a fluid thing (called my-drink):
	try eating my-drink instead.
	
Sanity-check burning a fluid thing:
	say "This is not one of those rare liquids that will burn."
	
Rule for deciding whether all includes a fluid thing while taking: it does not.

A thing can be contained or uncontained.  A thing is usually uncontained.

Every turn when the player carries a fluid thing (called the puddle):
	unless the puddle is contained:
		move the puddle to the location;
		say "[The puddle] drips through your fingers."
		
		


	
	
		
	
Book - Subjects

a subject can be remembered or forgotten.  A subject is usually forgotten.

instead of remembering a subject (called whatever):
	try thinking about whatever instead.

Chapter - Trevor

Trevor is a familiar and seen subject.  Understand "son/kid/child/children" as Trevor. 

Before thinking about Trevor:
	if baseball-game is not happening:
		instead say "You remember how Trevor's a great kid and you miss him a lot.  However, being with him reminds you of your failed marriage.  The only good in your life is Trevor and this job.  You're screwing up the relationship with Trevor, but you can't screw up this job.".

Chapter - Baseball

baseball is a familiar and seen subject.

before thinking about baseball:
	now baseball is remembered;
	say "Trevor loved to play baseball.  From his first game in tee-ball, you knew he would be something special.  The joy on his face as he played....was indescrible, something you'll never forget.[paragraph break]Now that part of your life is behind you....oh he mentions his games to you the few times a year you see him, but you have not experienced the joy of him in the game since that first year.";
	stop the action.
	



Book - Synonyms and New Grammar

Understand the command "nothing" as listen.  Understand "say nothing" as listening.
Understand the command "bring" or "grab" as "take".
Understand the command "see" as "look".


Book - Parser Improvements

Chapter - Looking in directions

Check examining a direction (called dir):
	let rm be the room dir from location;
	if rm is a room, say "[if dir is up]Above you[otherwise if dir is down]Below you[otherwise if dir is inside]Inside[otherwise if dir is outside]Outside[otherwise]To the [d][dir][x][end if] is [if rm is visited][prose name of rm][otherwise]an unexplored area[end if]." instead;
	otherwise say "Nothing interesting in that direction." instead.
	
Chapter - Get All

After reading a command:
	if the player's command includes "all":
		say "You really should just do that to one item at a time.";
		reject the player's command.
		
		

		

Volume - Characters

Book - Travis Moore - The player

The player is Travis.
Travis is a man. Travis is in Outside-Hotel.
Travis is neutral and calm.  Travis has a number called current level.  The current level of Travis is 1.

[Instead of examining the player: say "You are relatively handsom, successful executive in the textiles business.  Fourty-three and recently divorced with an eight year old son, [Trevor].  Since you're divorce, you've throw yourself into your work, leaving town, and your son, behind for weeks on end.  Sometimes it's tough to face reality."
]

Travis is carrying a reservation and luggage.  
Travis is tired.  The scent of Travis is "[if checking in is happening] of the cheap perfume from the lady sitting next to you on the flight.[end if]"

Part - Reservation 

[only used temporarily in the Checking In scene to give some life to the story]

The reservation is a thing.  The description is "Your reservation states you have a room for 3 nights in this fine establishment."
Understand "hotel room" or "room" as reservation

before dropping the reservation, instead say "You probably don't want to lose that." 

after examining the reservation for the first time:
	now baseball is remembered;
	say "The office manager booked this reservation for you.  Typically he puts you up at a little two bit motel, so not sure why he chose this place....I'm sure it wasn't cheap.[paragraph break]He did make up for it on the flight however by booking you coach.....might as well been in the luggage compartment for all it was worth.  The landing was rough...."
	
Part - Wallet

The wallet is a container.  The initial appearance of the wallet is "Your black leather wallet has been with you for a good number of years."  The description of the wallet is "The black leather is cracked, but the wallet still serves it's purpose."

Travis is carrying the wallet.

Part - Photo of son

The photo-of-trevor is a thing.   The description of photo-of-trevor  is "This photo of your son is a bit ragged from the constant viewing of it as you reminisce on better days.  The photo shows Trevor and you together after his first baseball game when he was just six."

after examining photo-of-trevor for the first time:
	now baseball is remembered;
	say "Trevor loved to play baseball.  From his first game in tee-ball, you knew he would be something special.  The joy on his face as he played....was indescrible, something you'll never forget.[paragraph break]Now that part of your life is behind you....oh he mentions his games to you the few times a year you see him, but you have not experienced the joy of him in the game since that first year.[paragraph break][first time]Your vision blurs and your mind is transported to another place....[only]".

The photo-of-trevor is in the wallet.  The printed name of photo-of-trevor is "photo"

Understand "photo/photograph/picture" as photo-of-trevor 


Book - Pam

Pam is a woman.  

Book - Tom

[Tom is our central NPC, he will appear throughout, but often as complete different person objects, but here is our main one]

A black suit is a kind of thing.
A bowtie is a kind of thing.
Some spectacles are a kind of thing.  The indefinite article of spectacles is "a pair of".  The description of spectacles is "The pair of spectacles that he is wearing have small round lenses that just cover his eyes."
The white gloves are a kind of thing.  The indefinite article of white gloves is "some".

A Tom is a kind of person.  A tom is always a male.  
A Tom is usually not recognized.

Every tom wears a black suit, a bowtie and some spectacles.
Every tom sometimes wears white gloves.


Part - Doorman

[This may be Tom in another guise, but lets' make him a seperate person in code for ease of coding]
The doorman is a tom in Outside-Hotel.  "[one of]The [doorman] sees you standing there and waves.[or]The [doorman] is standing here beside the door.[stopping]".  

The doorman is wearing white gloves.

The description of doorman is "A friendly enough looking guy.  He's wearing [a list of things worn by doorman].  His hair is slicked neatly back and to the left and his square jaw shows a strong man, yet his eyes, covered in small round spectacles, give him the appearance of someone with a devious mind. [if doorman carries luggage]Your luggage is sitting in front of the doorman." 

before going north in outside-hotel for the first time:
	say "The doorman stops you before you enter, 'Welcome to the Beaumont, the finest establishment in town.  If you'd like I can have your luggage taken to your room?'[paragraph break]";
	if player consents:
		say "[line break]You hand your luggage to the doorman.";
		now doorman carries luggage;
	try going north instead.

before going north in outside-hotel for the second time:
	say "You go through the revolving door into the lobby.";
	if doorman carries luggage:
		now luggage is on the king size bed;
	now doorman is off-stage;
	now player is in lobby instead.

before giving luggage to the doorman:
	say "Yes sir, I will have those delivered to your room.";
	now doorman carries luggage;
	stop the action.
	
before removing luggage from doorman:  
	say "'I've changed my mind, I'll go ahead and take those myself.'  You take back your luggage.";
	now player carries luggage instead;
	stop the action.
	
Instead of asking doorman about a topic listed in the Table of Doorman Questions:
	say "The doorman replies, '[answer-text entry].'[paragraph break]";


Table of Doorman Questions
topic											answer-text
"luggage" or "bags"											"[luggage-doorman]"
"reservation" or "room"											"The desk clerk just inside can help you check in."


To say luggage-doorman:
	say "I[if doorman carries luggage] will[otherwise] can[end if] have those delivered to your room for you"
	
Part - Desk Clerk

[again this is tom, but lets create a different object here]

In The Lobby is a tom called the desk clerk.  
the desk clerk is undescribed.  
Understand "man" as The Desk Clerk.
understand "Tom" as the desk clerk when the desk clerk is recognized.

To say name-of-desk-clerk:
	if the desk clerk is recognized:
		say "Tom";
	otherwise:
		say "the desk clerk" ;

To say Name-of-desk-clerk:
	if the desk clerk is recognized:
		say "Tom";
	otherwise:
		say "The desk clerk" ;

the description of the desk clerk is "[Name-of-desk-clerk] is wearing [a list of things worn by desk clerk].  His hair is slicked back and to the left neatly and his oblong face and square jaw give him a look of an anvil.  His small round spectacles make his eyes appears especially beady on such a large head."

after examining the desk clerk for the first time, now desk clerk is recognized.

The desk clerk carries room-203-key.  The room-203-key is unseen.

understand "reservation" or "room" or "my room" or "my reservation" as "[room-words]".
understand "fish" or "fishbowl" or "fish bowl" or "bowl" as "[fish-words]".

instead of asking desk clerk about "[fish-words]":
	say "'Aren't they lovely?'', [name-of-desk-clerk] replies, 'They are like family to me...'[paragraph break]He looks longingly at the fish for a moment, stops and then glares at you through his spectacles.[paragraph break]'Don't mess with my family...', he threatens."
	

Instead of asking desk clerk about a topic listed in the Table of Deskclerk Questions:
	say "[Name-of-desk-clerk] replies, '[answer-text entry].'[paragraph break]";

Table of Deskclerk Questions
topic											answer-text
"luggage" or "bags"											"[luggage-deskclerk]"
"key" or "room 203 key" or "room key"											"[if checking in is happening]You'll need one if you'd like to get to your room[otherwise]Yep, that's the key to your room[end if]"
"doorman" or "door man"											"A little too friendly if you ask me, I don't know why anyone should be that happy"
"hotel" or "Beaumont"											"The elite establishment in this town.....once you spend a night with us, you'll never want to leave"

To say luggage-deskclerk:
	if checking in is happening or finding your room is happening:
		say "[if luggage is carried by player]I really don't care about your [topic understood], you should have handed them to the doorman out front....you'll just have to drag them to your room yourself[otherwise]You gave your [topic understood] to the doorman did you not?  He'll take care of it for you";
	otherwise:
		if luggage is carried by player:
			say "It appears that you are carrying your [topic understood] right now";
		otherwise:
			say "Your [topic understood] is in [location of luggage], right where you left it".
	


Part - Bartender

The bartender is a Tom.  

Before examining or searching the bartender when bartender is off-stage:
	instead say "I look around the room, but do not see anyone that looks like they may work here."
	
	
Volume - Locations

Book - Outside Region

The reg-outside is a region.  Outside-Hotel is part of reg-outside.
The sky is a fardrop in reg-outside.  The description of the sky is "The closer you got to the hotel, the sky darkened with clouds."


Book - Outside Hotel

Outside-Hotel is a room.  Outside-Hotel is south of revolving-door.  "The hotel you're staying at is the premier hotel in this town, well actually it's the only one these days.   The brochure you read on the flight, showed you a lavish building with a country view, trees and a fountain in front.  You stand before an incredibly ornate building standing five stories high, in the middle of a [rundown neighborhood].  Despite what the brochure may have said, you see no fountain nor any trees.  To the [north] is a revolving door that leads in."  The printed name of Outside-Hotel is "Outside Hotel".  The prose text of outside-hotel is "outside hotel". Understand "hotel/outside/building" as outside-hotel.

Part - Revolving Door

The revolving-door is a door. It is south of the lobby.  The revolving-door is scenery. The revolving-door is open.  The revolving-door is unopenable.  Understand "door/revolving" as revolving-door.  The printed name of revolving-door is "revolving door".  The description of revolving-door is "Large glass three panel revolving door.  The glass looks dusty and dingy."


Part - Run down neighborhood

The rundown neighborhood is a backdrop in outside-hotel.   The description of rundown neighborhood is "As you look around the neighborhood, you notice that many of the buildings are rundown, some boarded up and those that aren't look unkempt with peeling paint and tattered signs.  It's a virtual ghost town.  How this hotel survived you don't understand."  The scent of rundown neighborhood is "of decay and stale trash left to blow around the neighborhood."

understand "ghost town" as rundown neighborhood.

Instead of taking the rundown neighborhood, say "Where would you take it?  Could you really take it away from here?  And would it really do any good?"

Instead of listening to the rundown neighborhood, say "It is unusually quiet around here, even for it being so decrepit around here.  No car horns, no children playing in the street, no banter of the neighborhood folk...nothing."

Part - Fountain

The fountain is scenery in outside-hotel.  
Before doing anything to the fountain:
	instead say "If there was one here, you'd give it a try."

Part - Trees

A tree is scenery in outside-hotel. The printed plural name of tree is "trees".  understand "trees" as tree.
Before doing anything to the tree:
	instead say "If there were any around, you'd certainly try."

Book - Floors

Table of Floors 
level	floor
1	first-floor-by-elevator
2	second-floor-by-elevator
3	third-floor-by-elevator

Book - First Floor Region

reg-first-floor is a region.   The Lobby, hotel-lounge, first-floor-by-elevator are in reg-first-floor.

After deciding the scope of the player:
	if the location is the lobby, place the elevator exterior in scope;
	if the location is the hotel-lounge, place the bartender in scope.

Book - Hotel Lobby

The Lobby is a room.  "[first time]As you come in through the [revolving-door] to the south, you pause to to a look around at the hotel you'll call home for the next three days. [only]The [marble floor] gleams with fresh polish and reflects the large [crystal chandelier] that hangs overhead.   Along the west wall is a large [fireplace], with a modest fire going that is taking the chill off the cool November air.  Above the fireplace hangs a large [oil portrait] of a man.

[if the desk clerk  is not recognized]The desk clerk stands behind the counter along the north wall, appearing bored as he looks at [the paperwork] in front of him, but you suspect that he sees and knows more than he first appears.[otherwise]Tom is behind the counter, shuffling through some paperwork.[end if]

As you look around you see the [elevator exterior] to the [north] just past the counter and [if the hotel-lounge is visited]to the [east] is a smokey lounge[otherwise]from the [east] cigarette smoke hangs just inside a darkened doorway[end if].  The [south] is the [revolving-door] that will take you back out on the street."

the counter is a supporter, enterable and scenery in the lobby.  The description of the counter is "The counter is simply a way to keep you away from the other side."

The paperwork is scenery on the counter.  The description of paperwork is "As you peer at his paperwork [if the desk clerk is not recognized]the desk clerk[otherwise]Tom[end if] glares at you and says, 'Excuse me!'".

instead of taking paperwork:
	try examining paperwork.  

instead of pushing paperwork:
	 say "As you move to brush the paperwork aside, [name-of-desk-clerk] quickly grabs your arm to stop you and then only after glaring at you for a moment, lets it go."

Rule for reaching inside a room:
	say "You are not close enough to to do that.";
	deny access.
	
before going south in Lobby:
	say "You don't want to leave before your business is done." instead.
	
The marble floor is scenery in the lobby.
The crystal chandelier is scenery in the lobby.
The fireplace is scenery in the lobby.
The oil portrait is a fixed in place thing in the lobby.  The oil portrait is undescribed.  The description of the oil portrait is "The portrait is of a [if the desk clerk is familiar]familiar looking [end if]man with a stern look on his face, glasses that make his eyes look exceptionally beady, a black suit coat and a black bow-tie."

Part - Room 203 Key

The inventory listing of the room-203-key is "the [o]key[x] to room 203".  Understand "key/skeleton" or "skeleton key" or "203 key" or "room 203 key" as room-203-key.  The printed name of room-203-key is "Room 203 key".

The description of room-203-key is "An old skeleton key with 203 embossed along the shaft."

before dropping the room-203-key, instead say "You really don't want to face [name-of-desk-clerk] again if you would lose that."


Part - Fishbowl

The fishbowl is a transparent open container.  The fishbowl is on the counter.  Understand "bowl" or "'fish bowl" as fishbowl.

The description of the fishbowl is "The small glass fishbowl sits on the counter off to the side, but well within reach of [if desk clerk is recognized]Tom[otherwise]the desk clerk[end if].  Inside are two gold-fish...well actually they are more red then gold.  [one of]They appear to be staring at you[or]They swim around each other as if reading for a joust[or]They look at [if desk clerk is recognized]Tom [otherwise]The desk clerk [end if] as if in awe[or]They hang in the middle of the bowl looking at each other as if having a conversation[then at random]."

The fish is an undescribed thing.  The fish are in the fishbowl.  The fish are plural-named.
The water is a fluid thing in the fishbowl.  The water is undescribed.

A procedural rule while examining the fishbowl: 
	ignore the examine containers rule. 

Instead of taking the fishbowl:
	say "[if desk clerk is recognized]Tom [otherwise]The desk clerk [end if] nearly jumps over the counter to stop you, 'Those are the property of the Inn, please do not take them', he yells breathlessly.  'You will do well to remember that things that are not yours, should not be taken.'[paragraph break]He seems a bit worked up over a pair of fish, but for now you heed his warning."

instead of taking anything contained by the fishbowl:
	try taking the fishbowl.

before doing something other than taking or examining the fishbowl:
	say "[if desk clerk is recognized]Tom [otherwise]The desk clerk [end if]glares at you and you decide to rethink doing that." instead.
	
Book - Hotel Lounge

The hotel-lounge is a room.  "You walk into the smokey bar noticing just [a few people] scattered here and there, though everyone is sitting alone.  Curiously, everyone here is dressed in [1920s period clothing], though we are a long way from that.  The bar is along the north wall, but the [bartender] is no where to be seen.  The lobby is back to the west."  The hotel-lounge is east of the lobby.  Understand "lounge" as hotel-lounge.

Part - General Things

The 1920s period clothing are an undescribed thing in the hotel-lounge. the description of 1920s period clothing is "The men are wearing short suit jackets mostly unbuttoned as they lean over their glass deep in thought."
Understand "jacket/jackets/suit/suits" as 1920s period clothing.

A few people are some people in the hotel-lounge.  They are undescribed.  the description of a few people is "Everyone is keeping to themselves over their [drinks].  A few have [cigarettes] lit, but not really smoking.  Strangely enough there are no [ladies] here."

The drinks is an undescribed thing in hotel-lounge.  The description of drinks is "Occassionally you see someone take a sip, but they as well are mostly ignored."
The cigarettes are an undescribed thing in hotel-lounge.  The description of cigarettes is "Lit, but mostly unsmoked and ignored.  The ashes are deep on the end of each."
The ladies are an undescribed thing in hotel-lounge.  The description of ladies is "Well you don't see any here, but you figure there should be some around here somewhere."


Book - Main Floor by the Elevator

first-floor-by-elevator is a room. "You stand outside the [if elevator-door is open]opened [end if][o]elevator[x].  [The description of elevator exterior]".  The first-floor-by-elevator is north of lobby.  The printed name is "First floor by the elevator".

The elevator exterior is in first-floor-by-elevator.  
	
Book - Second floor region

reg-second-floor is a region.  second-floor-by-elevator, outside-room-203, vending area and room 203 is in reg-second-floor.

Book - Second Floor by the Elevator

second-floor-by-elevator is a room.  The description of second-floor-by-elevator  is "You stand outside the [if elevator-door is open]opened [end if][o]elevator[x] on the second floor.  To the south is a hallway where you can see a row of doors to the rooms on this floor.  To the east is an area with vending machines.  [paragraph break][The description of elevator exterior]".  The printed name is "Second floor by the elevator".

The elevator exterior is in second-floor-by-elevator .

Book - Outside room 203

Outside-room-203 is a room.  "You are standing outside room room.  On the [o][massive oak door][x] to the east are [o]large brass numbers[x] that ensure there is no mistaking what room this is.  Set in the center of the door just below the numbers is [o][the peep hole][x]."

Large brass numbers are a thing.  Large brass numbers are  part of massive oak door.  The description of large brass numbers is "The numbers read 203."

The printed name is "Outside Room 203". 

Outside-room-203 is south of second-floor-by-elevator.

Part - Room 203 door

The massive oak door is an  door.  It is east of outside-room-203 and west of room 203.  the massive oak door is closed and locked.   The description of the massive oak door is "This large oak door you room number 203 in large brass numbers and a peep hole below them.  It is an old door is worn, yet you know it's still very sturdy."

room-203-key unlocks the massive oak door.

The peep hole is a thing.  Peep hole is part of the massive oak door.  Understand "peephole" as the peep hole.

Before examining the peep hole:
	if location is Outside-room-203:
		say "You try to peer through the peep-hole, but you can see nothing from this side." instead;
	otherwise if location is Room 203:
		say "You peer through the peep-hole and see the hallway." instead;



Book - Room 203

Room 203 is a room.  The description of room 203 is "As you stand in your room you see your pleasantly surprised at the grandeur of your accomodations.  [A king size bed] sits in one corner of the room, while a [writing desk] sits in the opposite corner.  Beside the bed is a [night stand] which upon it sits a [table lamp] and a [telephone].  To the north is a small bathroom."

A king size bed is a clothed bed.   The king size bed is scenery.  The king size bed is in Room 203.  The description of king size bed is "It looks comfy enough and the sheets look clean."
A writing desk is a fixed in place supporter in Room 203. The writing desk is scenery.  The description of writing desk is "The desk is just the write size to pen a letter, but probably not large enough to spread out a bunch of paperwork."
The night stand is a fixed in place supporter in Room 203.  The night stand is scenery. The description of night stand is "The night stand sits within arms reach of the bed.  Upon it sits a table lamp and a telephone."
The table lamp is fixed in place thing on the night stand.  The description of table lamp is "The table lamp sits on the night stand where it will provide some reading light in bed."
The telephone is a thing on the night stand.  The description of the telephone is "This rotary telephone looks to have seen plenty of use...but it should be just fine to make a phone call."

Room 203 is east of the massive oak door.  

Book - Vending area

Vending Area is a room.  Vending Area is east of second-floor-by-elevator .


Book - Third floor region

reg-third-floor is a region.  third-floor-by-elevator is in reg-third-floor.

Book - Third Floor by the Elevator

third-floor-by-elevator  is a room.  The printed name is "Third floor by the elevator"

The elevator exterior is in third-floor-by-elevator.

Book - Inside hotel region

reg-inside is a region.  reg-first-floor, reg-second-floor, reg-third-floor and the lift are part of reg-inside.	

Volume - Scenes

Book -  Game Scenes

Part - Checking in

Checking In is a scene.  Checking In begins when play begins.  Checking In ends when player carries the room-203-key for the first time.

before going direction during Checking In:
	if location is Lobby:
		say "[if the desk clerk is recognized]Tom[otherwise]The desk clerk[end if] looks up as you begin to pass by the counter, clears his throat to grab your attention and says, 'Excuse me.  Can I help you?'" instead;
	otherwise:
		continue the action.

Every turn during Checking In:
	if a random chance of 1 in 20 succeeds:
		if player is in Lobby:
			say "[one of][name-of-desk-clerk] looks at the fish intensly.[or][name-of-desk-clerk] taps gently on the fishbowl.[or][name-of-desk-clerk] reaches under the counter and throw a small piece of food which the fish devour.[then at random][paragraph break]" in sentence case

instead of asking desk clerk about "[room-words]" during checking in:
	say "'What is your name sir?', asks [name-of-desk-clerk][paragraph break]'Moore.....Travis Moore', you say while handing him your reservation.[paragraph break]";
	now reservation is off-stage;
	say "[Name-of-desk-clerk] looks at the paper you hand him, crumples it up and throws it over his shoulder.[paragraph break]";
	say "'Travis Moore you say?', he speaks under his breath as he pulls out a large book and proceeds to flip through the pages.[paragraph break]'Ahhh, yes.  Here you are, one Travis Moore....yes, you are in room 203.'[paragraph break]With that, he closes the book, puts it back under the counter and hands you your room key, a large skeleton key.";
	move the room-203-key to the player;
	now room-203-key is familiar;


Part - Finding your room

Finding your room is a scene.  Finding your room begins when checking in ends.  Finding your room ends when player is in room 203 for the first time.

instead of asking desk clerk about "[room-words]" during finding your room:
	say "I[']ve given you your key already....I'm not going to carry you up there too."


Book -  Flashbacks

Dream is a region.  baseball-field and airplane are part of dream.

A scene can be a flashback.

Saved location is a room that varies. Locker is a container. Wardrobe is a container.

To strip the player: 
	 now every thing carried by the player is in the locker; 
	now every thing worn by the player is in the wardrobe; 
	now saved location is location.
	
To restore the player: 
	now every thing carried by the player is in the location; 
	now every thing in the locker is carried by the player; 
	now every thing in the wardrobe is worn by the player; 
	move the player to saved location.

Part - Baseball game

baseball-game is a flashback scene.  Baseball-game begins when photo-of-trevor is familiar for the first time.

baseball-game ends when the umpire is revealed.

When baseball-game begins:
	pause the game;
	strip the player;
	now player is in baseball-field;
	the Ball-is-missed in two turns from now.

When baseball-game ends:
	pause the game;
	restore the player;

Chapter - Item Descriptions

Baseball-field is a room.  "You are sitting on the first base side of a [baseball-diamond].  Your son Trevor is up to bat.  Trevor is six and this is his first baseball game.  You feel excited and nervous all at the same time.  The anticipation of him doing well has eaten at you all day.  But most of all the thought of him having fun is forefront.[paragraph break]Trevor on the other hand, is all business.  He comes up to bat, with the ball sitting on the tee and the look on his face tells you that to him, this is the World Series.  To him, this is the most important moment of his life and he's got this under control.[paragraph break][Pam] on the other hand, is sitting beside you, smoking a cigarette, barely seems to notice that Trevor is there.  She's too focused yapping with her friends on her cell, to notice that her own son, her flesh and blood is up to bat."  The printed name of baseball-field is "Baseball Field".

baseball-diamond is a thing in Baseball-field .  The printed name is "baseball diamond".  The description of the baseball-diamond is "You've been to a baseball field before.  Four bases, nine players on the field, a tenth up to bat and up to 3 more on the bases.  An umpire stands behind home plate and coaches stand at first and third base...you know your typically stuff....oh yes, these are all kids and your son is up to bat."  Understand "baseball/diamond" as baseball-diamond when baseball-game is happening.

An umpire is a thing in baseball-field.  The umpire can be revealed or unrevealed.  The umpire is unrevealed.  The description of umpire is "Suited up in his gear like he is umping a professional game, the umpire is taking this game amongst six year olds as serious as one as well."

Pam is in Baseball-field.  The description of Pam is "My wife, still as beautiful as the day we met.  You would never guess she is in her 40s.  But her personality has changed drastically since we first met, and even more so since Trevor was born.[first time][paragraph break]We met in college as freshman, becoming best friends, then lovers and eventually married our senior year.   We held off having children until she became established in her career at the ad agency.  But even then by our mid thirties, I think she gave in to having a baby just so I'd stop bugging her about it.  After Trevor was born, she went right back to work and Trevor became a nuisance to her.....oh she puts on the air of a loving mother in public, but as soon as she is out of the public eye, she is back to thinking only of herself.[only]"

Chapter - Scheduled Events
	
At the time when the ball-is-missed:
	say "Trevor swings......and misses.  Now the look of determination is even stronger on his face.  He's not going to miss it this time.";
	the ball-is-hit in one turn from now.
	
At the time when the ball-is-hit:
	say "Trevor swings....and hits the ball too left center.  At first he pauses as if time was standing still to watch the ball, then when he realizes he is supposed to run, off he goes.....headed to first base as fast as his little legs can carry him....easily reaching first base for his first hit.[paragraph break]Trevor looks up at you in the stands and gives a little smile and waves, you give a thumbs up, Pam continues to talk to her friend.";
	the move-to-second in two turns from now.
	
At the time when the move-to-second:
	say "The next batter up, cracks one to the shortstop.  Trevor runs as hard as he can to second base.  Your heart sinks as you realize that he will probably be out, but you have forgotten that these are only six year olds and the shortstop bobbles the ball and makes a wild throw to first base which then gets by the first baseman and without hesitation, Trevor moves to third.[Paragraph break]You lean over to ask Pam if she saw what smart base-running that was, she waves at you in dismissal and gives you a glare and you realize that your interruption was not appreciated.  You wonder why she even came.";
	the move-to-home in one turn from now.
	
At the time when the move-to-home:
	say "The next batter up, swings hard and dribbles the ball back to the pitcher.  Trevor is already half-way home when the pitcher picks up the ball and makes a throw to home.  The catcher, currently waving at his parents on the other side of the field is not paying attention and Trevor scores easily.  [paragraph break]As Trevor walks off the field, the umpire comes around and begins to brush the dirt off home plate.  As he stands back up, he turns and faces your direction and seemingly looks right at you and you think he is smiling at you.......that face looks familiar.....where have I seen him before.....";
	now the umpire is revealed
	
Chapter - Scene specific rules / actions

Before thinking about Trevor while baseball-game is happening:
	say "Trevor is only six, yet looks so grown up in his baseball gear." instead.
	
Instead of examining yourself during baseball-game:
	say "You are sitting here on the edge of your seat watching your son play ball."

Before going during baseball-game:
	say "You're not leaving now, your son is playing ball." instead.

Part - Flight in

flight-in is a flashback scene.  flight-in begins when reservation is familiar for the first time.

flight-in ends when the dark-figure is revealed.

flight-scene-state is a kind of value.  the flight-scene-states are part1, part2 and part3.  
Airplane has a flight-scene-state.  

when flight-in begins:
	pause the game;
	strip the player;
	now the reservation is carried by the player;
	now the wallet is carried by the player;
	now player is in airplane;
	airplane-scene-2 happens in one turn from now.

When flight-in ends:
	pause the game;
	restore the player;
	now the reservation is carried by the player;
	now the wallet is carried by the player;

	
Chapter - Item descriptions
	
Airplane is a room.  The description of airplane is "[one of]....you're coming in hard for the landing.  Not sure what is going on, but the pilot gave an announcement moments before landing letting us know it was going to be a rough one.  He wasn't mistaken.  Jostled about, you're wondering how the plane manages to stay together, as you sure feel like you're being shaken apart.  The old lady beside you almost rolls in your lap, partially from the jostle, but I think she is truly frightened and you're the closest thing to cling to.[or]You're sitting in coach [if elderly lady is on-stage]beside a heavy [elderly lady] that smells of perfume and cigarettes[end if].[stopping]". 

The elderly lady is a woman in airplane.  The elderly lady is undescribed.  The description of the elderly lady is "The old lady beside you is quite large.  She has been a pleasant companion throughout the flight however. Unfortunately, her girth has made for a rather unpleasant trip.  She smells of cheap perfume and cigarettes, you'll be smelling those for quite some time now.  She has been a constant chatter box, but despite listening to her for hours, you've learned little about her other than she is coming home."

The airplane-window is scenery in the airplane.  The printed name of airplane-window is "window".  Understand "window" as airplane-window while flight-in is happening.

The dark-figure is an undescribed thing.  The dark-figure can be revealed or unrevealed.  The dark-figure is unrevealed.  dark-figure is in airplane.

Understand "look out [something]" as searching when flight-in is happening.

instead of searching the elderly lady:
	say "In her current state, frisking the old lady would not be a smart thing to do."
	
instead of searching the airplane-window:
	try examining the airplane-window.

instead of smelling during flight-in:
	if elderly lady is on-stage:
		say "The smell of cigarettes and cheap perfume is going to linger on your clothes for some time.";
	otherwise:
		say "With the lady not being right next to you, you'd think the smell of cigarettes and cheap perfume would have faded.....but it hasn't."
	

Before examining airplane-window when flight-in is happening:
	if the flight-scene-state of the airplane is part1:
		instead say "You try to get a look out the window, but the jostling is making it difficult to see anything clearly.";
	otherwise if the flight-scene-state of the airplane is part2:
		instead say "You see the airport pass before you out the window, but getting any kind of good look would require the old lady to move out of the way.";
	otherwise if flight-scene-state of airplane is part3:
		 say "You take a closer look out the window towards the terminal.  Depsite being off in the distance, you notice a figure....a dark figure standing a the terminal window.  You lean closer, almost pressing your nose to the window, yes he is there and  damn he looks familiar.   Wait, he turns his head, and appears to be looking in your direction, he starts to raise his hand as if to wave....

'Pardon me, ' the old lady says as she reaches across you once more, 'I[']ve left my purse sitting on the floor....be a dear and grab it for me would you.'

As you hand her the purse, you turn back towards the window.....and the figure is gone.";
		now the dark-figure is revealed;
		stop the action.


		
Chapter - Scheduled events

at the time when airplane-scene-2 happens:
	say "The plane has finally landed...after bouncing up and down the runway a few times and is now slowly rolling to a stop.  You are none the worse for wear, despite being a bit frazzled.  The old lady on the other hand appears to be gasping for breath, she is extremely agitated and seems near to panicking.  You try to calm her down by talking to here about her family.

'You say you're from around here?' you ask.

'Ye..es, ' she answers breathlessly, 'my family owned a local hotel in town.....until we had to sell it during the depression.'

'Which hotel?'

'The Beaumont on 1st street in the old center of town, ' she replies.

You realize that is where you are staying, but before you can get that tidbit out, she cries out;

'That old bastard that stole it from my pappy, he's a strange one for sure.  He still runs that old place and I see people coming and going, but I don't know....there is something wierd going on there.'";
	airplane-scene-3 happens in 1 turn from now;
	now the flight-scene-state of airplane is part2.
	
at the time when airplane-scene-3 happens:
	say "The plane has come to a stop, finally.   You've just gotten yourself unbuckled when the old lady says, 

'I'm out of here.  I've had more of flying than and old lady can handle.'

She get's out of her seat and is now crawling over you to get out into the aisle.  The flight attendents are too busy to notice and the old lady (you never did catch her name) manages to squeeze out....despite giving you a view you care not to remember.

As you climb up, your eyes pass over the window and you pause to look as you get a good view of the terminal, despite being off in the distance.  Just as your about to turn away, something catches your eye.";
	now elderly lady is off-stage;
	now flight-scene-state of airplane is part3.
	
Chapter - Scene specific rules / actions

instead of jumping during flight-in:
	say "You're currently strapped in and need to stay that way until the flight has ended."




Volume - Easter Eggs

Understand "plugh" or "xyzzy" or "frotz" or "plover" as a mistake ("When that word leaves your lips, small quiet voices in your head speak haunting words of a time long lost.....a time lost forever.").


