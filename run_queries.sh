#!/bin/bash

set -e
set -o pipefail

function cleanup {
  exit $?
}
trap "cleanup" EXIT

DIR="$(cd "$(dirname "$0")" && pwd)"

# Schweiz

# Defibrillatoren ganze Schweiz
echo -ne "Query Defibrillatoren ganze Schweiz...           "
cat $DIR/queries/defis_switzerland.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_switzerland.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren ganze Schweiz 24h
echo -ne "Query Defibrillatoren ganze Schweiz 24h...           "
cat $DIR/queries/defis_ch_24h.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_ch_24h.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren ganze Schweiz NICHT 24h
echo -ne "Query Defibrillatoren ganze Schweiz, nicht 24h...           "
cat $DIR/queries/defis_ch_not_24h.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_ch_not_24h.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Notrufzentralen

# Defibrillatoren Dispogebiet SRZ
echo -ne "Query Defibrillatoren Dispogebiet SRZ...         "
cat $DIR/queries/defis_dispo_srz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren KNZ St.Gallen
echo -ne "Query Defibrillatoren KNZ St. Gallen...           "
cat $DIR/queries/defis_dispo_knzsg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_dispo_knzsg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Kantone

# Defibrillatoren Kanton Aargau
echo -ne "Query Defibrillatoren Aargau...           "
cat $DIR/queries/defis_kt_ag.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_ag.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Appenzell Innerhoden
echo -ne "Query Defibrillatoren Appenzell Innerhoden...           "
cat $DIR/queries/defis_kt_ai.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_ai.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Appenzell Ausserhoden
echo -ne "Query Defibrillatoren Appenzell Ausserhoden...           "
cat $DIR/queries/defis_kt_ar.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_ar.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Bern
echo -ne "Query Defibrillatoren Bern...           "
cat $DIR/queries/defis_kt_be.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_be.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Basel Land
echo -ne "Query Defibrillatoren Basel Land...           "
cat $DIR/queries/defis_kt_bl.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_bl.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Basel Stadt
echo -ne "Query Defibrillatoren Basel Stadt...           "
cat $DIR/queries/defis_kt_bs.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_bs.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Fribourg
echo -ne "Query Defibrillatoren Fribourg...           "
cat $DIR/queries/defis_kt_fr.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_fr.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Genf
echo -ne "Query Defibrillatoren Genf...           "
cat $DIR/queries/defis_kt_ge.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_ge.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Glarus
echo -ne "Query Defibrillatoren Glarus...           "
cat $DIR/queries/defis_kt_gl.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_gl.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Graubünden
echo -ne "Query Defibrillatoren Graubünden...           "
cat $DIR/queries/defis_kt_gr.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_gr.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Jura
echo -ne "Query Defibrillatoren Jura...           "
cat $DIR/queries/defis_kt_ju.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_ju.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Luzern
echo -ne "Query Defibrillatoren Luzern...           "
cat $DIR/queries/defis_kt_lu.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_lu.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Neuenburg
echo -ne "Query Defibrillatoren Neuenburg...           "
cat $DIR/queries/defis_kt_ne.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_ne.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Nidwalden
echo -ne "Query Defibrillatoren Nidwalden...           "
cat $DIR/queries/defis_kt_nw.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_nw.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Obdwalden
echo -ne "Query Defibrillatoren Obwalden...           "
cat $DIR/queries/defis_kt_ow.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_ow.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton St. Gallen
echo -ne "Query Defibrillatoren Kanton St.Gallen...           "
cat $DIR/queries/defis_kt_sg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_sg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Schaffhausen
echo -ne "Query Defibrillatoren Schaffhausen...           "
cat $DIR/queries/defis_kt_sh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Solothurn
echo -ne "Query Defibrillatoren Solothurn...           "
cat $DIR/queries/defis_kt_so.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_so.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Schwyz
echo -ne "Query Defibrillatoren Schwyz...           "
cat $DIR/queries/defis_kt_sz.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Thurgau
echo -ne "Query Defibrillatoren Appenzell Thurgau...           "
cat $DIR/queries/defis_kt_tg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_tg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Tessin
echo -ne "Query Defibrillatoren Tessin...           "
cat $DIR/queries/defis_kt_ti.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_ti.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Uri
echo -ne "Query Defibrillatoren Uri...           "
cat $DIR/queries/defis_kt_ur.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_ur.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Waadt
echo -ne "Query Defibrillatoren Waadt...           "
cat $DIR/queries/defis_kt_vd.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_vd.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Wallis
echo -ne "Query Defibrillatoren Wallis...           "
cat $DIR/queries/defis_kt_vs.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_vs.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Zug
echo -ne "Query Defibrillatoren Zug...           "
cat $DIR/queries/defis_kt_zg.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Zürich
echo -ne "Query Defibrillatoren Kanton Zürich...           "
cat $DIR/queries/defis_kt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Städte

# Defibrillatoren Stadt Zürich
echo -ne "Query Defibrillatoren Stadt Zürich...            "
cat $DIR/queries/defis_stadt_zh.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_stadt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Liechtenstein

# Defibrillatoren ganz Liechtenstein
echo -ne "Query Defibrillatoren ganz Liechtenstein...           "
cat $DIR/queries/defis_liechtenstein.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_liechtenstein.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren ganz Liechtenstein 24h
echo -ne "Query Defibrillatoren ganze Schweiz 24h...           "
cat $DIR/queries/defis_li_24h.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_li_24h.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren ganz Liechtenstein NICHT 24h
echo -ne "Query Defibrillatoren ganze Schweiz, nicht 24h...           "
cat $DIR/queries/defis_li_not_24h.overpassql | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/json/defis_li_not_24h.geojson
echo -ne "\t\t - Done.\r"
echo ""