VAR timeLoop = 0
VAR timer = 10

-> Start

=== CheckTimer ===
    ~timer = timer - 1
    You have {timer} seconds left in this loop.
    {
        - timer == 0:
        //reset the timer
        ~timer = timer + 10
        -> Start
        - else:
        ->->
    }
//Using Gather as while loop

=== walk_around ===
You found out you are inside a unknown place. It's dark and quiet, and you can't remember anything and memories. You look around and found that there are two NPC around here. But those NPC don't have any expression on their face. They don't show their emotion. Just like a walking dead.

    What should you do?
     ++ (talk) Greet with the NPC with weapon.
    ->CheckTimer ->
    -> x_talktonpc
    
    ++ (talk2) Talk to the NPC looks friendly.
    ->CheckTimer ->
    -> friendly_talk
    
    ++ (wait) Wait for the loop to reset.
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> Start
    
=x_talktonpc
    +You:"Hello, What is your name!"
    ->CheckTimer ->
    NPC_1: "Tony"
    ->CheckTimer ->
    ++You:"Nice to meet you Tony."
    ->CheckTimer ->
        Tony is quiet. NPC_2 coming out.
    ->CheckTimer ->
    +++ NPC_2: "Would you please shut up?"
    ->CheckTimer ->
    You:"What?"
    ->CheckTimer ->
    ++++ NPC_2: "Just shut the fuck up?"
    ->CheckTimer ->
    NPC_2 pull out the knife and stub in you.
    ->CheckTimer ->
    -> Start
    
=friendly_talk
    +You:"Hello, What is your name!"
    ->CheckTimer ->
    NPC_1: "Tony"
    ->CheckTimer ->
    ++You:"Nice to meet you Tony."
    ->CheckTimer ->
     Tony:"I know your name, Julia!"
    ->CheckTimer ->
    +++ You: "Wait? You know my name?"
    ->CheckTimer ->
    Tony:"We have a history, and best memories"
    ->CheckTimer ->
    ++++ You:"Wait, Tony. I don't understand! what do you mean"
    ->CheckTimer ->
    Tony:"It's okay, Julia. You don't need to remember"
    +++++You:"Please, Tell me everything I know!"
    Tony:"I love you before and now it's over!"
    ->CheckTimer ->
    -> Start

=talktony
->Start

=== perfect_end_1 ===
You wake up! You found out it's just a dream. But you should understand that:

Love is not forever, but it doesn't meant to be forgotten. There will always be some bad break up with low spirits, but there will always be some light of hope. As the saying goes, "time is the best medicine", the pain in your heart will eventually fade away and disappear.
->END

=== perfect_end_2 ===
You bless each other and face the future bravely. Suddenly you wake up from sleep and it was a dream. Even though you know the ending is a bit sad, it's also full of hope and optimism for the future, which makes people feel good. In life, people often encounter similar situations. When we learn to let go of the past and meet new challenges, we will gain a better life.
->END

=== Start ===
+"Emm, where am I?"
You waking up in a strange room with no memory of how they got there

~timeLoop = timeLoop + 1
You are now in loop {timeLoop}.

What do you want to do?
    ++ (explore) Explore the area.
    -> CheckTimer -> 
    ->walk_around
    //-> Start
    
    ++ (talk) Talk to the NPCs with weapon.
    ->CheckTimer ->
    -> tony_help
    
    ++ (talk1) Talk to the NPCs looks friendly.
    ->CheckTimer ->
    -> x_reveal_secret
    
    ++ (wait) Wait for the loop to reset.
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    
    ++ {x_reveal_secret} Tony:"You are back, Julia. It's time to explain all"
    -> CheckTimer ->
    +++Tony:"Because you and me, we falling in love before."
    At this moment, all you memory have come back to your mind! You remember everything.
    -> CheckTimer ->
    ++++You:"I understand! Because I love you before! We have good memories before!"
    It seen like the timer had been stop! 
    Tony: We need to have a good talk, I think we should break up.

    +++++You: Break up? Why? There is no problem between us.

    Tony: I know that we have always been good, but I think our relationship has reached a bottleneck period, and we need to think about whether our future is really suitable for being together.

    ++++++You: I understand your thinking, but I think we can overcome any problem together. There are still many beautiful things between us waiting for us to achieve.

    Tony: I appreciate your support and understanding, but we need to face reality. I've thought about it seriously, and I think our breakup is the best option for both of us.

    +++++++You: Well, if you really think this is the best choice for us, then I will respect your decision. I hope we can remain friendly and face the future together.

    Tony: I also hope we can stay friendly, our time together is a very important part of my life, I will never forget you.

    ++++++++You: I will never forget you, I wish you happiness.
    
    ->perfect_end_2
    
    ++ {tony_help} You:"Hi, Tony, I am Julia, help me!"
    -> CheckTimer ->
    Tony:"Julia? Is it real you?!"
    -> CheckTimer ->
    +++You:"Yes, Tony. I know your secret. Drop your weapon, we can talk about more."
    -> CheckTimer ->
    Tony:"Why I need to trust you?"
    -> CheckTimer ->
    At this moment, all you memory have come back to your mind! You remember everything.
    
    ++++You:"Because I love you before! We have good memories before!"
    
    It seen like the timer had been stop! 
    
    Tony: "I know, Julia, but everything is over!"
    
    +++++ You:"Tony, I can't forget you. please!"
    
    Tony:"Julia, You should leave your own obsession with this relationship. I still love you, but our personalities, ideas and future plans are very different. I don't want our relationship to become more painful and unhappy. I know it's sad, and so am I. But we can't stay together out of fear of change. We should all strive for a better life and happiness. I will always love you too, but now we need to go our separate ways. I wish you happiness in the future."
    
     ++++++ You:"Tony! ..."
        ->perfect_end_1
    
- ->END



=tony_help
    You:" Tony, I know your secret. Drop your weapon, we can talk about more."
    -> CheckTimer ->
    +++ Tony: "? What? "
    -> CheckTimer ->
    ++++ You: "You already told me that, but I can help you! "
    -> CheckTimer ->
    +++++ Tony: "How? you greedy woman"
    -> CheckTimer ->
    ++++++ You:"Trust me, together, I can save you, and you can save me!"
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    +++++++ Tony:"Say Julia next time, I will trust and help you!"
    -> CheckTimer ->
    -> CheckTimer ->
-> Start

=x_reveal_secret
    You:"Hi, Tony, I am Julia, I know you!"
    +++ Tony: "Julia, I am waiting for you."
    -> CheckTimer ->
    ++++ You: "You already told me that, we falling love together. "
    -> CheckTimer ->
    +++++ Tony: "Wait, let me correct, it's before"
    -> CheckTimer ->
    ++++++ You:"Tony?"
    You and tony are both quiet in 5 seconds.
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    -> CheckTimer ->
    +++++++ Tony:"I will talk more with you next loop!"
    -> CheckTimer ->
    
-> Start