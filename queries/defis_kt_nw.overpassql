[out:json][timeout:300];
(
//Kanton Nidwalden
area["ISO3166-2"="CH-NW"];
)->.searchArea;
// gather results
(
nwr["emergency"="defibrillator"](area.searchArea);
);
// print results
out body;
>;
out skel qt;