%% Tema 8 - Recomandare tinute vestimentare
%% NISCOV IOAN . MANOLE IOANA , PAGU ADRIAN

%% Mesaj sugestiv pentru utilizator
:- writeln('----------------------------------------------------------').
:- writeln(' Pentru recomandare tinuta foloseste:').
:- writeln('    recomanda_tinuta(Temperatura, Ocazie, Preferinta, Tinuta).').
:- writeln(' Exemple:').
:- writeln('    recomanda_tinuta(25, casual, orice, T).').
:- writeln('    recomanda_tinuta(15, business, negru, T).').
:- writeln('----------------------------------------------------------').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 1. Baza de cunoștințe
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% haina(Nume, Categorie, Sezon)
%% --- TOP ---
haina(tricou_alb, top, vara).
haina(tricou_negru, top, vara).
haina(tricou_rosu, top, vara).
haina(tricou_verde, top, vara).
haina(camasa_alba, top, primavara).
haina(camasa_bleu, top, vara).
haina(camasa_neagra, top, toamna).
haina(pulover_gri, top, iarna).
haina(pulover_albastru, top, iarna).
haina(bluza_bej, top, toamna).

%% --- OUTERWEAR ---
haina(geaca_puf, outerwear, iarna).
haina(geaca_piele, outerwear, toamna).
haina(geaca_subtire, outerwear, primavara).
haina(geaca_rosie, outerwear, iarna).
haina(jacheta_bleu, outerwear, primavara).

%% --- BOTTOM ---
haina(blugi, bottom, toate).
haina(blugi_negri, bottom, toate).
haina(pantaloni_eleganti, bottom, toate).
haina(pantaloni_gri, bottom, toamna).
haina(fusta_neagra, bottom, vara).
haina(fusta_rosie, bottom, vara).
haina(pantaloni_scurti, bottom, vara).

%% --- ONEPIECE ---
haina(rochie_rosie, onepiece, vara).
haina(rochie_neagra, onepiece, toate).
haina(rochie_verde, onepiece, primavara).

%% --- INCALTAMINTE ---
haina(tenisi_albi, incaltaminte, toate).
haina(tenisi_negri, incaltaminte, toate).
haina(pantofi_eleganti, incaltaminte, toate).
haina(ghete, incaltaminte, iarna).
haina(sandale, incaltaminte, vara).
haina(bocanci, incaltaminte, iarna).

%% stil(Haina, Stil)
%% --- TOP ---
stil(tricou_alb, casual).
stil(tricou_negru, casual).
stil(tricou_rosu, casual).
stil(tricou_verde, sport).
stil(camasa_alba, formal).
stil(camasa_bleu, smart_casual).
stil(camasa_neagra, elegant).
stil(pulover_gri, casual).
stil(pulover_albastru, casual).
stil(bluza_bej, elegant).

%% --- OUTERWEAR ---
stil(geaca_puf, casual).
stil(geaca_piele, smart_casual).
stil(geaca_subtire, casual).
stil(geaca_rosie, sport).
stil(jacheta_bleu, casual).

%% --- BOTTOM ---
stil(blugi, casual).
stil(blugi_negri, casual).
stil(pantaloni_eleganti, formal).
stil(pantaloni_gri, smart_casual).
stil(fusta_neagra, elegant).
stil(fusta_rosie, elegant).
stil(pantaloni_scurti, casual).

%% --- ONEPIECE ---
stil(rochie_rosie, elegant).
stil(rochie_neagra, elegant).
stil(rochie_verde, casual).

%% --- INCALTAMINTE ---
stil(tenisi_albi, casual).
stil(tenisi_negri, casual).
stil(pantofi_eleganti, elegant).
stil(ghete, casual).
stil(sandale, casual).
stil(bocanci, sport).

%% culoare(Haina, Culoare)
culoare(tricou_alb, alb).
culoare(tricou_negru, negru).
culoare(tricou_rosu, rosu).
culoare(tricou_verde, verde).
culoare(camasa_alba, alb).
culoare(camasa_bleu, bleu).
culoare(camasa_neagra, negru).
culoare(pulover_gri, gri).
culoare(pulover_albastru, albastru).
culoare(bluza_bej, bej).

culoare(geaca_puf, gri).
culoare(geaca_piele, negru).
culoare(geaca_subtire, verde).
culoare(geaca_rosie, rosu).
culoare(jacheta_bleu, bleu).

culoare(blugi, albastru).
culoare(blugi_negri, negru).
culoare(pantaloni_eleganti, negru).
culoare(pantaloni_gri, gri).
culoare(fusta_neagra, negru).
culoare(fusta_rosie, rosu).
culoare(pantaloni_scurti, bej).

culoare(rochie_rosie, rosu).
culoare(rochie_neagra, negru).
culoare(rochie_verde, verde).

culoare(tenisi_albi, alb).
culoare(tenisi_negri, negru).
culoare(pantofi_eleganti, negru).
culoare(ghete, maro).
culoare(sandale, maro).
culoare(bocanci, negru).

%% ocazie(Stil, Ocazie)
ocazie(casual, casual).
ocazie(smart_casual, business).
ocazie(formal, formal).
ocazie(elegant, elegant).
ocazie(sport, casual).

%% temperatura(Sezon, MinT, MaxT)
temperatura(iarna, -20, 10).
temperatura(primavara, 10, 20).
temperatura(toamna, 10, 20).
temperatura(vara, 20, 40).
temperatura(toate, -50, 50).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 2. Predicate utilitare
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

potrivita_temperatura(H, T) :-
    haina(H, _, Sezon),
    temperatura(Sezon, Min, Max),
    T >= Min, T =< Max.

potrivita_eveniment(H, Ev) :-
    stil(H, S),
    ocazie(S, Ev).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 3. Asortare culori
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

asortare(H1, H2) :-
    culoare(H1, C1),
    culoare(H2, C2),
    ( C1 = C2
    ; C1 = alb
    ; C1 = negru
    ; C2 = alb
    ; C2 = negru ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 4. Recomandare tinuta
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

recomanda_tinuta(Temp, Ev, Preferinta, Tinuta) :-

    haina(Top, top, _),
    potrivita_temperatura(Top, Temp),
    potrivita_eveniment(Top, Ev),

    haina(Bottom, bottom, _),
    potrivita_temperatura(Bottom, Temp),
    potrivita_eveniment(Bottom, Ev),
    asortare(Top, Bottom),

    haina(Inc, incaltaminte, _),
    potrivita_temperatura(Inc, Temp),
    potrivita_eveniment(Inc, Ev),

    (   haina(Out, outerwear, _),
        potrivita_temperatura(Out, Temp)
    ;   Out = nimic ),

    ( Preferinta = orice
    ; culoare(Top, Preferinta)
    ; culoare(Bottom, Preferinta)
    ; culoare(Inc, Preferinta)
    ; (Out \= nimic, culoare(Out, Preferinta))
    ),

    Tinuta = tinuta(Top, Bottom, Inc, Out).