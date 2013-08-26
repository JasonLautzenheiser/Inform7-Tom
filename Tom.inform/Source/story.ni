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

Include Basic Screen Effects by Emily Short.
Include Plurality by Emily Short.
Include Conversation Framework by Eric Eve.
Include Conversation Responses by Eric Eve.
Include Conversational Defaults by Eric Eve.
Include Keyword Interface by Aaron Reed.
Include Trinity Inventory by Mikael Segercrantz.
Include Numbers by Krister Fundin.
Include Epistemology by Eric Eve.
Include Small Kindnesses by Aaron Reed.

[Use library message alerts.]

Section 0.1.3 - Definitions 

[these definitions help us define whether there are people in a room or not (other than the player)]
Definition: a person is another if it is not the player.
Definition: A room is occupied rather than unoccupied if another person is in it.

Section 0.1.4.1- Rules

Rule for deciding whether all includes scenery: it does not.  [Take all and things like that do not include scenery]
Rule for deciding whether all includes scenery: it does not.
Rule for deciding whether all includes people while taking: it does not.
[Rule for printing room description details: stop.]

Section 0.1.4.2 - Actions

Remembering is an action applying to one thing.

To say p:
	say "[paragraph break]".
	
	
Section 0.1.5 - Scenes

A scene can be a flashback.

Checking In is a scene.  Checking In begins when play begins.  Checking In ends when player carries the room-203-key for the first time.
Finding your room is a scene.  Finding your room begins when checking in ends.  Finding your room ends when player is in room 203 for the first time.

baseball-game is a flashback scene.  Baseball-game begins when photo-of-trevor is familiar for the first time.

flight-in is a flashback scene.  flight-in begins when reservation is familiar for the first time.


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

after examining the reservation for the first time:
	now baseball is remembered;
	say "The office manager booked this reservation for you.  Typically he puts you up at a little two bit motel, so not sure why he chose this place....I'm sure it wasn't cheap.[paragraph break]He did make up for it on the flight however by booking you coach.....might as well been in the luggage compartment for all it was worth.  The landing was rough...."
	
	
Section 0.3.2 - Fedora hat

The fedora hat is a wearable thing.  The description is "Your trusty fedora has seen better days, but it's black trim-ribbon, while slightly frayed, still holds the feather your son found on your trip last year to the beach."
Understand "trim-ribbon" or "ribbon/trim/feather" as fedora hat.

	
Section 0.3.3 - Wallet

The wallet is a container.  The initial appearance of the wallet is "Your black leather wallet has been with you [if fedora hat is familiar]almost as long as your hat[otherwise] for a good number of years[end if]."  The description of the wallet is "The black leather is cracked, but the wallet still serves it's purpose."

The player is carrying the wallet.

Section 0.3.4 - Photo of son

The photo-of-trevor is a thing.   The description of photo-of-trevor  is "This photo of your son is a bit ragged from the constant viewing of it as you reminisce on better days.  The photo shows Trevor and you together after his first baseball game when he was just six."

after examining photo-of-trevor for the first time:
	now baseball is remembered;
	say "Trevor loved to play baseball.  From his first game in tee-ball, you knew he would be something special.  The joy on his face as he played....was indescrible, something you'll never forget.[paragraph break]Now that part of your life is behind you....oh he mentions his games to you the few times a year you see him, but you have not experienced the joy of him in the game since that first year.[paragraph break][first time]Your vision blurs and your mind is transported to another place....[only]".

The photo-of-trevor is in the wallet.  The printed name of photo-of-trevor is "photo"

Understand "photo/photograph/picture" as photo-of-trevor 


Chapter 0.4 - Standard Responses

Instead of singing: say "Back in the day you thought you were a decent singer, your ex-wife thought differently.  You decide to refrain from singing so as not to subject others to it."
Instead of saying sorry: say "You mumble apologetically under your breath."
Instead of pushing or pulling or taking a fixed in place thing: say "You strain to move [the noun], but only succeed in working up a sweat and nothing more[if location is occupied]; well you do garner a few strange looks[end if]."

Chapter 0.5 - New kinds and actions

Section 0.5.1 - Flashlight

