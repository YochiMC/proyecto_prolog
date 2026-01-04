%artistas solistas
artista(jose_jose).

artista(post_malone). 

artista(matthew_bellamy).

artista(dave_grohl).

artista(siddhartha).

artista(chris_martin).

artista(leon_larregui).
artista(sergio_acosta).
artista(angel_mosqueda).
artista(rodrigo_guardiola).

artista(tom_chaplin).
artista(tim_rice_oxley). % tim rice-oxley

artista(thom_yorke).
artista(jonny_greenwood).
artista(phil_selway).

artista(billy_corgan).

%bandas y grupos
artista(muse).
artista(nirvana).
artista(foo_fighters).
artista(radiohead).
artista(the_smile).
artista(zoe).
artista(keane).
artista(the_smashing_pumpkins).
artista(linkin_park).
artista(imagine_dragons).
artista(coldplay).

%relaciones entre artistas
parteDe(matthew_bellamy, muse).

parteDe(dave_grohl, nirvana).
parteDe(dave_grohl, foo_fighters).

parteDe(thom_yorke, radiohead).
parteDe(thom_yorke, the_smile).

parteDe(phil_selway, radiohead).

parteDe(jonny_greenwood, radiohead).
parteDe(jonny_greenwood, the_smile).

parteDe(tom_chaplin, keane).
parteDe(tim_rice-oxley, keane).

parteDe(billy_corgan, the_smashing_pumpkins).

parteDe(leon_larregui, zoe).
parteDe(sergio_acosta, zoe).
parteDe(angel_mosqueda, zoe).
parteDe(rodrigo_guardiola, zoe).

parteDe(emily_armstrong, linkin_park).
parteDe(colin_brittain, linkin_park).
parteDe(dave_farrell, linkin_park).
parteDe(mike_shinoda, linkin_park).

parteDe(dan_reynolds, imagine_dragons).
parteDe(wayne_sermon, imagine_dragons).
parteDe(ben_mckee, imagine_dragons).

parteDe(chris_martin, coldplay).

%decadas solamente como hecho
decada(sesentas, 1960, 19690).
decada(setentas, 1970, 1979).
decada(ochentas, 1980, 1989).
decada(noventas, 1990, 1999).
decada(dosmilera, 2000, 2009).
decada(dosmildiez, 2010, 2019).
decada(dosmilveinte, 2020, 2029).

% album linkin park
album(hybrid_theory, 2000, linkin_park).
album(meteora, 2003, linkin_park).
album(from_zero, 2024, linkin_park).

% album imagine dragons 
album(night_visions, 2012, imagine_dragons).
album(mercury_acts_1_and_2, 2022, imagine_dragons).
album(loom, 2024, imagine_dragons).

%albumes de muse
album(showbiz, 1999, muse).
album(origin_of_simmetry, 2001, muse).
album(absolution, 2003, muse).

%albumes de zoe
album(zoe, 2001, zoe).
album(rocanlover, 2003, zoe).
album(memo_rex_commander_y_el_corazon_atomico_de_la_via_lactea, 2006, zoe).
album(programaton, 2013, zoe).
album(aztlan, 2018, zoe).
album(sonidos_de_karmatica_resonancia, 2021, zoe).

%albumes de siddhartha
album(why_you, 2008, siddhartha).
album(naufrago, 2011, siddhartha).
album(el_vuelo_del_pez, 2014, siddhartha).
album(unicos, 2016, siddhartha).
album(memoria_futuro, 2019, siddhartha).
album(00_00, 2022, siddhartha).

%albumes de jose jose
album(cuidado, 1969, jose_jose).
album(la_nave_del_olvido, 1970, jose_jose).
album(el_triste, 1970, jose_jose).

%albumes de nirvana
album(bleach, 1989, nirvana).
album(nevermind, 1991, nirvana).
album(in_utero, 1993, nirvana).

%albumes de foo fighters
album(the_colour_and_the_shape, 1997, foo_fighters).

%albumes de radiohead
album(the_bends, 1995, radiohead).
album(ok_computer, 1997, radiohead).
album(kid_a, 2000, radiohead).

%albumes de the smile
album(a_light_for_attracting_attention, 2022, the_smile).

%albumes de keane
album(hopes_and_fears, 2004, keane).
album(under_the_iron_sea, 2006, keane).

