[out:json][timeout:300];
(
//Kanton Aargau
area["ISO3166-2"="CH-AG"];
)->.searchArea;
// gather results
(
nwr["emergency"="defibrillator"](area.searchArea);
);
// print results
out body;
>;
out skel qt;