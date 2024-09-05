/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR tide = 0 // 0 It_is_low_tide, 1 It_is_high_tide


-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time() }


+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() }
* { time == 1 } [Pick up some seashells] -> shells
+ [Move back up the beach] -> seashore
+ [Move farther down the beach] -> far_shore

== far_shore ==
You move farther down the beach

{&It is low tide| It is high tide}

* [Go for a swim] -> water
+ [Move back up the beach] -> beach2

==water== 
You enjoy cooling off in the refreshing water, but as you're relaxing you see an ominous drosal fin sticking out of the water.
* [Panic and quickly swim back to the shore] -> water_panic
* [Sit very still] -> water_attack

==water_panic==
As you wildly thrash at the water your hamstring begins to cramp and you start sinking to the bottom of the water. As you being to drown you see a large silhouette of a shark come toward you. As the panic begins to rush over you you realize that it's a dolphin not a shark. It stops beside you and gives you time to grab ahold before it takes you to shallower water.
*[Continue]-> shore_safe

==shore_safe==
As you slowly stand up in the shallow water you see the dolpin turn around and begin to swim away. You breathe a huge of relief, smile, and wave at your aquatic friend as it stretches into the horizon. When it is finally out of sight you decide that maybe it's time to head home for the day. None of your friends are going to believe the story you have to tell tomrorow.
-> END

==water_attack==
The mysterious creature swims up to you only for you to realize that it is a dolphin. It splashes you with its tail, makes an almost giggle-like sound and swims away.
 [Return to the shore] -> far_shore2
 
 ==far_shore2==
 You return to the shore and contemplate taking a nap on the beach or going back to where you were earlier.
 [Return to the beginning of the beach] -> seashore
 [Stay and lay down for a while] -> nap
 
 ==nap==
 You lay down to take a nap. By the time you wake up it is dark and you realize you should probably be getting home. You enjoyed your day off at the beach
 -> END

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