%albumes de the the smashing pumpkins
album(siamese_dream, 1993, the_smashing_pumpkins).
album(mellon_collie_and_the_infinite_sadness, 1995, the_smashing_pumpkins).

%albumes de coldplay
album(parachutes, 2000, coldplay).
album(a_rush_of_blood_to_the_head, 2002, coldplay).
album(x_and_y, 2005, coldplay).

%aqui van etiquetas
tag(navidenas, showbiz).
tag(navidenas, in_utero).
tag(navidenas, origin_of_simmetry).

%aqui para asignar genero a los albumes, artistas y canciones
genero(showbiz, alternative_rock).
genero(showbiz, new_prog).
genero(showbiz, piano_rock).
%------------
genero(origin_of_simmetry, alternative_rock).
genero(origin_of_simmetry, progressive_rock).
genero(origin_of_simmetry, hard_rock).
genero(origin_of_simmetry, space_rock).
%------------
genero(absolution, alternative_rock).
genero(absolution, progressive_rock).
genero(absolution, art_rock).
genero(absolution, hard_rock).
genero(absolution, alternative_metal).

genero(bleach, grunge).
genero(bleach, sludge_metal).
genero(bleach, punk_rock).
genero(bleach, hard_rock).
genero(bleach, indie_rock).
%------------
genero(nevermind, grunge).
genero(nevermind, alternative_rock).
genero(nevermind, punk_rock).
genero(nevermind, pop_punk).
%------------
genero(in_utero, grunge).
genero(in_utero, alternative_rock).
genero(in_utero, punk_rock).
genero(in_utero, noise_rock).

genero(the_bends, alternative_rock).
genero(the_bends, post-britpop).
%------------
genero(ok_computer, alternative_rock).
genero(ok_computer, art_rock).
%------------
genero(kid_a, art_rock).
genero(kid_a, electronica).
genero(kid_a, experimental_rock).

genero(the_colour_and_the_shape, post-grunge).
genero(the_colour_and_the_shape, alternative_rock).

genero(a_light_for_attracting_attention, art_rock).
genero(a_light_for_attracting_attention, electronica).
genero(a_light_for_attracting_attention, post-punk).
genero(a_light_for_attracting_attention, progressive_rock).

genero(hopes_and_fears, alternative_rock).
genero(hopes_and_fears, piano_rock).
genero(hopes_and_fears, pop_rock).
genero(hopes_and_fears, britpop).
%------------
genero(under_the_iron_sea, alternative_rock).
genero(under_the_iron_sea, pop_rock).
genero(under_the_iron_sea, britpop).

genero(siamese_dream, alternative_rock).
genero(siamese_dream, grunge).
genero(siamese_dream, alternative_metal).
genero(siamese_dream, indie_rock).
genero(siamese_dream, hard_rock).
%------------
genero(mellon_collie_and_the_infinite_sadness, alternative_rock).
genero(mellon_collie_and_the_infinite_sadness, grunge).
genero(mellon_collie_and_the_infinite_sadness, alternative_metal).
genero(mellon_collie_and_the_infinite_sadness, art_rock).
genero(mellon_collie_and_the_infinite_sadness, heavy_metal).

genero(parachutes, rock_alternativo).
genero(parachutes, post_britpop).
%------------
genero(a_rush_of_blood_to_the_head, alternative_rock).
genero(a_rush_of_blood_to_the_head, pop_rock).
%------------
genero(x_and_y, alternative_rock).
genero(x_and_y, space_rock).
genero(x_and_y, ambient).

genero(cuidado, bossanova).
genero(cuidado, jazz).
genero(cuidado, balada_romantica).
%------------
genero(la_nave_del_olvido, pop_latino).
genero(la_nave_del_olvido, balada_romantica).
%------------
genero(el_triste, pop_latino).
genero(el_triste, balada_romantica).

genero(meteora, nu_metal).
genero(meteora, rap_metal).
genero(meteora, alternative_rock).
%-------------
genero(hybrid_theory, nu_metal).
genero(hybrid_theory, rap_metal).
genero(hybrid_theory, alternative_rock).
%-------------
genero(from_zero, nu_metal).
genero(from_zero, alternative_rock).
genero(from_zero, alternative_metal).
genero(from_zero, pop_rock).
genero(from_zero, rap_rock).
genero(from_zero, electronic_rock).

