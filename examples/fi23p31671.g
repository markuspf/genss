LoadPackage("genss");
Print("Fi23 on 31671 points:\n\n");
gens := AtlasGenerators("Fi23",1).generators;
g := Group(gens);
ti := Runtime();
S := StabilizerChain(g);
ti2 := Runtime();
if Size(S) <> Size(CharacterTable("Fi23")) then Error("wrong size"); fi;
SetSize(g,Size(CharacterTable("Fi23")));
ti3 := Runtime();
Print("\n");
S := StabilizerChain(g); time;
ti4 := Runtime();
Print("\nStabChain:\n");
ViewObj(S);
Print("\n\nTime with random verification: ",ti2-ti,"\n");
Print("Time with known size: ",ti4-ti3,"\n");
