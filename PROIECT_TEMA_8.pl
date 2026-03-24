%% Tema 8 - Recomandare tinute vestimentare
%% NISCOV IOAN . MANOLE IOANA , PAGU ADRIAN

:- writeln('----------------------------------------------------------').
:- writeln(' Sistem Expert Recomandare Ținute Vestimentare').
:- writeln(' Folosește: start. pentru dialog sau recomanda_tinuta/6.').
:- writeln('----------------------------------------------------------').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 1. Baza de cunoștințe
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% haina(Nume, Categorie, Sezon)

% TOP
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
haina(hanorac_gri, top, toate).
haina(maiou_alb, top, vara).

% OUTERWEAR
haina(geaca_puf, outerwear, iarna).
haina(geaca_piele, outerwear, toamna).
haina(geaca_subtire, outerwear, primavara).
haina(geaca_rosie, outerwear, iarna).
haina(jacheta_bleu, outerwear, primavara).
haina(vesta_sport, outerwear, toate).
haina(impermeabil_negru, outerwear, toate).

% BOTTOM
haina(blugi, bottom, toate).
haina(blugi_negri, bottom, toate).
haina(pantaloni_eleganti, bottom, toate).
haina(pantaloni_gri, bottom, toamna).
haina(fusta_neagra, bottom, vara).
haina(fusta_rosie, bottom, vara).
haina(pantaloni_scurti, bottom, vara).
haina(colanti_negri, bottom, toate).

% ONE PIECE
haina(rochie_rosie, onepiece, vara).
haina(rochie_neagra, onepiece, toate).
haina(rochie_verde, onepiece, primavara).

% SHOES
haina(tenisi_albi, incaltaminte, toate).
haina(tenisi_negri, incaltaminte, toate).
haina(pantofi_eleganti, incaltaminte, toate).
haina(ghete, incaltaminte, iarna).
haina(sandale, incaltaminte, vara).
haina(bocanci, incaltaminte, iarna).
haina(adidasi, incaltaminte, toate).

% ACCESORII
haina(ceas_metalic, accesoriu, toate).
haina(ceas_negru, accesoriu, toate).
haina(ochelari_soare, accesoriu, vara).
haina(esarfa_subtire, accesoriu, primavara).
haina(curea_neagra, accesoriu, toate).
haina(rucsac_sport, accesoriu, toate).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Stiluri
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
stil(hanorac_gri, sport).
stil(maiou_alb, sport).

stil(geaca_puf, casual).
stil(geaca_piele, smart_casual).
stil(geaca_subtire, casual).
stil(geaca_rosie, sport).
stil(jacheta_bleu, casual).
stil(vesta_sport, sport).
stil(impermeabil_negru, casual).

stil(blugi, casual).
stil(blugi_negri, casual).
stil(pantaloni_eleganti, formal).
stil(pantaloni_gri, smart_casual).
stil(fusta_neagra, elegant).
stil(fusta_rosie, elegant).
stil(pantaloni_scurti, casual).
stil(colanti_negri, sport).

stil(rochie_rosie, elegant).
stil(rochie_neagra, elegant).
stil(rochie_verde, casual).

stil(tenisi_albi, casual).
stil(tenisi_negri, casual).
stil(pantofi_eleganti, elegant).
stil(ghete, casual).
stil(sandale, casual).
stil(bocanci, sport).
stil(adidasi, sport).

stil(ceas_metalic, elegant).
stil(ceas_negru, casual).
stil(ochelari_soare, casual).
stil(esarfa_subtire, elegant).
stil(curea_neagra, elegant).
stil(rucsac_sport, sport).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Culori
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
culoare(maiou_alb, alb).
culoare(hanorac_gri, gri).

culoare(geaca_puf, gri).
culoare(geaca_piele, negru).
culoare(geaca_subtire, verde).
culoare(geaca_rosie, rosu).
culoare(jacheta_bleu, bleu).
culoare(vesta_sport, negru).
culoare(impermeabil_negru, negru).

culoare(blugi, albastru).
culoare(blugi_negri, negru).
culoare(pantaloni_eleganti, negru).
culoare(pantaloni_gri, gri).
culoare(fusta_neagra, negru).
culoare(fusta_rosie, rosu).
culoare(pantaloni_scurti, bej).
culoare(colanti_negri, negru).

culoare(rochie_rosie, rosu).
culoare(rochie_neagra, negru).
culoare(rochie_verde, verde).

