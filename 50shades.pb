
#include <stdmap.pbi>
#include <format.pbi>


excerpt: 
	fetish-paragraph PBRK
	interrogative PBRK
	affirmation PBRK
	[confirmation|nothing] he-touches-me-gently PBRK
	paragraph PBRK
	r-paragraph 
	
|
	r-paragraph PBRK
	paragraph 
	
|
	interjection ". That " singular-abstract-noun "!" PBRK
	remark PBRK
	paragraph PBRK
	r-paragraph PBRK
	
|
	interrogative statement-of-nervousness PBRK
	paragraph PBRK
	fetish-paragraph PBRK
	r-paragraph PBRK
	
|
	interrogative PBRK
	affirmation PBRK
	confirmation PBRK
	command PBRK
	paragraph
	
|
	paragraph PBRK
	order PBRK
	fetish-paragraph PBRK
	remark r-paragraph 
;
	

//PG-rated paragraph
paragraph: 
kiss-sentence1 repeated-kiss-sentence2 head-holding-sentence inner-goddess-sentence
| kiss-sentence1 repeated-kiss-sentence2 music-sentence music-sentence2 head-holding-sentence;


repeated-kiss-sentence2: kiss-sentence2 | kiss-sentence2 kiss-sentence2 | kiss-sentence2 kiss-sentence2 kiss-sentence2 ;

//R-rated paragraph
r-paragraph: 
forceful-sentence kiss-sentence-r observation-sentence
|forceful-sentence touch-sentence rhetorical-question 
|forceful-sentence touch-sentence i-blush ITALIC(interjection) ". " ;


observation-sentence: observation>upcase-first ". ";






//-----------------------------Fetish sentences -----------------------------------------//

fetish-paragraph: 
	statement-of-fetish-obj statement-of-nervousness [statement-of-fetish-obj3 | statement-of-fetish-obj2]
	| transition statement-of-fetish-obj3  statement-of-fetish-obj statement-of-fetish-obj2
	| statement-of-fetish-obj ITALIC(interjection) ". " statement-of-fetish-obj2 
	;

statement-of-fetish-obj: //TODO: sub/verb agreement
	 "His " fetish-obj " " fetish-obj>is-positioned " " fetish-obj>on-top-of ". " 
	| fetish-obj>demonstrative-pronoun>upcase-first " " fetish-obj "! We've never used " fetish-obj>article " " 	
		fetish-obj " before. ";
	

statement-of-fetish-obj3: 
	exclamation ", he's so "["complicated" | "hard to please" | "fucked-up"] ". " 
	|"If only it didn't take a contract and " fetish-obj>article " " fetish-obj " to " ["please" | "satisfy"] " him. "
	|[bad-im-nervous]>upcase-first ". I worry, again, that I'm not enough for him. " ;

statement-of-fetish-obj2: //TODO: sub/verb agreement
	"I don't know if I can do this for him. " 
	| "I can't imagine how he wants to use " ITALIC(fetish-obj>demonstrative-pronoun) ". " 
	| "What on earth does he have in store for me? " 
	| "His "["fingers brush"|"eyes glance over"]" the " fetish-obj>short-form ", and " im-turned-on ". ";
	
	
statement-of-nervousness:""
	"I glance " nervous-adv " at the " ["bed" | "doorway" | "playroom"] ". " 
	| "I " shiver " " nervous-adv ", excitement blooming deep inside me. " 
	| im-nervous>upcase-first ". "
	;

im-nervous: 
	"my heart starts pounding" [" in anticipation"|""]
	| "my heart skips a beat" 
	| "my breathing accelerates" 
	| "my stomach somersaults" 
	| "I'm quaking like a leaf" 
	| "my breath hitches"  
	;

bad-im-nervous:
	"my stomach sinks" 
	| "my mouth goes dry" 
	|"I'm suddenly flooded with despair";


nervous-adj: "nervous" | "anxious" ;
nervous-adv: nervous-adj "ly" ;	

fetish-objs:
	"handcuffs" | "nipple clamps" | "flogger" | "paddle" | "leather strap" | "rope" ;

fetish-obj: fo << fetish-objs ;

demonstrative-pronoun: 
	"handcuffs" -> "those" 
	"nipple clamps" -> "those" 
	"flogger" -> "that" 
	"paddle" -> "that"
	"leather strap" -> "that"
	"rope" -> "that"
	;
	
short-form: 
	"handcuffs" -> "cuffs" 
	"nipple clamps" -> "clamps" 
	"flogger" -> "instrument" 
	"paddle" -> "paddle"
	"leather strap" -> "strap"
	"rope" -> "coil"
	;