genero(loom, pop_rock).
genero(loom, alternative_rock).
%-------------
genero(mercury_acts_1_and_2, pop_rock).
genero(mercury_acts_1_and_2, synth_pop).
genero(mercury_acts_1_and_2, r_and_b).
%-------------
genero(night_visions, pop_rock).
genero(night_visions, alternative_rock).
genero(night_visions, electronic_rock).

%tracklist de los albumes
cancion(from_zero_intro, from_zero).         % "From Zero (Intro)" -> from_zero_intro
cancion(the_emptiness_machine, from_zero).
cancion(cut_the_bridge, from_zero).
cancion(heavy_is_the_crown, from_zero).
cancion(over_each_other, from_zero).
cancion(casualty, from_zero).
cancion(overflow, from_zero).
cancion(two_faced, from_zero).
cancion(stained, from_zero).
cancion(igyeih, from_zero).                  % acrónimo de "I Give You Everything I Have"
cancion(good_things_go, from_zero).
%--------------
cancion(papercut, hybrid_theory).
cancion(one_step_closer, hybrid_theory).
cancion(with_you, hybrid_theory).
cancion(points_of_authority, hybrid_theory).
cancion(crawling, hybrid_theory).
cancion(runaway, hybrid_theory).
cancion(by_myself, hybrid_theory).
cancion(in_the_end, hybrid_theory).
cancion(a_place_for_my_head, hybrid_theory).
cancion(forgotten, hybrid_theory).
cancion(cure_for_the_itch, hybrid_theory).
cancion(pushing_me_away, hybrid_theory).
%---------------
cancion(foreword, meteora).               % "Foreword"
cancion(dont_stay, meteora).              % "Don't Stay"
cancion(somewhere_i_belong, meteora).
cancion(lying_from_you, meteora).
cancion(hit_the_floor, meteora).
cancion(easier_to_run, meteora).
cancion(faint, meteora).
cancion(figure_09, meteora).              % "Figure.09" -> figure_09
cancion(breaking_the_habit, meteora).
cancion(from_the_inside, meteora).
cancion(nobodys_listening, meteora).
cancion(session, meteora).
cancion(numb, meteora).

cancion(wake_up, loom).
cancion(nice_to_meet_you, loom).
cancion(eyes_closed, loom).
cancion(take_me_to_the_beach, loom).
cancion(in_your_corner, loom).
cancion(gods_dont_pray, loom).
cancion(dont_forget_me, loom).
cancion(kid, loom).
cancion(fire_in_these_hills, loom).
%-------------
cancion(enemy_with_jid, mercury_acts_1_and_2).           % "Enemy (with JID)"
cancion(my_life, mercury_acts_1_and_2).
cancion(lonely, mercury_acts_1_and_2).
cancion(wrecked, mercury_acts_1_and_2).
cancion(monday, mercury_acts_1_and_2).
cancion(hash_1, mercury_acts_1_and_2).                   % "#1" -> hash_1
cancion(easy_come_easy_go, mercury_acts_1_and_2).
cancion(giants, mercury_acts_1_and_2).
cancion(its_ok, mercury_acts_1_and_2).                    % It's Ok -> its_ok '
cancion(dull_knives, mercury_acts_1_and_2).
cancion(follow_you, mercury_acts_1_and_2).
cancion(cutthroat, mercury_acts_1_and_2).
cancion(no_time_for_toxic_people, mercury_acts_1_and_2).
cancion(one_day, mercury_acts_1_and_2).
cancion(bones, mercury_acts_1_and_2).
cancion(symphony, mercury_acts_1_and_2).
cancion(sharks, mercury_acts_1_and_2).
cancion(i_dont_like_myself, mercury_acts_1_and_2).       % I Don't Like Myself '
cancion(blur, mercury_acts_1_and_2).
cancion(higher_ground, mercury_acts_1_and_2).
cancion(crushed, mercury_acts_1_and_2).
cancion(take_it_easy, mercury_acts_1_and_2).
cancion(waves, mercury_acts_1_and_2).
cancion(im_happy, mercury_acts_1_and_2).                  % I'm Happy '
cancion(ferris_wheel, mercury_acts_1_and_2).
cancion(peace_of_mind, mercury_acts_1_and_2).
cancion(sirens, mercury_acts_1_and_2).
cancion(tied, mercury_acts_1_and_2).
cancion(younger, mercury_acts_1_and_2).
cancion(i_wish, mercury_acts_1_and_2).                    % presente en versiones digitales
cancion(continual_feat_cory_henry, mercury_acts_1_and_2).  % Continual (feat. Cory Henry)""
cancion(they_dont_know_you_like_i_do, mercury_acts_1_and_2).
%-------------------
cancion(radioactive, night_visions).
cancion(tiptoe, night_visions).
cancion(its_time, night_visions).                     % "It's Time" -> its_time
cancion(demons, night_visions).
cancion(on_top_of_the_world, night_visions).
cancion(amsterdam, night_visions).
cancion(hear_me, night_visions).
cancion(every_night, night_visions).
cancion(bleeding_out, night_visions).
cancion(underdog, night_visions).
cancion(nothing_left_to_say_rocks, night_visions).    % "Nothing Left to Say / Rocks" unido

