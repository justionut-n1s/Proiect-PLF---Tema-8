%% Tema 8 - Recomandare tinute vestimentare
%% NISCOV IOAN, MANOLE IOANA, PAGU ADRIAN

:- writeln('----------------------------------------------------------').
:- writeln(' Sistem Expert Recomandare Ținute Vestimentare').
:- writeln(' Folosește: start. pentru dialog sau recomanda_tinuta.').
:- writeln('----------------------------------------------------------').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 1. Baza de cunoștințe
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
haina(tricou_galben, top, vara).
haina(tricou_bleu_deschis, top, vara).
haina(tricou_portocaliu, top, vara).
haina(camasa_verde_mint, top, primavara).
haina(camasa_visinie, top, toamna).
haina(camasa_gri_deschis, top, toate).
haina(bluza_roz_pastel, top, primavara).
haina(bluza_maro, top, toamna).
haina(pulover_bej, top, iarna).
haina(pulover_maro_inchis, top, iarna).
haina(hanorac_albastru, top, toate).
haina(hanorac_negru, top, toate).
haina(top_crop_alb, top, vara).
haina(top_satin_rosu, top, vara).

haina(geaca_puf, outerwear, iarna).
haina(geaca_piele, outerwear, toamna).
haina(geaca_subtire, outerwear, primavara).
haina(geaca_rosie, outerwear, iarna).
haina(jacheta_bleu, outerwear, primavara).
haina(vesta_sport, outerwear, toate).
haina(impermeabil_negru, outerwear, toate).
haina(geaca_fas_albastra, outerwear, iarna).
haina(geaca_fas_neagra, outerwear, iarna).
haina(geaca_denim, outerwear, primavara).
haina(geaca_camel, outerwear, toamna).
haina(geaca_sport_rosie, outerwear, toate).
haina(palton_negru, outerwear, iarna).
haina(palton_bej, outerwear, iarna).
haina(cardigan_gri, outerwear, toate).
haina(cardigan_maro, outerwear, toamna).
haina(jacheta_verde_army, outerwear, toamna).
haina(poncho_gri, outerwear, toamna).

haina(blugi, bottom, toate).
haina(blugi_negri, bottom, toate).
haina(pantaloni_eleganti, bottom, toate).
haina(pantaloni_gri, bottom, toamna).
haina(fusta_neagra, bottom, vara).
haina(fusta_rosie, bottom, vara).
haina(pantaloni_scurti, bottom, vara).
haina(colanti_negri, bottom, toate).
haina(blugi_albastru_deschis, bottom, toate).
haina(blugi_drepti, bottom, toate).
haina(pantaloni_bej, bottom, toate).
haina(pantaloni_maro_deschis, bottom, toamna).
haina(pantaloni_crem, bottom, primavara).
haina(pantaloni_piele_negru, bottom, toamna).
haina(fusta_midi_bej, bottom, vara).
haina(fusta_midi_albastra, bottom, primavara).
haina(fusta_plisata_gri, bottom, toate).
haina(pantaloni_sport_gri, bottom, toate).
haina(pantaloni_sport_negru, bottom, toate).
haina(colanti_gri, bottom, toate).

haina(rochie_rosie, onepiece, vara).
haina(rochie_neagra, onepiece, toate).
haina(rochie_verde, onepiece, primavara).
haina(rochie_albastru_navy, onepiece, toate).
haina(rochie_midi_roz, onepiece, vara).
haina(rochie_florala, onepiece, primavara).
haina(salopeta_neagra, onepiece, toate).
haina(salopeta_jeans, onepiece, vara).

haina(tenisi_albi, incaltaminte, toate).
haina(tenisi_negri, incaltaminte, toate).
haina(pantofi_eleganti, incaltaminte, toate).
haina(ghete, incaltaminte, iarna).
haina(sandale, incaltaminte, vara).
haina(bocanci, incaltaminte, iarna).
haina(adidasi, incaltaminte, toate).
haina(tenisi_gri, incaltaminte, toate).
haina(adidasi_negri, incaltaminte, toate).
haina(adidasi_rosii, incaltaminte, toate).
haina(cizme_lungi_negre, incaltaminte, iarna).
haina(cizme_maro, incaltaminte, toamna).
haina(mocasini_maro, incaltaminte, toamna).
haina(loaferi_negri, incaltaminte, toate).
haina(papuci_sport, incaltaminte, vara).
haina(sandale_negre, incaltaminte, vara).

haina(ceas_metalic, accesoriu, toate).
haina(ceas_negru, accesoriu, toate).
haina(ochelari_soare, accesoriu, vara).
haina(esarfa_subtire, accesoriu, primavara).
haina(curea_neagra, accesoriu, toate).
haina(rucsac_sport, accesoriu, toate).
haina(ceas_auriu, accesoriu, toate).
haina(curea_maro, accesoriu, toate).
haina(curea_alba, accesoriu, toate).
haina(ochelari_rotunzi, accesoriu, vara).
haina(ochelari_negri_mari, accesoriu, vara).
haina(escarfa_rosie, accesoriu, toamna).
haina(escarfa_gri, accesoriu, iarna).
haina(rucsac_negru_piele, accesoriu, toate).
haina(geanta_maro, accesoriu, toate).

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