article: 
	"handcuffs" -> "a pair of" 
	"nipple clamps" -> "a pair of" 
	"flogger" -> "a" 
	"paddle" -> "a"
	"leather strap" -> "a"
	"rope" -> ""
	;
	
is-positioned: 
	"handcuffs" -> "sit on top of" 
	"nipple clamps" -> "peek out of" 
	"flogger" -> "is draped over" 
	"paddle" -> "lies casually on"
	"leather strap" -> "is propped against"
	"rope" -> "is coiled on"
	;

on-top-of:
	"handcuffs" -> "the still-rumpled bed" 
	"nipple clamps" -> "that velvet drawer" 
	"flogger" -> "the edge of the bed" 
	"paddle" -> "his imposing, leather-topped desk"
	"leather strap" -> "the stack of books on his desk"
	"rope" -> "the foot of the bed"
	;
	
	

affirmation: //TODO needs more variety
//"Yes," I breathe.
//"Okay." My voice is barely audible.
"'" yes[[","|"..."]"' " i-say [" "breathlessly] ". " | ".' "["My voice is barely audible" | "I swallow"]". "] ;

yes: "Yes" | "Yes. Oh, yes" | "Okay" | "Please" ;

command: 
"'"["Surprise me" | "Take me" | "Don't make me wait"] ",' " i-say ". " ;

order:
"'" ["turn around" | "face the wall" | "get on the bed" | "on your knees"]>upcase-first [".' " | ",' " he-says ", " ["and I comply immediately" |turning-me-on " and " turning-me-on] ". "] ;


conf: 
	"Good" 
	| "Good girl" 
	| "Tell me what you want" 
	| "I want to hear you " [["moan" | "scream"] " for me"|""] 
	| "This will be hard, but I won't hurt you" 
	| "Remember, I'll never hurt you" 
	| "This is not going to hurt. It will be intense"
	;
	
confirmation: ""
//He smiles. "Good."
//"Tell me," he murmurs, his breathing harsh.
	smile>upcase-first ". " "'"conf".' " 
	| "'" conf ",' " he-says [", " compound-adj] ". " 
	| "'" conf ". " conf ".' "
;

smile: 
"he smiles " ["wickedly" | "teasingly" | "twistedly"] | "he smirks" | "his lips tense" | "his lips part" | "his lips twitch" ;

rhetorical-remark: ""
# "'"["Do you know how beautiful you are?" | "What am I going to do with you?"]",' " he-says ". " 
;

remark: 
	"'"["The things I'm going to do to you ..." 
		| "God, I need you" 
		| "I want you so much"
		| "You are so beautiful"
		| "You. Are. So. Beautiful"
		| "You. Are. So. Sweet"
		| "Keep still"]
	",' " he-says [" as he hovers over me" | ", staring intently into my eyes" | ", pinning me with his bold gaze"] ". "
	;

interrogative: ""
	//"Do you want to play?" he says, his voice low, and everything in my body heads south as desire
	//unfurls deep in my belly.
	"'" question ",' " he-says ", " compound-adj ", and " im-turned-on " as " im-turned-on ". " 
	//'Do you want to play? ,' he whispers.  His gaze is smoky, and I feel .  
	|"'" question ",' " he-says ". " compound-sentence>upcase-first ", and " im-turned-on ". " 
			
	//"You were very disobedient," he murmurs in my ear, sending delicious shivers through me.
	| "'" question ",' " he-says " " compound-adv ", " turning-me-on ". " 
	;


question:
	"Do you want " ["me" | "to play"] "? " 
	| "You were very disobedient" 
	| "I am going to teach you a lesson" 
	| "Here? " 
	| "Do you have anything in mind? " 
	| "Ready?" ;

//For modifying "he says"
compound-adj: 
//his voice low
//his breathing harsh.
//his eyes smoky
	"his " ["voice" | "breathing"] " " voice-adj 
	| "his " eyes " " eyes-adj 
	;

//Same thing, but as a sentence.
compound-sentence: ""
//His eyes are smoky.
	"his " ["voice" | "breathing"] " is " voice-adj 
	| "his " eyes-same " " eyes-same>is " " eyes-adj-phrase 
	;
	