cancion(sunburn, showbiz).
cancion(muscle_museum, showbiz).
cancion(fillip, showbiz).
cancion(falling_down, showbiz).
cancion(cave, showbiz).
cancion(showbiz, showbiz).
cancion(unintended, showbiz).
cancion(uno, showbiz).
cancion(sober, showbiz).
cancion(escape, showbiz).
cancion(overdue, showbiz).
cancion(hate_this_and_i_ll_love_you, showbiz). %checar ya que es i'll '
cancion(spiral_static, showbiz).
%------------
cancion(newborn, origin_of_simmetry).
cancion(bliss, origin_of_simmetry).
cancion(space_dementia, origin_of_simmetry).
cancion(hyper_music, origin_of_simmetry).
cancion(plug_in_baby, origin_of_simmetry).
cancion(citized_erased, origin_of_simmetry).
cancion(microcuts, origin_of_simmetry).
cancion(screenager, origin_of_simmetry).
cancion(darkshines, origin_of_simmetry).
cancion(feeling_good, origin_of_simmetry).
cancion(megalomania, origin_of_simmetry).
cancion(futurism, origin_of_simmetry).
%------------
cancion(intro, absolution).
cancion(apocalypse_please, absolution).
cancion(time_is_running_out, absolution).
cancion(sing_for_absolution, absolution).
cancion(stockholm_syndrome, absolution).
cancion(falling_away_with_you, absolution).
cancion(interlude, absolution).
cancion(hysteria, absolution).
cancion(blackout, absolution).
cancion(butterflies_and_hurricanes, absolution).
cancion(the_small_print, absolution).
cancion(fury, absolution).
cancion(endlessly, absolution).
cancion(thoughts_of_a_dying_atheist, absolution).
cancion(ruled_by_secrecy, absolution).

cancion(blew, bleach).
cancion(floyd_the_barber, bleach).
cancion(about_a_girl, bleach).
cancion(school, bleach).
cancion(love_buzz, bleach).
cancion(paper_cuts, bleach).
cancion(negative_creep, bleach).
cancion(scoff, bleach).
cancion(swap_meet, bleach).
cancion(mr_moustache, bleach).
cancion(sifting, bleach).
cancion(big_cheese, bleach).
cancion(downer, bleach).
%------------
cancion(smells_like_teen_spirit, nevermind).
cancion(in_bloom, nevermind).
cancion(come_as_you_are, nevermind).
cancion(breed, nevermind).
cancion(lithium, nevermind).
cancion(polly, nevermind).
cancion(territorial_pissings, nevermind).
cancion(drain_you, nevermind).
cancion(lounge_act, nevermind).
cancion(stay_away, nevermind).
cancion(on_a_plain, nevermind).
cancion(something_in_the_way, nevermind).
cancion(endless_nameless, nevermind).
%------------
cancion(serve_the_servants, in_utero).
cancion(scentless_apprentice, in_utero).
cancion(heart-shaped_box, in_utero).
cancion(rape_me, in_utero).
cancion(frances_farmer_will_have_her_revenge_on_seattle, in_utero).
cancion(dumb, in_utero).
cancion(very_ape, in_utero).
cancion(milk_it, in_utero).
cancion(pennyroyal_tea, in_utero).
cancion(radio_friendly_unit_shifter, in_utero).
cancion(tourettes, in_utero). %checar ya que es tourette's '
cancion(all_apologies, in_utero).