stil(tricou_galben, streetwear).
stil(tricou_bleu_deschis, minimalist).
stil(tricou_portocaliu, casual).
stil(camasa_verde_mint, casual).
stil(camasa_visinie, elegant).
stil(camasa_gri_deschis, smart_casual).
stil(bluza_roz_pastel, boho).
stil(bluza_maro, casual).
stil(pulover_bej, minimalist).
stil(pulover_maro_inchis, elegant).
stil(hanorac_albastru, sport).
stil(hanorac_negru, sport).
stil(top_crop_alb, casual).
stil(top_satin_rosu, elegant).

stil(geaca_fas_albastra, sport).
stil(geaca_fas_neagra, sport).
stil(geaca_denim, streetwear).
stil(geaca_camel, smart_casual).
stil(geaca_sport_rosie, sport).
stil(palton_negru, elegant).
stil(palton_bej, elegant).
stil(cardigan_gri, casual).
stil(cardigan_maro, casual).
stil(jacheta_verde_army, military).
stil(poncho_gri, boho).

stil(blugi_albastru_deschis, casual).
stil(blugi_drepti, casual).
stil(pantaloni_bej, smart_casual).
stil(pantaloni_maro_deschis, smart_casual).
stil(pantaloni_crem, elegant).
stil(pantaloni_piele_negru, edgy).
stil(fusta_midi_bej, elegant).
stil(fusta_midi_albastra, casual).
stil(fusta_plisata_gri, elegant).
stil(pantaloni_sport_gri, sport).
stil(pantaloni_sport_negru, sport).
stil(colanti_gri, sport).

stil(rochie_albastru_navy, elegant).
stil(rochie_midi_roz, elegant).
stil(rochie_florala, boho).
stil(salopeta_neagra, smart_casual).
stil(salopeta_jeans, casual).

stil(tenisi_gri, casual).
stil(adidasi_negri, sport).
stil(adidasi_rosii, sport).
stil(cizme_lungi_negre, elegant).
stil(cizme_maro, casual).
stil(mocasini_maro, smart_casual).
stil(loaferi_negri, smart_casual).
stil(papuci_sport, sport).
stil(sandale_negre, casual).

stil(ceas_auriu, elegant).
stil(curea_maro, casual).
stil(curea_alba, elegant).
stil(ochelari_rotunzi, retro).
stil(ochelari_negri_mari, classy).
stil(escarfa_rosie, elegant).
stil(escarfa_gri, casual).
stil(rucsac_negru_piele, edgy).
stil(geanta_maro, classy).

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

culoare(tricou_galben, galben).
culoare(tricou_bleu_deschis, bleu).
culoare(tricou_portocaliu, portocaliu).
culoare(camasa_verde_mint, verde_mint).
culoare(camasa_visinie, visiniu).
culoare(camasa_gri_deschis, gri).
culoare(bluza_roz_pastel, roz).
culoare(bluza_maro, maro).
culoare(pulover_bej, bej).
culoare(pulover_maro_inchis, maro_inchis).
culoare(hanorac_albastru, albastru).
culoare(hanorac_negru, negru).
culoare(top_crop_alb, alb).
culoare(top_satin_rosu, rosu).

culoare(geaca_fas_albastra, albastru).
culoare(geaca_fas_neagra, negru).
culoare(geaca_denim, albastru).
culoare(geaca_camel, maro).
culoare(palton_negru, negru).
culoare(palton_bej, bej).
culoare(cardigan_gri, gri).
culoare(cardigan_maro, maro).
culoare(jacheta_verde_army, verde_oliv).
culoare(poncho_gri, gri).

culoare(blugi_albastru_deschis, albastru_deschis).
culoare(blugi_drepti, albastru).
culoare(pantaloni_bej, bej).
culoare(pantaloni_maro_deschis, maro_deschis).
culoare(pantaloni_crem, crem).
culoare(pantaloni_piele_negru, negru).
culoare(fusta_midi_bej, bej).
culoare(fusta_midi_albastra, albastru).
culoare(fusta_plisata_gri, gri).

culoare(pantaloni_sport_gri, gri).
culoare(pantaloni_sport_negru, negru).
culoare(colanti_gri, gri).

culoare(rochie_albastru_navy, albastru_navy).
culoare(rochie_midi_roz, roz).
culoare(rochie_florala, multicolor).

culoare(salopeta_neagra, negru).
culoare(salopeta_jeans, albastru).