eyes-same: es << eyes;
eyes: "eyes" | "gaze" ;
is: 
"eyes" -> "are"
"gaze" -> "is" ;
eyes-adj-phrase: eyes-adj | eyes-adj | eyes-adj | eyes-adj ", " eyes-adj | "scorching molten gray" | "softly luminous in the diffuse glow of the lamp" | "drinking me in" | "burning brighter";
eyes-adj: "smoky" | "gray" | "intense" | "burning" | "smouldering" | "darkening" | slate | "scorching" | "stormy" ;
eyes-phrase: "his " eyes-adj " " eyes ;
slate: "slate" | "darkest slate" ;
eyes-verb: "fixes on me" | "meets mine" ;

voice-adj: "husky" | "harsh" | "hard" | "low" ;

// For modifying "he says"
compound-adv:
"in my ear" | "teasingly";

im-turned-on: 
	"everything in my body tightens" 
	| "desire unfurls deep in my belly" 
	| "my muscles clench deep inside me" 
	| "dark desire unfolds throughout my body" 
	| "an electric thrill thrums through me"
	| ["a delicious "|""] "tingling shoots through me"
	| "a pulse of warmth pools inside me"
	| "I tingle ... everywhere"
	| "everything south of my waist tightens deliciously" ;
	
im-turned-on-r:
	"desire courses through my blood"
	|"desire seizes me with a vengeance"
	|"my craving spirals out of control"
	|"my body rises and fills with my arousal"
	|"desire and anxiety pump through me"
	|"I'm drowning in a pool of desire"
	| "I surrender briefly to the sensation"
	| "I am awash with sensation"
	| "I lose myself to his fervent passion"
	| "I am all sensation" ;

sex-sentence-modifier:
	"responding to his" ["kiss"|"presence"|"nearness"|"touch"]
	;

turning-me-on:
	"making me tremble" 
	| "igniting a fire deep within" 
	| "making my muscles clench " ["in response"|"deep, deep inside"] 
	| "sending" [" delicious"|""] " shivers " ["through me ... " ITALIC("there") | "down my spine"] 
	| "raising uncontrollable urges in me" 
	| "sparking electricity ... below" 
	| "making me squirm"
	| "feeling spiraling out from deep within my belly"
	| "coursing heat throughout my body"
	| "igniting my blood"
	| "shallowing my breath"
	| "warmth pooling below my waist"
	| "anticipation and anxiety charging through me"
	| "my insides liquefying"
	;
	
turning-me-on-r:
	"making me writhe"
	| "making me yearn for him" 
	| "pleasure lancing directly to my groin"	;
	
i-moan: 
	"I moan" [" again "|""] [" into his mouth"|" against his lips"|""]
	|"I squirm against him"
	|"I gasp " ["at his words " | "and moan " ["against his lips"|""]]
	|"I yelp"
	|"I bite my lip"
	;

adj-modifier:
	"my eyes tightly closed"
	|"his voice at my ear" 
	|"his breath on my neck" ;
	
//----------------Inner goddess----------------------------------//

//Only 1 of these
inner-goddess-sentence: inner-goddess>upcase-first " " does-goddess-action ". " ;
inner-goddess: "my subconscious" | "my inner goddess" ;
does-goddess-action: 
	"is purring with pleasure"
	|"is screaming at me" 
	| "does the samba" 
	| "does a slow erotic dance" 
	| "glares at me" 
	| "is staring at me in awe" 
	| "swoons and passes out somewhere in the back of my head" 
	| "is thrilled" 
	| "is doing the merengue with some salsa moves" 
	| "has stopped dancing and is staring too, mouth open and drooling slightly" 
	;
goddess-action-modifier: "tapping her foot impatiently" ;




//----------------Kissing --------------------//

//The start of kissing
kiss-sentence1:
	moving-to-kiss-me ", " he-kisses-me ", " kiss-adj ", " turning-me-on ". "
	| he-moves-to-kiss-me ", and " im-nervous ". " he-kisses-me>upcase-first comma-kiss-adj ". "
	;
//Use one, two, or three phrases. There's no "repeat X times" function.
comma-kiss-adj: ", " kiss-adj | ", " kiss-adj ", " kiss-adj | ", " kiss-adj ", " kiss-adj ", " kiss-adj ;

//A generic kiss
kiss-sentence2:
	he-kisses-me>upcase-first ", " kiss-adj comma-turning-me-on ". "
	| he-kisses-me>upcase-first ", and " im-turned-on ". "
	| kiss-adj-comma>upcase-first he-kisses-me ". "
	;
	
