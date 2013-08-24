"Tom" by Jason Lautzenheiser

The story genre is "Horror".
The story creation year is 2013.

Part 0 - General rules and conventions

[This part defines the scenes, some general flags, some verbs and some kinds. It also contains definitions of the introduction, the player character and the included extensions.]

Chapter 0.1 - General flags

Section 0.1.1 - General game properties

Use no scoring and full-length room descriptions. [no scoring and verbose descriptions]
[Use no deprecated features.]
Use American dialect.


Section 0.1.2 - Includes

Include Conversation Framework by Eric Eve.
Include Conversation Responses by Eric Eve.
Include Conversational Defaults by Eric Eve.
Include Keyword Interface by Aaron Reed.
Include Trinity Inventory by Mikael Segercrantz.
Include Numbers by Krister Fundin.

Include Epistemology by Eric Eve.
Include Small Kindnesses by Aaron Reed.
[Include Default Messages by Ron Newcomb.]
Include Remembering by Aaron Reed.

[Use library message alerts.]

Section 0.1.3 - Definitions 

[these definitions help us define whether there are people in a room or not (other than the player)]
Definition: a person is another if it is not the player.
Definition: A room is occupied rather than unoccupied if another person is in it.

Section 0.1.4 - Rules

Rule for deciding whether all includes scenery: it does not.  [Take all and things like that do not include scenery]
Rule for deciding whether all includes scenery: it does not.
Rule for deciding whether all includes people while taking: it does not.
[Rule for printing room description details: stop.]

Section 0.1.5 - Scenes

Checking In is a scene.  Checking In begins when play begins.  Checking In ends when player carries the room-203-key for the first time.
Finding your room is a scene.  Finding your room begins when checking in ends.  Finding your room ends when player is in room 203 for the first time.

Section 0.1.6 - Properties

A person can be neutral, friendly, or angry.  A person is usually neutral.  [use this to control moods of characters]
A person can be depressed, excited, happy, sad, calm.  A person is usually calm. [Another aspect ot mood fo a character.]
A person can be recognized or not recognized.  [before we find out their name, they are not recognized]

Parser highlighting is true.

Section 0.1.7 - Compilation (for Z-machine only)

Use memory economy.

Section 0.1.8 - Work arounds

[The printed name of the player is "yourself". That works really well for messages like "You can't take yourself." It fails miserably for things like NPC reactions, where the NPC may be reacting to another NPC or to the player: "Jemison follows [the leader]." So: a workaround "say" phrase.]
To say name of (t - a thing):
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
	

Chapter 0.2 - When the game begins

When play begins: 
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
	now the time of day is 7:13 PM.

Chapter 0.3 - The player character

The player is in Lobby.
The player is neutral and calm.
The player has a number called current level.  The current level of the player is 1.

Instead of examining the player: say "You are relatively handsom, successful executive in the textiles business.  Fourty-three and recently divorced with an eight year old son, [Trevor].  Since you're divorce, you've throw yourself into your work, leaving town, and your son, behind for weeks on end.  Sometimes it's tough to face reality."

The player is carrying a reservation and luggage.  The player wears the fedora hat.

Section 0.3.1 - Reservation 

[only used temporarily in the Checking In scene to give some life to the story]

The reservation is a thing.  The description is "Your reservation states you have a room for 3 nights in this fine establishment."
Understand "hotel room" or "room" as reservation

before dropping the reservation, instead say "You probably don't want to lose that." 

Section 0.3.2 - Fedora hat

The fedora hat is a wearable thing.  The description is "Your trusty fedora has seen better days, but it's black trim-ribbon, while slightly frayed, still holds the feather your son found on your trip last year to the beach."
Understand "trim-ribbon" or "ribbon/trim/feather" as fedora hat.


Chapter 0.4 - Standard Responses

Instead of singing: say "Back in the day you thought you were a decent singer, your ex-wife thought differently.  You decide to refrain from singing so as not to subject others to it."
Instead of saying sorry: say "You mumble apologetically under your breath."
Instead of pushing or pulling or taking a fixed in place thing: say "You strain to move [the noun], but only succeed in working up a sweat and nothing more[if location is occupied]; well you do garner a few strange looks[end if]."

Chapter 0.5 - New kinds and actions

Section 0.5.1 - Flashlight