culoare(tenisi_albi, alb).
culoare(tenisi_negri, negru).
culoare(pantofi_eleganti, negru).
culoare(ghete, maro).
culoare(sandale, maro).
culoare(bocanci, negru).
culoare(adidasi, alb).

culoare(ceas_metalic, gri).
culoare(ceas_negru, negru).
culoare(ochelari_soare, negru).
culoare(esarfa_subtire, alb).
culoare(curea_neagra, negru).
culoare(rucsac_sport, negru).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Culori complementare
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

complementar(rosu, verde).
complementar(albastru, portocaliu).
complementar(galben, mov).
complementar(alb, orice).
complementar(negru, orice).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Temperatură + Precipitații
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temperatura(iarna, -20, 10).
temperatura(primavara, 10, 20).
temperatura(toamna, 10, 20).
temperatura(vara, 20, 45).
temperatura(toate, -50, 50).

% precipitatiile pot fi: soare, ploaie, ninsoare, inorat

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Predicate utilitare
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

potrivita_temperatura(H, T) :-
    haina(H, _, Sezon),
    temperatura(Sezon, Min, Max),
    T >= Min, T =< Max.

potrivita_precipitatii(H, ploaie) :-
    \+ (haina(H, incaltaminte, _), H = sandale),
    \+ (haina(H, top, _), H = maiou_alb), !.
potrivita_precipitatii(_, soare).
potrivita_precipitatii(_, inorat).
potrivita_precipitatii(H, ninsoare) :-
    \+ (haina(H, incaltaminte, _), H = sandale).

ocazie(casual, casual).
ocazie(business, smart_casual).
ocazie(formal, formal).
ocazie(elegant, elegant).
ocazie(sport, sport).

potrivita_eveniment(H, Ev) :-
    stil(H, S),
    ocazie(Ev, S).

compatibil_stil(S, S).
compatibil_stil(casual, smart_casual).
compatibil_stil(smart_casual, elegant).
compatibil_stil(sport, casual).

stile_ok(H1, H2) :-
    stil(H1, S1),
    stil(H2, S2),
    compatibil_stil(S1, S2).

asortare(H1, H2) :-
    culoare(H1, C1),
    culoare(H2, C2),
    ( C1 = C2
    ; complementar(C1, C2)
    ; C1 = alb
    ; C1 = negru
    ; C2 = alb
    ; C2 = negru ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Recomandare finală
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

recomanda_tinuta(T, Ev, Prec, PreferC, PreferStil, tinuta(Top,Bottom,Inc,Out,Acc)) :-

    haina(Top, top, _),
    potrivita_temperatura(Top, T),
    potrivita_eveniment(Top, Ev),
    potrivita_precipitatii(Top, Prec),
    (PreferStil = orice ; stil(Top, PreferStil)),

    haina(Bottom, bottom, _),
    potrivita_temperatura(Bottom, T),
    potrivita_eveniment(Bottom, Ev),
    potrivita_precipitatii(Bottom, Prec),
    stile_ok(Top, Bottom),
    asortare(Top, Bottom),

    haina(Inc, incaltaminte, _),
    potrivita_temperatura(Inc, T),
    potrivita_eveniment(Inc, Ev),
    potrivita_precipitatii(Inc, Prec),
    stile_ok(Top, Inc),

    (haina(Out, outerwear, _), potrivita_temperatura(Out, T)
    ; Out = nimic),

    haina(Acc, accesoriu, _),
    stile_ok(Top, Acc),

    (PreferC = orice ;
     culoare(Top, PreferC) ;
     culoare(Bottom, PreferC) ;
     culoare(Inc, PreferC) ;
     (Out \= nimic, culoare(Out, PreferC)) ;
     culoare(Acc, PreferC)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Sistem Expert Interactiv
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

start :-
    writeln('Temperatura (număr):'), read(T),
    writeln('Eveniment (casual, business, formal, elegant, sport):'), read(Ev),
    writeln('Precipitatii (soare, ploaie, ninsoare, inorat):'), read(Prec),
    writeln('Preferinta culoare (sau orice):'), read(PC),
    writeln('Preferinta stil (sau orice):'), read(PS),

    (   recomanda_tinuta(T, Ev, Prec, PC, PS, Tinuta),
        writeln('------------------------------------------------'),
        writeln('Tinută recomandată:'),
        writeln(Tinuta),
        writeln('------------------------------------------------')
    ;   writeln('Nu există combinație potrivită.')
    ).