//Use one, two, or three phrases.		
kiss-adj-comma: kiss-adj ", " | kiss-adj ", " kiss-adj ", " | kiss-adj ", " kiss-adj ", " kiss-adj ", " ;
comma-turning-me-on: ", " turning-me-on | ", " turning-me-on ", " turning-me-on | ", " turning-me-on ", " turning-me-on ;
	
//Dirty kiss!
kiss-sentence-r: 
	he-kisses-me>upcase-first ", " dirty-kiss-adj comma-turning-me-on-r ". "
	| he-kisses-me>upcase-first ", and " im-turned-on-r ". "
	| dirty-kiss-adj-comma>upcase-first he-kisses-me ". "
;

//Use one, two, or three phrases.		
dirty-kiss-adj-comma: dirty-kiss-adj ", " | dirty-kiss-adj ", " dirty-kiss-adj ", " | dirty-kiss-adj ", " dirty-kiss-adj ", " ;
comma-turning-me-on-r: ", " turning-me-on-r | ", " turning-me-on-r ", " turning-me-on-r | ", " turning-me-on-r ", " turning-me-on-r ;

moving-to-kiss-me:
	"Tipping my chin back"
	| "Leaning down"
	;

he-moves-to-kiss-me:
	"He " [
		"reaches down" 
		|"lifts my chin"
		|"runs his nose along my " ["jaw" | "forehead"]
		|"leans in"
		];
		
he-kisses-me:
	"he plants a soft " ["wet "|""] "kiss on my lips"
	|"he softly kisses my " ["face" | "throat" | "cheek" | "temple" | "bottom lip"]
	|"he kisses me"
	|"his " ["skilled "|""] "tongue invades my mouth"
	|"his mouth is on mine"
	
	;

kiss-adj:
	"insistent"
	|"tasting"
	|"exploring"
	|"dominating"
	|"his eyes glowing with lust"
	;

dirty-kiss-adj:
	"forceful"
	|"lustful"
	|"exploring"
	|"frantic"
	|"his eyes wild"
	;
	
dirty-kiss-adv:
	"savagely" 
	| "frantically"
	| "forcefully"
	;


# head holding

head-holding-sentence:
	he-holds-my-head>upcase-first ", " holding-my-head ". "
	| i-moan ", and " he-holds-my-head ", " holding-my-head ". "
	| holding-my-head>upcase-first ", " he-holds-my-head ", " playing-with-hair ". "
	;

he-holds-my-head:
	"he curls his fingers " ["around my head" | "into my hair"]
	|"his hand tightens around my hair"[" at my nape"|""]
	|"his fingers curl into my hair"
	| "he grabs my hair and yanks down"
	|"one of his hands moves into my hair"
	;

holding-my-head:
	["holding my head in place"
		|"holding me "["gently "|"firmly "] "in place"
		|"pulling my head back"
		|"lifting his other hand to cradle my face"
	] 
	[" as we kiss" [", " dirty-kiss-adv|""] | ""]
	;

playing-with-hair:
	"running his fingers through my hair"
	|"fisting his hands"
	|"holding tight"
	;

//--------------------- Touching ------------------------------------------

// Only use 1 of these (not enough variety).
touch-sentence: t1 t2 ". " | t1 ". " observation>upcase-first ". " ;
//# He gently trails his fingertips up my thigh so that I tingle . . . everywhere.
t1 :	he-touches-me>upcase-first ;// | he-touches-me>upcase-first [", and " ["then "|""] "lower" [" still" |""] |""] ;

t2: " so that " im-turned-on-r | ", and " im-turned-on-r ;

	
he-touches-me:
	"his " hands " " touch-verb " " touch-prep " my " body-part 
	| "his " hands " " gently " " touch-verb " " touch-prep " my " body-part 
	| "his " hands " " touch-verb " " touch-prep " my " body-part " " gently
	| "he " touch-verb "s his " hands " " touch-prep " my " body-part
	| "he " gently " " touch-verb "s his " hands " " touch-prep " my " body-part 
	| "he " touch-verb "s his " hands " " gently " " touch-prep " my " body-part
	| "he " touch-verb "s his " hands " " touch-prep " my " body-part " " gently
	;

gently: "gently" | "softly" ;

touch-verb: "trail" | "skim" | "run" | "trace" ;

touch-prep: "up" | "down" | "along" | "across" ;

hands:	"hands" | "fingers" | "fingertips" ; #"hand" //Commenting for now so I don't have to deal with subj/verb agreement

body-part: "body" | "back" | "thighs" | "neck" | "belly";