cancion(doll, the_colour_and_the_shape).
cancion(monkey_wrench, the_colour_and_the_shape).
cancion(hey_johnny_park, the_colour_and_the_shape). %lleva ! al final
cancion(my_poor_brain, the_colour_and_the_shape).
cancion(wind_up, the_colour_and_the_shape).
cancion(up_in_arms, the_colour_and_the_shape).
cancion(my_hero, the_colour_and_the_shape).
cancion(see_you, the_colour_and_the_shape).
cancion(enough_space, the_colour_and_the_shape).
cancion(february_stars, the_colour_and_the_shape).
cancion(everlong, the_colour_and_the_shape).
cancion(walking_after_you, the_colour_and_the_shape).
cancion(new_way_home, the_colour_and_the_shape).
cancion(the_colour_and_the_shape, the_colour_and_the_shape).

cancion(planet_telex, the_bends).
cancion(the_bends, the_bends).
cancion(high_and_dry, the_bends). %and = &
cancion(fake_plastic_trees, the_bends).
cancion(bones, the_bends).
cancion(nice_dream, the_bends). %(nice_dream)
cancion(just, the_bends).
cancion(my_iron_lung, the_bends).
cancion(bullet_proof__i_wish_a_was, the_bends). %__ = ...
cancion(black_star, the_bends).
cancion(sulk, the_bends).
cancion(street_spirit_fade_out, the_bends). %(fade_out) 
%------------
cancion(airbag, ok_computer).
cancion(paranoid_android, ok_computer).
cancion(subterranean_homesick_alien, ok_computer).
cancion(exit_music_for_a_film, ok_computer). %(for_a_film)
cancion(let_down, ok_computer).
cancion(karma_police, ok_computer).
cancion(fitter_happier, ok_computer).
cancion(electioneering, ok_computer).
cancion(climbing_up_the_walls, ok_computer).
cancion(no_surprises, ok_computer).
cancion(lucky, ok_computer).
cancion(the_tourist, ok_computer).
%------------
cancion(everything_in_its_right_place, kid_a).
cancion(kid_a, kid_a).
cancion(the_national_athem, kid_a).
cancion(how_to_disappear_completely, kid_a).
cancion(treefingers, kid_a).
cancion(optimistic, kid_a).
cancion(in_limbo, kid_a).
cancion(idioteque, kid_a).
cancion(morning_bell, kid_a).
cancion(motion_picture_soundtrack, kid_a).

cancion(the_same, a_light_for_attracting_attention).
cancion(the_opposite, a_light_for_attracting_attention).
cancion(you_will_never_work_in_television_again, a_light_for_attracting_attention).
cancion(pana-vision, a_light_for_attracting_attention).
cancion(the_smoke, a_light_for_attracting_attention).
cancion(speech_bubbles, a_light_for_attracting_attention).
cancion(thin_thing, a_light_for_attracting_attention).
cancion(open_the_floodgates, a_light_for_attracting_attention).
cancion(free_in_the_knowledge, a_light_for_attracting_attention).
cancion(a_hairdryer, a_light_for_attracting_attention).
cancion(waving_a_white_flag, a_light_for_attracting_attention).
cancion(we_dont_know_what_tomorrow_brings, a_light_for_attracting_attention). %completar don't  '
cancion(skrting_on_the_surface, a_light_for_attracting_attention).

cancion(dont_panic, parachutes).
cancion(shiver, parachutes).
cancion(spies, parachutes).
cancion(sparks, parachutes).
cancion(yellow, parachutes).
cancion(trouble, parachutes).
cancion(parachutes, parachutes).        % canción homónima
cancion(high_speed, parachutes).
cancion(we_never_change, parachutes).
cancion(everythings_not_lost, parachutes). % contiene pista oculta "life_is_for_living"
%----------
cancion(politik, a_rush_of_blood_to_the_head).
cancion(in_my_place, a_rush_of_blood_to_the_head).
cancion(god_put_a_smile_upon_your_face, a_rush_of_blood_to_the_head).
cancion(the_scientist, a_rush_of_blood_to_the_head).
cancion(clocks, a_rush_of_blood_to_the_head).
cancion(daylight, a_rush_of_blood_to_the_head).
cancion(green_eyes, a_rush_of_blood_to_the_head).
cancion(warning_sign, a_rush_of_blood_to_the_head).
cancion(a_whisper, a_rush_of_blood_to_the_head).
cancion(a_rush_of_blood_to_the_head_cancion, a_rush_of_blood_to_the_head).  % canción homónima
cancion(amsterdam, a_rush_of_blood_to_the_head).
%------------
cancion(square_one, x_and_y).
cancion(what_if, x_and_y).
cancion(white_shadows, x_and_y).
cancion(fix_you, x_and_y).
cancion(talk, x_and_y).
cancion(x_and_y_cancion, x_and_y).        % "X&Y" -> x_and_y_cancion
cancion(speed_of_sound, x_and_y).
cancion(a_message, x_and_y).
cancion(low, x_and_y).
cancion(the_hardest_part, x_and_y).
cancion(swallowed_in_the_sea, x_and_y).
cancion(twisted_logic, x_and_y).
cancion(til_kingdom_come, x_and_y).       % pista oculta "'Til Kingdom Come"