culoare(tenisi_gri, gri).
culoare(adidasi_negri, negru).
culoare(adidasi_rosii, rosu).
culoare(cizme_lungi_negre, negru).
culoare(cizme_maro, maro).
culoare(mocasini_maro, maro).
culoare(loaferi_negri, negru).
culoare(papuci_sport, alb).
culoare(sandale_negre, negru).

culoare(ceas_auriu, auriu).
culoare(curea_maro, maro).
culoare(curea_alba, alb).
culoare(ochelari_rotunzi, negru).
culoare(ochelari_negri_mari, negru).
culoare(escarfa_rosie, rosu).
culoare(escarfa_gri, gri).
culoare(rucsac_negru_piele, negru).
culoare(geanta_maro, maro).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Culori complementare
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

complementar(rosu, verde).
complementar(albastru, portocaliu).
complementar(galben, mov).

complementar(alb, orice).
complementar(negru, orice).

complementar(verde_mint, roz).
complementar(visiniu, crem).
complementar(maro, crem).
complementar(roz, gri).
complementar(bej, maro_inchis).
complementar(verde_oliv, portocaliu).
complementar(albastru_navy, alb).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Temperatură + Precipitații
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temperatura(iarna, -20, 10).
temperatura(primavara, 10, 20).
temperatura(toamna, 10, 20).
temperatura(vara, 20, 45).
temperatura(toate, -50, 50).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Predicate utilitare
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

potrivita_temperatura(H, T) :-
    haina(H, _, Sezon),
    temperatura(Sezon, Min, Max),
    T >= Min, T =< Max.

potrivita_precipitatii(H, ploaie) :-
    \+ (haina(H, incaltaminte, _), H = sandale), !.
potrivita_precipitatii(_, soare).
potrivita_precipitatii(_, inorat).
potrivita_precipitatii(H, ninsoare) :-
    \+ (haina(H, incaltaminte, _), H = sandale).

compatibil_stil(S, S).

stile_ok(H1, H2) :-
    stil(H1, S1),
    stil(H2, S2),
    compatibil_stil(S1, S2).

asortare(H1, H2) :-
    culoare(H1, C1),
    culoare(H2, C2),
    (C1 = C2 ; C1 = alb ; C2 = alb ; C1 = negru ; C2 = negru).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Conditii
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Alege Outerwear


alege_outerwear(T, Prec, nimic) :-
    T >= 23,
    Prec \= ploaie,
    Prec \= ninsoare, !.

alege_outerwear(T, Prec, Out) :-
    haina(Out, outerwear, _),
    potrivita_temperatura(Out, T),
    potrivita_precipitatii(Out, Prec).


%% Alege Accesoriu


alege_accesoriu(_, sport, nimic) :- !.

alege_accesoriu(T, casual, nimic) :- T >= 28, !.
alege_accesoriu(_, casual, Acc) :-
    haina(Acc, accesoriu, _),
    stil(Acc, casual).

alege_accesoriu(_, elegant, Acc) :-
    haina(Acc, accesoriu, _),
    stil(Acc, elegant).

alege_accesoriu(_, business, Acc) :-
    haina(Acc, accesoriu, _),
    stil(Acc, elegant).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Recomandare finală
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

recomanda_tinuta(T, Ev, Prec, PreferC, PreferStil,
                 tinuta(Top, Bottom, Inc, Out, Acc)) :-

    haina(Top, top, _),
    potrivita_temperatura(Top, T),
    stil(Top, ST1),
    (PreferStil = orice ; ST1 = PreferStil),

    haina(Bottom, bottom, _),
    potrivita_temperatura(Bottom, T),
    stile_ok(Top, Bottom),
    asortare(Top, Bottom),

    haina(Inc, incaltaminte, _),
    potrivita_temperatura(Inc, T),
    stile_ok(Top, Inc),

    alege_outerwear(T, Prec, Out),

    alege_accesoriu(T, Ev, Acc),
    (Acc = nimic ; stile_ok(Top, Acc)),

    (
        PreferC = orice ;
        culoare(Top, PreferC) ;
        culoare(Bottom, PreferC) ;
        culoare(Inc, PreferC) ;
        (Out \= nimic, culoare(Out, PreferC)) ;
        (Acc \= nimic, culoare(Acc, PreferC))
    ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Sistem Expert Interactiv
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

start :-
    writeln('Temperatura (număr):'), read(T),
    writeln('Eveniment (casual, business, elegant, sport):'), read(Ev),
    writeln('Precipitații (soare, ploaie, ninsoare, inorat):'), read(Prec),
    writeln('Preferință culoare (sau orice):'), read(PC),
    writeln('Preferință stil (sau orice):'), read(PS),

    (   recomanda_tinuta(T, Ev, Prec, PC, PS, Tinuta),
        writeln('------------------------------------------------'),
        writeln('Ținută recomandată:'),
        writeln(Tinuta),
        writeln('------------------------------------------------')
    ;   writeln('Nu există combinație potrivită.')
    ).