he-touches-me-gently: //TODO
	[["His fingers " ["brush" | "graze"] | "He " ["touches"|"cups"]] " my face gently" 
	| "He caresses my " ["cheek" | "hair"] ", gazing at me " ["lovingly" | "tenderly"]] ", " 
		turning-me-on ". ";


//--------------------------Forceful action to initiate ----------------------------------

//Use 1 only, at the beginning of a paragraph.
forceful-sentence: 
	action-prefix ", he " acts-forcefully ", " shoving-me ". " observation>upcase-first comma-turning-me-on-r ". "
	|action-prefix ", he " shoves-me ". " he-pins-me ", and " observation ". "
	;

action-prefix:
	"Moving suddenly"
	|"All of a sudden"
	|"Suddenly"
	|"Abruptly"
	|"Without warning"
	|"Catching me off guard"
	;

acts-forcefully:
	"grabs me by the " ["waist" | "shoulders"]
	|"yanks me off my feet"
	;

shoves-me: ["shoves"|"pushes"|"slams"] " me against the " wall ;
		
shoving-me: ["shoving"|"pushing"|"slamming"] " me against the " wall ;

object-to-be-shoved-into: "wall" | "bedpost" | "desk" | "doorway" ;
wall: w<<object-to-be-shoved-into ;

he-pins-me:
	"He's pinning me to the " wall " using his hips"
	|"He holds me against his hips"
	|"He restrains me with his hips"
	;
	
pinning-me:
	"his hips restraining me" 
	;

observation: 
	"it's so hot"
	|"my breathing is too loud"
	|"fuck, I'm panting already"
	|"I'm going to combust"
	|"I can see nothing, all I can hear is my rapid breathing"
	|"all the air leaves my body"
	|"I groan, frustrated"
	|"it's pleasure overload"
	|"it's so erotic—his need for me"
	|"I groan loudly, panting"
	|"I inhale sharply"
	|"I practically convulse"
	|"my heart is pounding" 
	|"my pulse is haywire"
	;
	
	
rhetorical-question:
	"How can his body do this to me?" 
	| "How can he turn me on with one word?"
	| "How can he do this to me?"
	|"How does he have this power over me?"
	;

transition:
//He grins wickedly.
//He straightens.
	"He grins against my neck. " 
	| "He straightens. " 
	| "He smirks at me. " 
	| "He stalks gracefully forward. " 
	| "He smiles a slow sexy smile. "
	;

singular-abstract-noun:
//That look.
"look" | "power" | "sex appeal" | "gaze" ;

exclamation: "Boy" | "God" | "Jeez";
interjection: "Holy shit" 
	| "Holy crap" | "Holy cow" | "Holy hell" | "Crap" | "Shit" | "Oh my" 
	| "I want him so badly" 
	| "Oh, I want this" ;
prefix-or-suffix: "oh my" ;
prefix: "oh my" | "hmm" ;

sexual-interjection: "'Ah,' I groan" | "'Fuck!', I scream" ;



shiver: "tremble" | "shiver" ;
shivered: shiver "ed" ;

kiss: "kiss is" | "lips are" ;
demanding: "demanding" | "forceful" | "powerful" | "bold" ;

mesmerized: "hypnotized" | "captivated" | "mesmerized" | "fascinated" ;
im-mesmerized: "I'm " mesmerized " by him" ;


music-sentence: 
	"I can hear music faintly. "
	| "I can hear a song by " composer-source " drifting through the air. "
	| "The " music-adjective " strains of " composer [" waft through the air" | " drift through the headphones he put on me"] ". "
	;
music-sentence2: "How " music-reaction ". "
	| "He always puts songs on repeat in here. "
	| "I love his choice. " ;

music-adjective: "haunting" | "sultry" | "sensual" | "pulsing" ;
composer: b<<composer-source ;
composer-source: "Kings of Leon" | "Tallis" | "Miley Cyrus" | "Justin Bieber" ;
music-reaction: "unexpected" | "appropriate" ;


i-blush: 
	"I " blush " " blush-adjective ". "
	| "I " blush " " blush-adjective ", " blush-modifier ". "
	| "Why am I embarrassed by this? "
	;
blush: "blush" | "flush" ;
blush-adjective: "scarlet" | "from my head to my toes" | "deeply" | ", feeling my face flame";
blush-modifier: humiliated " and " excited " at the same time";
humiliated: "humiliated" | "ashamed";
excited: "excited" | "turned on";

he-says: "he " ["murmurs" | "growls" | "whispers" | "breathes"] ;
i-say: "I " ["exhale" | "whisper" | "breathe"] ;

nothing: "" ;