cancion(somewhere_only_we_know, hopes_and_fears).
cancion(bend_and_break, hopes_and_fears).
cancion(we_might_as_well_be_strangers, hopes_and_fears).
cancion(everybodys_changing, hopes_and_fears).   % Everybody's Changing  '
cancion(your_eyes_open, hopes_and_fears).
cancion(she_has_no_time, hopes_and_fears).
cancion(cant_stop_now, hopes_and_fears).          % Can't Stop Now  '
cancion(sunshine, hopes_and_fears).
cancion(this_is_the_last_time, hopes_and_fears).
cancion(untitled_1, hopes_and_fears).
cancion(bedshaped, hopes_and_fears).
%------------
cancion(atlantic, under_the_iron_sea).
cancion(is_it_any_wonder, under_the_iron_sea).   % Is It Any Wonder?
cancion(nothing_in_my_way, under_the_iron_sea).
cancion(leaving_so_soon, under_the_iron_sea).    % Leaving So Soon?
cancion(a_bad_dream, under_the_iron_sea).
cancion(hamburg_song, under_the_iron_sea).
cancion(put_it_behind_you, under_the_iron_sea).
cancion(the_iron_sea, under_the_iron_sea).
cancion(crystal_ball, under_the_iron_sea).
cancion(try_again, under_the_iron_sea).
cancion(broken_toy, under_the_iron_sea).
cancion(the_frog_prince, under_the_iron_sea). 

cancion(cherub_rock, siamese_dream).
cancion(quiet, siamese_dream).
cancion(today, siamese_dream).
cancion(hummer, siamese_dream).
cancion(rocket, siamese_dream).
cancion(disarm, siamese_dream).
cancion(soma, siamese_dream).
cancion(geek_usa, siamese_dream).       % geek u.s.a. -> atom: geek_usa     .
cancion(mayonaise, siamese_dream).      % mayonaise (no error de sintaxis)
cancion(spaceboy, siamese_dream).
cancion(silverfuck, siamese_dream).
cancion(sweet_sweet, siamese_dream).
cancion(luna, siamese_dream).
%------------
cancion(mellon_collie_and_the_infinite_sadness, mellon_collie_and_the_infinite_sadness).
cancion(tonight_tonight, mellon_collie_and_the_infinite_sadness).
cancion(jellybelly, mellon_collie_and_the_infinite_sadness).
cancion(zero, mellon_collie_and_the_infinite_sadness).
cancion(here_is_no_why, mellon_collie_and_the_infinite_sadness).
cancion(bullet_with_butterfly_wings, mellon_collie_and_the_infinite_sadness).
cancion(to_forgive, mellon_collie_and_the_infinite_sadness).
cancion(fuck_you_an_ode_to_no_one, mellon_collie_and_the_infinite_sadness). % caracter raro, ver comentario
cancion(love, mellon_collie_and_the_infinite_sadness).
cancion(cupid_de_locke, mellon_collie_and_the_infinite_sadness).
cancion(galapogos, mellon_collie_and_the_infinite_sadness).
cancion(muzzle, mellon_collie_and_the_infinite_sadness).
cancion(porcelina_of_the_vast_oceans, mellon_collie_and_the_infinite_sadness).
cancion(take_me_down, mellon_collie_and_the_infinite_sadness).
cancion(where_boys_fear_to_tread, mellon_collie_and_the_infinite_sadness).
cancion(bodies, mellon_collie_and_the_infinite_sadness).
cancion(thirty_three, mellon_collie_and_the_infinite_sadness). % "Thirty-Three" -> thirty_three
cancion(in_the_arms_of_sleep, mellon_collie_and_the_infinite_sadness).
cancion(one_nine_seven_nine, mellon_collie_and_the_infinite_sadness). % 1979 no válido -> usar texto alterno
cancion(tales_of_a_scorched_earth, mellon_collie_and_the_infinite_sadness).
cancion(thru_the_eyes_of_ruby, mellon_collie_and_the_infinite_sadness).
cancion(stumbleine, mellon_collie_and_the_infinite_sadness).
cancion(x_y_u, mellon_collie_and_the_infinite_sadness).           % "X.Y.U." -> x_y_u
cancion(we_only_come_out_at_night, mellon_collie_and_the_infinite_sadness).
cancion(beautiful, mellon_collie_and_the_infinite_sadness).
cancion(lily_my_one_and_only, mellon_collie_and_the_infinite_sadness). % "Lily (My One And Only)" -> lily_my_one_and_only
cancion(by_starlight, mellon_collie_and_the_infinite_sadness).
cancion(farewell_and_goodnight, mellon_collie_and_the_infinite_sadness).

