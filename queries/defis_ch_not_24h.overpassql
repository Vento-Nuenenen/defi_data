[out:json][timeout:300];
(
//ganze Schweiz
area["ISO3166-1"="CH"];
)->.searchArea;
// gather results
(
nwr["emergency"="defibrillator"]["opening_hours"!="24/7"](area.searchArea);
);
// print results
out body;
>;
out skel qt;