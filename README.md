# Oh Jeez Rick

<p align="center">
 <img src="logo.webp"/>
</p>

# How To Setup
```
$ CLONE_PATH=/where/to/clone
$ git clone git@github.com:OsamaJBR/oh-jeez-Rick.git -o $CLONE_PATH/oh-jeez-Rick
$ echo alias ohjeezRick="bash $CLONE_PATH/oh-jeez-Rick/ohjeezrick.sh" >> ~/.bashrc
$ source ~/.bashrc
```

# How To Use

## List Sounds
```
[osama@echo2]$ ohjeezRick list
Sounds 
--------------
28212
AIDS!.wav
And_that's_the_way_news_goes.wav
And_that's_why_I_always_say.wav
Awww_Bitch.wav
baby_legs.wav
....
....
Good_Job!.wav
Help!.wav
hey_ya_you_doing_ok_.wav
Hi_I'm_mr_meeseeks_look_at_me.wav
hit_the_sack_jack.wav
I_don't_give_a_f**k_you_think.wav
I_like_what_you_got.wav
my_man.wav
my_name_is_morty_smith.wav
oh_man.wav
oh_yeahh.wav
Oooo_yeah__caaan_doo!.wav
owee_(1).wav
you_know_what_this_human_eats.wav
----------------
Total= 56 files
```

## Search (Keyword)
* It's case-insensitive
* Partial search
```
[osama@echo2 ]$ ohjeezRick search mees
# this will play Hi_I'm_mr_meeseeks_look_at_me.wav
```
## Fortune
* Play a random sound file.
* It's the default behavior of this script.
```
[osama@echo2 ]$ ohjeezRick fortune
[osama@echo2 ]$ ohjeezRick
```

## Play
* Play a sound file directly.
* You can list files name the listing command.
```
[osama@echo2 ]$ ohjeezRick play "Show_me_what_you_got!.wav"
```

# Thanks for sound.peal.io, they are the source of sound files.