cancion(solo_una_mujer, cuidado).
cancion(una_manana, cuidado).
cancion(se_agradecera, cuidado).
cancion(pero_te_extrano, cuidado).
cancion(monologo, cuidado).
cancion(la_amante_perfecta, cuidado).
cancion(sin_ella, cuidado).
cancion(agua_con_sal, cuidado).
cancion(lluvia_en_la_tarde, cuidado).
cancion(presiento, cuidado).
cancion(cuidado, cuidado).
cancion(antes, cuidado).
%------------
cancion(la_nave_del_olvido, la_nave_del_olvido).
cancion(el_dia_mas_triste_del_mundo, la_nave_del_olvido).
cancion(si_alguien_me_dijera, la_nave_del_olvido).
cancion(ven_y_veras, la_nave_del_olvido).
cancion(alguien, la_nave_del_olvido).
cancion(ella_es_asi, la_nave_del_olvido).
cancion(del_altar_a_la_tumba, la_nave_del_olvido).
cancion(y_el_mundo_sigue_girando, la_nave_del_olvido).
cancion(nadie_simplemente_nadie, la_nave_del_olvido).
cancion(mirar_el_amor, la_nave_del_olvido).
cancion(avalancha, la_nave_del_olvido).
cancion(un_mundo_para_ti, la_nave_del_olvido).
%------------
cancion(alguien_vendra, el_triste).
cancion(mi_nina, el_triste).
cancion(la_noche_de_los_dos, el_triste).
cancion(llegara, el_triste).
cancion(dios_es_amor, el_triste).
cancion(el_triste, el_triste).
cancion(esa_cancion_de_ayer, el_triste).
cancion(nunca_me_dejes, el_triste).
cancion(oh_gente, el_triste).
cancion(amoras, el_triste).
cancion(a_partir_de_hoy, el_triste).
cancion(dos, el_triste).

