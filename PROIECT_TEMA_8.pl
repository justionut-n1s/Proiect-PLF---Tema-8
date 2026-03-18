%% Tema 8 - Recomandare tinute vestimentare
%% NISCOV IOAN . MANOLE IOANA , PAGU ADRIAN

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 1. Baza de cunoștințe
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% haina(Nume, Categorie, Sezon)
haina(tricou_alb, top, vara).
haina(tricou_negru, top, vara).
haina(camasa_alba, top, primavara).
haina(camasa_bleu, top, vara).
haina(pulover_gri, top, iarna).

haina(geaca_puf, outerwear, iarna).
haina(geaca_piele, outerwear, toamna).
haina(geaca_subtire, outerwear, primavara).

haina(blugi, bottom, toate).
haina(pantaloni_eleganti, bottom, toate).
haina(fusta_neagra, bottom, vara).
haina(pantaloni_scurti, bottom, vara).

haina(rochie_rosie, onepiece, vara).
haina(rochie_neagra, onepiece, toate).

haina(tenisi_albi, incaltaminte, toate).
haina(pantofi_eleganti, incaltaminte, toate).
haina(ghete, incaltaminte, iarna).
haina(sandale, incaltaminte, vara).

%% stil(Haina, Stil)
stil(tricou_alb, casual).
stil(tricou_negru, casual).
stil(camasa_alba, formal).
stil(camasa_bleu, smart_casual).
stil(pulover_gri, casual).

stil(geaca_puf, casual).
stil(geaca_piele, smart_casual).
stil(geaca_subtire, casual).

stil(blugi, casual).
stil(pantaloni_eleganti, formal).
stil(fusta_neagra, elegant).
stil(pantaloni_scurti, casual).
stil(rochie_rosie, elegant).
stil(rochie_neagra, elegant).

stil(tenisi_albi, casual).
stil(pantofi_eleganti, elegant).
stil(ghete, casual).
stil(sandale, casual).

%% culoare(Haina, Culoare)
culoare(tricou_alb, alb).
culoare(tricou_negru, negru).
culoare(camasa_alba, alb).
culoare(camasa_bleu, bleu).
culoare(pulover_gri, gri).

culoare(geaca_puf, gri).
culoare(geaca_piele, negru).
culoare(geaca_subtire, verde).

culoare(blugi, albastru).
culoare(pantaloni_eleganti, negru).
culoare(fusta_neagra, negru).
culoare(pantaloni_scurti, bej).

culoare(rochie_rosie, rosu).
culoare(rochie_neagra, negru).

culoare(tenisi_albi, alb).
culoare(pantofi_eleganti, negru).
culoare(ghete, maro).
culoare(sandale, maro).

%% ocazie(Stil, Ocazie)
ocazie(casual, casual).
ocazie(smart_casual, business).
ocazie(formal, formal).
ocazie(elegant, elegant).

%% temperatura(Sezon, MinT, MaxT)
%% am pus si "toate" ca sa se potriveasca la haine universale
temperatura(iarna, -20, 10).
temperatura(primavara, 10, 20).
temperatura(toamna, 10, 20).
temperatura(vara, 20, 40).
temperatura(toate, -50, 50).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 2. Predicate utilitare
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% verificare temperatură
potrivita_temperatura(H, T) :-
    haina(H, _, Sezon),
    temperatura(Sezon, Min, Max),
    T >= Min, T =< Max.

%% verificare ocazie
potrivita_eveniment(H, Ev) :-
    stil(H, S),
    ocazie(S, Ev).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 3. Reguli de asortare (varianta simplă)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% alb și negru merg aproape cu orice
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

%% folosesc o structură tinuta(Top,Bottom,Incaltaminte,Outerwear)
%% ca sa fie clara la afisare

recomanda_tinuta(Temp, Ev, Preferinta, Tinuta) :-

    %% top
    haina(Top, top, _),
    potrivita_temperatura(Top, Temp),
    potrivita_eveniment(Top, Ev),

    %% bottom
    haina(Bottom, bottom, _),
    potrivita_temperatura(Bottom, Temp),
    potrivita_eveniment(Bottom, Ev),

    asortare(Top, Bottom),

    %% incaltaminte
    haina(Inc, incaltaminte, _),
    potrivita_temperatura(Inc, Temp),
    potrivita_eveniment(Inc, Ev),

    %% outerwear optional
    (   haina(Out, outerwear, _),
        potrivita_temperatura(Out, Temp)
    ;   Out = nimic ),

    %% preferinta de culoare
    ( Preferinta = orice
    ; culoare(Top, Preferinta)
    ; culoare(Bottom, Preferinta)
    ; culoare(Inc, Preferinta)
    ; (Out \= nimic, culoare(Out, Preferinta))
    ),

    Tinuta = tinuta(Top, Bottom, Inc, Out).