[Because every game has a flashlight doesn't it?]

The description of the flashlight is "This is a normal flashlight.  No batteries so it doesn't work."

Section 0.5.2 - Elevator exterior

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
Before going north in Main Floor, try going inside instead.

Instead of going inside in the presence of elevator exterior:
	if the elevator-door is open:
		move the player to the lift instead;
	otherwise:
		try opening the elevator-door instead.
		
Section 0.5.3 - Elevator

The Lift is a room.  The description of the lift is "The large elevator [if the lift is unoccupied] is empty[end if].  A [three-legged stool], where a elevator jockey would sit, is in front of the elevators [control panel]."  The printed name of the Lift is "The Elevator".

Understand "elevators/door/doors" as Lift when in the Lift.

The three-legged stool is a fixed in place supporter in the lift.  The description is "The three-legged stool sits in front of the elevators control panel."  The stool is enterable.

The control panel is a fixed in place undescribed thing in the lift.  The description is "The panel's three buttons are labeled 1, 2, and 3."  The initial appearance of the panel is "The elevator's control panel sits beside the door with just three buttons labeled 1, 2 and 3."

Instead of listening when in the lift, say "You can hear the faint sound of music coming from all sides."

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
	now the elevator-door is closed;
	say "You press button [the number understood in words] and hear the elevator come to life and it begins to move.  Quickly, seemingly much faster than you thought it should take, you've arrived at floor [the number understood in words] and the doors open before you.";
	the doors shut in two turns from now;
	
		
Section 0.5.3 - Look For

Understand "look for [something]" as searching.

Section 0.5.4 - Ask about

Understand "ask [someone] about [any known thing]" as quizzing it about.

The can't greet current interlocutor rule is not listed in the check saying hello to rulebook.


	
Section 0.5.6 - Thinking about something

Table of Remembering Messages
rule name	message
Remembering generic report remembering rule	"I really have no thoughts on [the noun] [line break]"

Thinking about is an action applying to one thing.  Understand "Think about [any thing]" as thinking about.
Understand "Remember [any thing]" as thinking about.	
understand "examine [any known subject]" or "x [any known subject]" or "look at/for [any known subject]" as remembering.

The allow remembering faraway things rule is listed instead of the basic accessibility rule in the action-processing rules.

This is the allow remembering faraway things rule:
	unless remembering a subject, abide by the basic accessibility rule.

Report remembering (this is the Remembering generic report remembering rule): say the message corresponding to a rule name of Remembering generic report remembering rule in Table of Remembering Messages.

Before thinking about something (called the subject):
	instead say "I really have no thoughts on [the subject]."

Section 0.5.7 - Luggage

Luggage is a closed openable container.  The description is "Your hard-shell suitcase has served you well all these years. It may look old, but it serves its purpose."  Understand "suitcase" as luggage.

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

Chapter 0.8 - Subjects

a subject can be remembered or forgotten.  A subject is usually forgotten.

instead of remembering a subject (called whatever):
	try thinking about whatever instead.

Section 0.8.1 - Trevor

Trevor is a familiar and seen subject.  Understand "son/kid/child/children" as Trevor. 

Before thinking about Trevor:
	if baseball-game is not happening:
		instead say "You remember how Trevor's a great kid and you miss him a lot.  However, being with him reminds you of your failed marriage.  The only good in your life is Trevor and this job.  You're screwing up the relationship with Trevor, but you can't screw up this job.".

Section 0.8.2 - Baseball

baseball is a familiar and seen subject.

before thinking about baseball:
	now baseball is remembered;
	say "Trevor loved to play baseball.  From his first game in tee-ball, you knew he would be something special.  The joy on his face as he played....was indescrible, something you'll never forget.[paragraph break]Now that part of your life is behind you....oh he mentions his games to you the few times a year you see him, but you have not experienced the joy of him in the game since that first year.";
	stop the action.
	
Chapter 0.8 - Characters

[some characters you'll see through out the story.  characters that are only in one location may appear in their specific room in code.  Those here tend to be seen in multiple places and scenes.  General information is here, though specific changes based on location / scene may be in those spots.]

Section 0.8.1 - Pam

Pam is a woman.  


	
	


Part 1 - Hotel Main Floor

Chapter 1.1 - General Things

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

Instead of going direction during Checking In:
	say "[if the desk clerk is recognized]Tom[otherwise]The desk clerk[end if] looks up as you begin to pass by the counter, clears his throat to grab your attention and says, 'Excuse me.  Can I help you?'";
	if clerk is not current interlocutor:
		try silently saying hello to the desk clerk.


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

To say Name-of-desk-clerk:
	if the desk clerk is recognized:
		say "Tom";
	otherwise:
		say "The desk clerk" ;

the description of the desk clerk is "[Name-of-desk-clerk] is wearing a black suit with bow tie and white undershirt.  His hair is slicked back and to the left neatly and his oblong face and square jaw give him a look of an anvil.  His small round spectacles make his eyes appears especially beady on such a large head."

[instead of examining the desk clerk for the first time:
	say "The man appears to be the guy you want to talk to so you can check in and get to your room[if desk clerk is not recognized].  You notice that his name-tag reads [']Tom['][end if].";
	now the desk clerk is recognized.
]

[instead of examining the desk clerk:
	 if Checking In has ended:
		say "Tom, is the guy to ask for anything you may need.";
	otherwise:
		say "Tom can help you check in."
]

The desk clerk carries room-203-key.  The room-203-key is unseen.

after saying hello to desk clerk:
	say "As you walk up to the [counter], [if desk clerk is recognized]Tom[otherwise]the desk clerk[end if] looks up, quickly appraising you and then offers a disinterested, '[if desk clerk is recognized]You again?[otherwise]My name is Tom,[end if] what do you want?'";
	now the desk clerk is recognized.

before saying hello to desk clerk:
	if desk clerk is current interlocutor:
		say "He looks at you and taps his fingers on the counter waiting for you to say something important." instead;
		stop the action.

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
	say "[if desk clerk is recognized]Tom [otherwise]The desk clerk [end if] nearly jumps over the counter to stop you, 'Those are the property of the Inn, please do not take them', he yells breathlessly.  'You will do well to remember that things that are not yours, should not be taken.'[paragraph break]He seems a bit worked up over a pair of fish, but for now you heed his warning."

instead of taking anything contained by the fishbowl:
	try taking the fishbowl.

before doing something other than taking or examining the fishbowl:
	say "[if desk clerk is recognized]Tom [otherwise]The desk clerk [end if]glares at you and you decide to rethink doing that." instead.
	
Every turn during Checking In:
	if a random chance of 1 in 20 succeeds:
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

Part 90 - Cut Scenes

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

Chapter 90.1 - Baseball game

baseball-game ends when the umpire is revealed.

When baseball-game begins:
	say "Your vision blurs and your mind is transported to another place.";
	pause the game;
	clear the screen;
	strip the player;
	now player is in baseball-field;
	the Ball-is-missed in two turns from now.

When baseball-game ends:
	pause the game;
	clear the screen;
	restore the player;

Baseball-field is a room.  "You are sitting on the first base side of a [baseball-diamond].  Your son Trevor is up to bat.  Trevor is six and this is his first baseball game.  You feel excited and nervous all at the same time.  The anticipation of him doing well has eaten at you all day.  But most of all the thought of him having fun is forefront.[paragraph break]Trevor on the other hand, is all business.  He comes up to bat, with the ball sitting on the tee and the look on his face tells you that to him, this is the World Series.  To him, this is the most important moment of his life and he's got this under control.[paragraph break][Pam] on the other hand, is sitting beside you, smoking a cigarette, barely seems to notice that Trevor is there.  She's too focused yapping with her friends on her cell, to notice that her own son, her flesh and blood is up to bat."  The printed name of baseball-field is "Baseball Field".

baseball-diamond is a thing in Baseball-field .  The printed name is "baseball diamond".  The description of the baseball-diamond is "You've been to a baseball field before.  Four bases, nine players on the field, a tenth up to bat and up to 3 more on the bases.  An umpire stands behind home plate and coaches stand at first and third base...you know your typically stuff....oh yes, these are all kids and your son is up to bat."  Understand "baseball/diamond" as baseball-diamond when baseball-game is happening.

Instead of examining yourself during baseball-game:
	say "You are sitting here on the edge of your seat watching your son play ball."
	
An umpire is a thing in baseball-field.  The umpire can be revealed or unrevealed.  The umpire is unrevealed.  The description of umpire is "Suited up in his gear like he is umping a professional game, the umpire is taking this game amongst six year olds as serious as one as well."

Pam is in Baseball-field.  The description of Pam is "My wife, still as beautiful as the day we met.  You would never guess she is in her 40s.  But her personality has changed drastically since we first met, and even more so since Trevor was born.[first time][paragraph break]We met in college as freshman, becoming best friends, then lovers and eventually married our senior year.   We held off having children until she became established in her career at the ad agency.  But even then by our mid thirties, I think she gave in to having a baby just so I'd stop bugging her about it.  After Trevor was born, she went right back to work and Trevor became a nuisance to her.....oh she puts on the air of a loving mother in public, but as soon as she is out of the public eye, she is back to thinking only of herself.[only]"

Before going during baseball-game:
	say "You're not leaving now, your son is playing ball." instead.
	
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
	
Before thinking about Trevor while baseball-game is happening:
	say "Trevor is only six, yet looks so grown up in his baseball gear." instead.
	

Chapter 90.2 - Flight in

flight-in ends when the dark-figure is revealed.

flight-scene-state is a kind of value.  the flight-scene-states are part1, part2 and part3.  
Airplane has a flight-scene-state.  

when flight-in begins:
	say "Your vision blurs and your mind is transported to another place.";
	pause the game;
	clear the screen;
	strip the player;
	now the reservation is carried by the player;
	now the wallet is carried by the player;
	now the fedora hat is worn by the player;
	now player is in airplane;
	airplane-scene-2 happens in one turn from now.

When flight-in ends:
	pause the game;
	clear the screen;
	restore the player;
	now the reservation is carried by the player;
	now the wallet is carried by the player;
	now the fedora hat is worn by the player;

	
Section 90.2.1 - Item descriptions
	
Airplane is a room.  The description of airplane is "[one of]....you're coming in hard for the landing.  Not sure what is going on, but the pilot gave an announcement moments before landing letting us know it was going to be a rough one.  He wasn't mistaken.  Jostled about, you're wondering how the plane manages to stay together, as you sure feel like you're being shaken apart.  The old lady beside you almost rolls in your lap, partially from the jostle, but I think she is truly frightened and you're the closest thing to cling to.[or]You're sitting in coach [if elderly lady is on-stage]beside a heavy [elderly lady] that smells of perfume and cigarettes[end if].[stopping]". 

The elderly lady is a woman in airplane.  The elderly lady is undescribed.  The description of the elderly lady is "The old lady beside you is quite large.  She has been a pleasant companion throughout the flight however. Unfortunately, her girth has made for a rather unpleasant trip.  She smells of cheap perfume and cigarettes, you'll be smelling those for quite some time now.  She has been a constant chatter box, but despite listening to her for hours, you've learned little about her other than she is coming home."

The airplane-window is scenery in the airplane.  The printed name of airplane-window is "window".  Understand "window" as airplane-window while flight-in is happening.

The dark-figure is an undescribed thing.  The dark-figure can be revealed or unrevealed.  The dark-figure is unrevealed.  dark-figure is in airplane.

[understand "look out/-- [something]" as examining airplane-window.]

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


		
Section 90.2.2 - Scheduled events

at the time when airplane-scene-2 happens:
	say "The plane has finally landed...after bouncing up and down the runway a few times and is now slowly rolling to a stop.  You are none the worse for wear, despite being a bit frazzled.  The old lady on the other hand appears to be gasping for breath, she is extremely agitated and seems near to panicking.  You try to calm her down by talking to here about her family.

'You say you're from around here?' you ask.

'Ye..es, ' she answers breathlessly, 'my family owned a local hotel in town.....until we had to sell it during the depression.'

'Which hotel?'

'The Beumont on 1st street in the old center of town, ' she replies.

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
	
Section 90.2.3 - Scene specific rules / actions

instead of jumping during flight-in:
	say "You're currently strapped in and need to stay that way until the flight has ended."




Part 98 - Release

Release along with website, interpreter, the source text, and library card.

Part 99 - Testing & Debugging (not for release)

Chapter 99.1- Tests

test reservation with "ask man about hotel room".
test lounge with "ask man about reservation/e".
test elevator with "ask man about room/n".
test elevator-2 with "ask man about room/n/push button/z/z/go in".