cancion(asteroide, zoe).
cancion(deja_te_conecto, zoe).
cancion(miel, zoe).
cancion(electricidad, zoe).
cancion(razor_blade, zoe).
cancion(beat_breaker, zoe).
cancion(universo, zoe).
cancion(conspirador, zoe).
cancion(microscopio, zoe).
cancion(infinito, zoe).
cancion(random_time, zoe).
cancion(tarantula, zoe).
cancion(haze_girl, zoe).
%---------
cancion(peace_and_love, rocanlover).
cancion(love, rocanlover).
cancion(solo, rocanlover).
cancion(tu, rocanlover).
cancion(fotosintesis, rocanlover).
cancion(veneno, rocanlover).
cancion(frio, rocanlover).
cancion(polar, rocanlover).
cancion(rocanroler, rocanlover).
cancion(whatever, rocanlover).
cancion(mars_200, rocanlover).
cancion(sonye, rocanlover).
%---------
cancion(memo_rex, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(via_lactea, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(vinyl, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(no_me_destruyas, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(corazon_atomico, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(mrs_nitro, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(nunca, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(the_room, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(paula, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(human_space_volt, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(triste_sister, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(side_effects, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
cancion(paz, memo_rex_comander_y_el_corazon_atomico_de_la_via_lactea).
%---------
cancion(diez_am, programaton). %10 am
cancion(camara_lenta, programaton).
cancion(dos_mil_trece, programaton).
cancion(fin_de_semana, programaton).
cancion(arrullo_de_estrellas, programaton).
cancion(ciudades_invisibles, programaton).
cancion(panoramas, programaton).
cancion(game_over_shanghai_liu_yang_river, programaton). % (liu_yang_river)
cancion(andromeda, programaton).
cancion(sedantes, programaton).
cancion(altamar, programaton).
%---------
cancion(venus, aztlan).
cancion(azul, aztlan).
cancion(no_hay_mal_que_dure, aztlan).
cancion(al_final, aztlan).
cancion(hielo, aztlan).
cancion(luci, aztlan).
cancion(aztlan, aztlan).
cancion(temor_y_temblor, aztlan).
cancion(renacer, aztlan).
cancion(ella_es_magia, aztlan).
cancion(oropel, aztlan).
cancion(clarividad, aztlan).
%---------
cancion(popular, sonidos_de_karmatica_resonancia).
cancion(karmadame, sonidos_de_karmatica_resonancia).
cancion(velur, sonidos_de_karmatica_resonancia).
cancion(el_duelo, sonidos_de_karmatica_resonancia).
cancion(skr, sonidos_de_karmatica_resonancia).
cancion(cancion_de_cuna_para_marte, sonidos_de_karmatica_resonancia).
cancion(tepoztlan, sonidos_de_karmatica_resonancia).
cancion(fiebre, sonidos_de_karmatica_resonancia).
cancion(ese_cuadro_no_me_pinta, sonidos_de_karmatica_resonancia).
cancion(bestiario, sonidos_de_karmatica_resonancia).

cancion(volver_a_ver, why_you).
cancion(sacudeme, why_you).
cancion(en_silencio, why_you).
cancion(control, why_you).
cancion(el_dia, why_you).
cancion(colecciono_planetas, why_you).
cancion(nube, why_you).
cancion(nada, why_you).
cancion(why_you, why_you).
cancion(los_felices, why_you).
cancion(fin, why_you).
%---------
cancion(la_verdad, naufrago).
cancion(extranios, naufrago). %extraños
cancion(domingo, naufrago).
cancion(la_historia, naufrago).
cancion(naufrago, naufrago).
cancion(humo, naufrago).
cancion(camaleon, naufrago).
cancion(color, naufrago).
cancion(el_poema_y_la_caja, naufrago).
cancion(nunca_es_nunca, naufrago).
cancion(mi_castillo_de_blanca_arena, naufrago).
%---------
cancion(el_aire, el_vuelo_del_pez).
cancion(infinitos, el_vuelo_del_pez).
cancion(bacalar, el_vuelo_del_pez).
cancion(una_senal, el_vuelo_del_pez).
cancion(el_deshielo, el_vuelo_del_pez).
cancion(ecos_de_miel, el_vuelo_del_pez).
cancion(al_anochecer, el_vuelo_del_pez).
cancion(gota_a_gota, el_vuelo_del_pez).
cancion(tonight, el_vuelo_del_pez).
cancion(fogata, el_vuelo_del_pez).
cancion(loco_con_caloncho, el_vuelo_del_pez).
%---------
cancion(ser_parte, unicos).
cancion(tarde, unicos).
cancion(camuflaje, unicos).
cancion(camara, unicos).
cancion(una_noche_tranquila, unicos).
cancion(tus_pupilas, unicos).
cancion(a_la_distancia, unicos).
cancion(unicos, unicos).
cancion(iman, unicos).
cancion(el_chico, unicos).
%---------
cancion(algun_dia, memoria_futuro).
cancion(pelicula, memoria_futuro).
cancion(aves_del_tiempo, memoria_futuro).
cancion(cada_vez_que_vuelvas, memoria_futuro).
cancion(me_hace_falta, memoria_futuro).
cancion(la_ciudad_feat_zoe, memoria_futuro).
cancion(buscandote, memoria_futuro).
cancion(respiro_feat_ximena_sarinana, memoria_futuro).
cancion(vida, memoria_futuro).
cancion(memoria_futuro, memoria_futuro).
%---------
cancion(brujula, 00_00).
cancion(cardumenes, 00_00).
cancion(paraiso_lunar, 00_00).
cancion(00_00, 00_00).
cancion(huracanes, 00_00).
cancion(mapa_con_ana_torroja, 00_00).
cancion(ochenta_dias_con_carlos_sadness, 00_00). %80 dias
cancion(balsa, 00_00).
cancion(suburbios, 00_00).
cancion(no_es_antes_ni_es_despues, 00_00).

%aqui van los me gusta
meGusta(muse).
meGusta(nirvana).
meGusta(absolution).
meGusta(nevermind).
meGusta(time_is_running_out). 
meGusta(idioteque).