[Because every game has a flashlight doesn't it?]

The description of the flashlight is "This is a normal flashlight.  No batteries so it doesn't work."

Section 0.5.2 - Elevator exterior

An elevator exterior is an undescribed backdrop.  It is not scenery.   The description of the elevator exterior is "The [o][call button][x] is in the wall to the right of the door.  [dial-description]".  The printed name of elevator exterior is "elevator".

The elevator-door is an undescribed container.  It is closed and openable.

To say dial-description:
	say "Above the elevator is an [o]old-fashioned dial[x] that shows the elevator is currently on [run paragraph on]";
	if current level of the lift is 1:
		say "your floor.";
	otherwise:
		say " floor [current level of lift in words]."

before examining the elevator exterior:
	if location is the lobby:
		instead say "From here you can see the elevators to the north[if Checking In has ended].  That is probably the best way to get to your room[end if].";
	otherwise:
		instead say "[description of elevator exterior][paragraph break]".
		
Understand "elevators/door/doors" as elevator exterior when not in the Lift.

The call button is a thing.  The call button is part of the elevator exterior.  The description of call button is "Just a single button resides beside the elevator door."

The old-fashioned dial is a part of the elevator exterior.  The description of it is "The dial goes from 1 to 3[first time], but when I came in the the building looked much taller than that[only].  It currently points to [current level of the Lift]."

Before entering the elevator exterior, try going inside instead.
Before going north in Main Floor, try going inside instead.

Instead of going inside in the presence of elevator exterior:
	if the elevator-door is open:
		move the player to the lift instead;
	otherwise:
		if the lift is stationary:
			say "The doors of the elevator have to be opened first.  Try pushing the call button.";
		otherwise:
			say "You have to wait until the elevator arrives on your floor.";
		
Section 0.5.3 - Elevator

The Lift is a room.  "The elevator is just like every other elevator you've been on.  The numbered buttons on the [panel] are number 1, 2 and 3.  The dial inside the door shows you are currently on floor [current level of the Lift]."  The printed name of the Lift is "Elevator".

Understand "elevators/door/doors" as Lift when in the Lift.

The panel is a fixed in place undescribed thing in the lift.  The description is "The panel just has three buttons labeled: 1, 2, and 3."

Instead of listening when in the lift, say "You can hear the faint sound of music coming from all sides."

The Lift has a number called current level.  The current level of the lift is 3.
The lift can be ascending, descending or stationary.  The lift is stationary.

Every turn when the lift is not stationary:
	if lift is ascending:
		now the current level of the lift is the current level of the lift plus 1;
	otherwise if lift is descending:
		now the current level of the lift is the current level of the lift minus 1;
	if player is in the lift:
		now the current level of the player is current level of the lift;

Before going south in the lift, try going outside instead.

Before going outside in the lift:
	if the elevator-door is open:
		if there is a floor corresponding to a level of the current level of the lift in the Table of Floors:
			let the other place be the floor corresponding to a level of the current level of the lift in the Table of Floors;
			move the player to the other place instead;
		otherwise:
			say "Error in Table of floors!!!" instead;
	otherwise:
		if the lift is stationary:
			say "The doors of the elevator have to be opened first.  Try pushing one of the floor buttons.";
		otherwise:
			say "You have to wait until the elevator arrives on the floor you are trying to reach.";

After pushing something (called the item pushed):
	if the item pushed is call button and location contains elevator exterior:
		if the lift is not stationary:
			instead say "Be patient....the elevator won't come any faster by pushing the call button again.";
		if the current level of the lift is the current level of the player:
			now the lift is stationary;
			now the elevator-door is open;
			the doors shut in two turns from now;
			say "The lift pings politely and opens its doors, since it was already here." instead;
		otherwise:
			say "You here a ring as the elevator begins to move to your floor.";
			if the current level of the player is greater than the current level of the lift:
				now the lift is ascending;
			otherwise if the current level of the player is less than the current level of the lift:
				now the lift is descending;
			The Lift arrives in the absolute value of (current level of lift minus current level of player) turns from now.

At the time when the Lift arrives:
	now lift is stationary;
	now the elevator-door is open;
	if the current level of the lift is less than 1:
		now the current level of the lift is 1;
	if player is in the lift:
		now the current level of the player is the current level of the lift;
	if the player is in the lift or the elevator-door is in location:
		say "The elevator pings politely and opens its doors.";
	otherwise:
		say "From a distance you hear the elevator ping.";
	the doors shut in two turns from now.
	
At the time when the doors shut:
	if elevator-door is open:
		if the elevator-door is in location:
			say "The elevator doors close.";
		now the elevator-door is closed.

Pressing button is an action applying to one number.
understand "push [number]" as pressing button.  Understand "push [number] button" as pressing button.  understand "push button [number]" as pressing button.  

Check pressing button:
	if the player is not in the lift, say "You cannot control the elevator if you are not inside of it." instead;
	if the lift is not stationary, say "Pressing the button repeatedly will not make the elevator move any quicker.";
	if the number understood is the current level of the lift:
		now the lift is stationary;
		now the elevator-door is open;
		the doors shut in two turns from now;
		say "The lift pings politely and opens its doors, since it was already here." instead;
	if the number understood is greater than 3, say "There are only 3 floors." instead;
	if the number understood is less than 0, say "You cannot go below the main floor in this elevator." instead.
	
Carry out pressing button:
	now the elevator-door is closed;
	if the current level of the player is greater than the number understood:
		now the lift is descending;
	otherwise if the current level of the player is less than the number understood:
		now the lift is ascending;
	The Lift arrives in the absolute value of (the number understood minus current level of player) minus 1 turns from now;
	say "You press button [the number understood] and hear the elevator come to life and it begins to move."
	

		
		
		
		
Section 0.5.3 - Look For

Understand "look for [something]" as searching.

Section 0.5.4 - Ask about

Understand "ask [someone] about [any known thing]" as quizzing it about.

The can't greet current interlocutor rule is not listed in the check saying hello to rulebook.

Section 0.5.5 - Trevor

Trevor is a familiar and seen subject.  Understand "son/kid/child/children" as Trevor.  

Before examining Trevor:
	try thinking about trevor instead.

Instead of remembering Trevor:
	try thinking about trevor instead.

Before thinking about Trevor:
	instead say "Trevor's a great kid and you miss him a lot.  However, being with him reminds your failed marriage.  The only good in your life is Trevor and this job.  You're screwing up the relationship with Trevor, but you can't screw up this job.".

	
Section 0.5.6 - Thinking about something

Thinking about is an action applying to one thing.  Understand "Think about [any thing]" as thinking about.
Understand "Remember [any thing]" as thinking about.	

Before thinking about something (called the subject):
	instead say "I really have no thoughts on [the subject]."

Section 0.5.7 - Luggage

Luggage is a closed openable container.  The description is "Your hard-shell suitcase has served you well all these years. It may look old, but it serves its purpose."

Instead of opening luggage when location is not room 203:
	say "You shouldn't unpack your luggage until you get to your room."

Understand "unpack [something]" as opening.	

Section 0.5.8 - Bedrooms

A bed is a kind of supporter.  A bed is always enterable. 

	
A clothed bed is a kind of bed.

 A blanket is a kind of thing.  Some sheets are a kind of thing.  A pillow is a kind of thing.  Some sheets, a blanket, and a pillow are a part of every clothed bed.
 
 Instead of taking something that is part of a clothed bed:
	say "Stripping the bed down is not going to be useful."
	
The description of pillow is usually "Soft and comfortable, good for sleeping."
The description of sheets is usually "White and smell freshly laundered."
The description of blanket is usually "The blanks will keep you warm at night."
	
Chapter 0.6 - Floors

Table of Floors 
level	floor
1	Main Floor 
2	Second Floor 
3	Third Floor 

Chapter 0.7 - Changes to the world model

Section 0.7.1 - General changes

Instead of climbing an enterable supporter, try entering the noun.

Instead of climbing, say "You look for something to pull yourself up with, but find nothing and give up."

Instead of jumping, say "You used to enjoy jumping, but that was before the divorce, when you enjoyed a lot of things."

Instead of sleeping,  say "You can't just fall asleep here."

Instead of waking up, say "While reality can seem like a nightmare, you really are awake."

Instead of thinking, say "You've done a lot of thinking lately, but this is not the time for idle thoughts."


Section 0.7.2 - Additional lines for USE

[Understand "use [a wearable thing]" as wearing.]

Section 0.7.3 - Miscellaneous Verbs

Understand "plugh" or "xyzzy" or "frotz" or "plover" as a mistake ("When that word leaves your lips, small quiet voices in your head speak haunting words of a time long lost.....a time lost forever.").


Section 0.7.4 - Sanity Check Rules

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
	


Section 0.7.5 - Liquids

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
		
		

Chapter 0.8 - Conversation

Section 0.8.1 - General greetings

A person can be alert.	[an alert person will actively notice you when you walk into the room]
Definition: a person is alarmed if he is alert and he is not the current interlocutor.
Every turn when an alarmed person (called the prospective interlocutor) is enclosed by the location:
	try the prospective interlocutor saying hello to the player.

Part 1 - Hotel Main Floor

Chapter 1.1 - General Things

Instead of going direction during Checking In:
	say "[if the desk clerk is recognized]Tom[otherwise]The desk clerk[end if] looks up as you begin to pass by the counter, clears his throat to grab your attention and says, 'Excuse me.  Can I help you?'";
	try silently saying hello to the desk clerk.

After deciding the scope of the player:
	if the location is the lobby, place the elevator exterior in scope;
	if the location is the hotel lounge, place the bartender in scope.

Chapter 1.2 - Hotel Lobby

The Lobby is a room.  "This is the lobby of your hotel.  At first glance it looks impressive and extravagent, but you suspect that if you look close enough you'll see it's just like every two-bit motel you've stayed at....it's just that this is costing quite a bit more.

[if the desk clerk  is not recognized]The desk clerk stands behind the counter in front of you, appearing bored as he looks at [the paperwork] in front of him, but you suspect that he sees and knows more than he first appears.[otherwise]Tom is behind the counter, shuffling through some paperwork.[end if]

As you look around you see the [elevator exterior] to the [north] and [if the hotel lounge is visited]to the [south] is a smokey lounge[otherwise]from the [south] cigarette smoke hangs just inside the doorway[end if]."

the counter is a supporter, enterable and scenery in the lobby.  The description of the counter is "The counter is simply a way to keep you away from the other side."

The paperwork is scenery on the counter.  The description of paperwork is "As you peer at his paperwork [if the desk clerk is not recognized]the desk clerk[otherwise]Tom[end if] glares at you and says, 'Excuse me!'".

instead of taking paperwork:
	try examining paperwork.  [say "[description of paperwork][paragraph break]".]

Rule for reaching inside a room:
	say "You are not close enough to to do that.";
	deny access.
	
instead of giving reservation to desk clerk:
	try quizzing the desk clerk about the reservation instead.

Section 1.2.1 - Room 203 Key

The inventory listing of the room-203-key is "the [o]key[x] to room 203".  Understand "key/skeleton" or "skeleton key" or "203 key" or "room 203 key" as room-203-key.  The printed name of room-203-key is "Room 203 key".

Before examining room-203-key:
	if room-203-key is unfamiliar:
		say "You see a lot of keys hanging behind the counter, but you see nothing special about them." instead;
	otherwise:
		say "An old skeleton key with 203 embossed along the shaft." instead.
		
before taking the room-203-key:
	if room-203-key is carried by the desk clerk:
		if the current interlocutor is not the desk clerk:
			try silently saying hello to the desk clerk;
		say "'Whoa...let me see about your reservation first.  Then I can give you a key.'" instead.

before dropping the room-203-key, instead say "You really don't want to face [the desk clerk] again if you would lose that."

Section 1.2.2 - Tom

In The Lobby is a man called the desk clerk.  
the desk clerk is undescribed.  
Understand "man" as The Desk Clerk.
understand "Tom" as the desk clerk when the desk clerk is recognized.

To say name-of-desk-clerk:
	if the desk clerk is recognized:
		say "Tom";
	otherwise:
		say "the desk clerk" ;


instead of examining the desk clerk for the first time:
	say "The man appears to be the guy you want to talk to so you can check in and get to your room.  [paragraph break]You notice that his name-tag reads [']Tom['].";
	now The Desk Clerk is recognized.

instead of examining the desk clerk:
	 if Checking In has ended:
		say "Tom, is the guy to ask for anything you may need.";
	otherwise:
		say "Tom can help you check in."

The desk clerk carries room-203-key.  The room-203-key is unseen.

Instead of hailing:
	if desk clerk  is current interlocutor:
		instead say "'Yes?  Can I help you?'";
		stop the action.

Greeting response for the desk clerk :
	say "As you walk up to the [counter], [if desk clerk is recognized]Tom[otherwise]the desk clerk[end if] looks up, quickly appraising you and then offers a disinterested, 'Hello[if desk clerk is recognized] again[end if],[if desk clerk is not recognized] my name is Tom,[end if] what can I do for you?'";
	now The Desk Clerk is recognized.

Implicit greeting response for the desk clerk:
	say "[The desk clerk] looks up at you, slightly disturbed that you interrupted him in whatever he was doing.  [paragraph break]".

default ask response for the desk clerk:
	say "[one of]'I really wouldn't know about that.'[or]'Really sir, I'm quite busy and don't have time for such silly questions.'[or]Tom sighs, 'Do I really have to tell you about that?'[in random order]".

Response of the desk clerk when asked about the desk clerk: instead say "'I[']m here to serve you, just ask me about anything.'".
Response of the desk clerk when asked about room-203-key: instead say "'As soon as I check out your reservation, I will give you your key.'".
Response of the desk clerk when asked about room-203-key and room-203-key is familiar: instead say "'I[']ve already given you your key.'".
Response of the desk clerk when asked about reservation: 
	say "'Do you have a reservation?' he asks. [paragraph break]'Yes, the last name is Moore.'[paragraph break]Tom pulls out his reservation book, looks you up and quickly puts away the book as if you would try to steal it.[paragraph break]'Room 203', he says hurridly.   He hands you your keys and looks back down to his work as if you had never existed.[paragraph break]";
	move the room-203-key to the player;
	now reservation is off-stage;
	say "You take the large skeleton key, thinking it strange that a top-rated hotel, in this day and age still use these antiquated keys.";
	now room-203-key is familiar.
Response of the desk clerk when asked about reservation and room-203-key is familiar: instead say "'I[']ve given you your key already....is there something else I can help you with?'".	

Section 1.2.3 - Fishbowl

The fishbowl is a transparent open container.  The fishbowl is on the counter.  Understand "bowl" or "'fish bowl" as fishbowl.

The description of the fishbowl is "The small glass fishbowl sits on the counter off to the side, but well within reach of [if desk clerk is recognized]Tom[otherwise]the desk clerk[end if].  Inside are two gold-fish...well actually they are more red then gold.  [one of]They appear to be staring at you[or]They swim around each other as if reading for a joust[or]They look at [if desk clerk is recognized]Tom [otherwise]The desk clerk [end if] as if in awe[or]They hang in the middle of the bowl looking at each other as if having a conversation[then at random]."

The fish is an undescribed thing.  The fish are in the fishbowl.  The fish are plural-named.
The water is a fluid thing in the fishbowl.  The water is undescribed.

A procedural rule while examining the fishbowl: 
	ignore the examine containers rule. 

Instead of taking the fishbowl:
	say "[if desk clerk is recognized]Tom [otherwise]The desk clerk [end if] nearly jumps over the counter to stop you, 'Those are the property of the Inn, please do not take them', he yells breathlessly.  'You will do well to remember that things that are not yours, should not be taken.'[paragraph break]He seems a bit worked up over a pair of fish, but for now you head his warning."

instead of taking anything contained by the fishbowl:
	try taking the fishbowl.

instead of touching the fishbowl:
	say "[if desk clerk is recognized]Tom [otherwise]The desk clerk [end if] glares at you and you decide to pull your hand back."
	
Every turn during Checking In:
	if a random chance of 1 in 10 succeeds:
		if player is in Lobby:
			say "[one of][name-of-desk-clerk] looks at the fish intensly.[or][name-of-desk-clerk] taps gently on the fishbowl.[or][name-of-desk-clerk] reaches under the counter and throw a small piece of food which the fish devour.[then at random]" in sentence case
	

Chapter 1.3 - Hotel Lounge

The Hotel Lounge is a room.  "You walk into the smokey bar noticing just [a few people] scattered here and there, though everyone is sitting alone.  Curiously, everyone here is dressed in [1920s period clothing], though we are a long way from that.  The bar is along the north wall, but the [bartender] is no where to be seen.  The lobby is back to the west."  The Hotel  Lounge is east of Lobby.  

Section 1.3.1 - General Things

The 1920s period clothing are an undescribed thing in the hotel lounge. the description of 1920s period clothing is "The men are wearing short suit jackets mostly unbuttoned as they lean over their glass deep in thought."
Understand "jacket/jackets/suit/suits" as 1920s period clothing.

A few people are some people in the hotel lounge.  They are undescribed.  the description of a few people is "Everyone is keeping to themselves over their [drinks].  A few have [cigarettes] lit, but not really smoking.  Strangely enough there are no [ladies] here."

The drinks is an undescribed thing in hotel lounge.  The description of drinks is "Occassionally you see someone take a sip, but they as well are mostly ignored."
The cigarettes are an undescribed thing in hotel lounge.  The description of cigarettes is "Lit, but mostly unsmoked and ignored.  The ashes are deep on the end of each."
The ladies are an undescribed thing in hotel lounge.  The description of ladies is "Well you don't see any here, but you figure there should be some around here somewhere."

Section 1.3.2 - Bartender

The bartender is a person.  

Before examining or searching the bartender when bartender is off-stage:
	instead say "I look around the room, but do not see anyone that looks like they may work here."

Chapter 1.4 - Main Floor by the Elevator

Main Floor is a room. "You stand outside the [if elevator-door is open]opened [end if][o]elevator[x].  [The description of elevator exterior]".  The Main Floor is north of lobby.  The printed name is "Main floor by the elevator".

The elevator exterior is in Main Floor.  







Part 2 - Second floor

Chapter 2.1 - General things

Chapter 2.2 - Second Floor by the Elevator

Second Floor is a room.  The description of Second Floor is "You stand outside the [if elevator-door is open]opened [end if][o]elevator[x] on the second floor.  To the south is a hallway where you can see a row of doors to the rooms on this floor.  To the east is an area with vending machines.  [paragraph break][The description of elevator exterior]".  The printed name is "Second floor by the elevator".

The elevator exterior is in Second Floor.

Chapter 2.5 - Outside room 203

Outside-room-203 is a room.  "You are standing outside room room.  On the [o][massive oak door][x] to the east are [o]large brass numbers[x] that ensure there is no mistaking what room this is.  Set in the center of the door just below the numbers is [o][the peep hole][x]."

Large brass numbers are a thing.  Large brass numbers are  part of massive oak door.  The description of large brass numbers is "The numbers read 203."

The printed name is "Outside Room 203". 

Outside-room-203 is south of Second Floor .

Chapter 2.6 - Room 203 door

The massive oak door is an  door.  It is east of outside-room-203 and west of room 203.  the massive oak door is closed and locked.   The description of the massive oak door is "This large oak door you room number 203 in large brass numbers and a peep hole below them.  It is an old door is worn, yet you know it's still very sturdy."

room-203-key unlocks the massive oak door.

The peep hole is a thing.  Peep hole is part of the massive oak door.  Understand "peephole" as the peep hole.

Before examining the peep hole:
	if location is Outside-room-203:
		say "You try to peer through the peep-hole, but you can see nothing from this side." instead;
	otherwise if location is Room 203:
		say "You peer through the peep-hole and see the hallway." instead;



Chapter 2.9 - Room 203

Room 203 is a room.  "As you stand in your room you see your pleasantly surprised at the grandeur of your accomodations.  [A king size bed] sits in one corner of the room, while a [writing desk] sits in the opposite corner.  Beside the bed is a [night stand] which upon it sits a [table lamp] and a [telephone].  To the north is a small bathroom."

A king size bed is a clothed bed.   The king size bed is scenery.  The king size bed is in Room 203.  The description of king size bed is "It looks comfy enough and the sheets look clean."
A writing desk is a fixed in place supporter in Room 203. The writing desk is scenery.  The description of writing desk is "The desk is just the write size to pen a letter, but probably not large enough to spread out a bunch of paperwork."
The night stand is a fixed in place supporter in Room 203.  The night stand is scenery. The description of night stand is "The night stand sits within arms reach of the bed.  Upon it sits a table lamp and a telephone."
The table lamp is fixed in place thing on the night stand.  The description of table lamp is "The table lamp sits on the night stand where it will provide some reading light in bed."
The telephone is a thing on the night stand.  The description of the telephone is "This rotary telephone looks to have seen plenty of use...but it should be just fine to make a phone call."

Room 203 is east of the massive oak door.  

Chapter 2.99 - Vending area

Vending Area is a room.  Vending Area is east of Second floor.


Part 3 - Third floor

Chapter 3.1 - General things

Chapter 3.2 - Third Floor by the Elevator

Third Floor is a room.  The printed name is "Third floor by the elevator"

The elevator exterior is in Third Floor.

Part 98 - Release

Release along with website, interpreter, the source text, and library card.

Part 99 - Testing & Debugging (not for release)

Chapter 99.1- Tests

test reservation with "ask man about hotel room".
test lounge with "ask man about reservation/e".
test elevator with "ask man about room/n".
test elevator-2 with "ask man about room/n/push button/z/z/go in".

