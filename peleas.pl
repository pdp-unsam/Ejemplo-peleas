entrena(Maestro,Aprendiz):-
    esHeroe(Maestro),
    esJoven(Aprendiz),
    viveEnElMismoUniverso(Maestro,Aprendiz).

pelea(Heroe,Villano):-
    esHeroe(Heroe),
    villano(Villano),
    viveEnElMismoUniverso(Heroe,Villano).

viveEnElMismoUniverso(Persona1,Persona2):-
    vive(Persona1,Universo),
    vive(Persona2,Universo).

villano(thanos).
villano(hela).

%entrena(lucas,peterParker).

vive(anakin,starwars).
vive(ironMan,marvel).
vive(frodo,anillos).
vive(peterParker,marvel).
vive(deadPool,marvel).
vive(capitan,marvel).
vive(romero,realidad).
vive(juanita,realidad).
vive(jackSparrow,piratas).
%vive(romero,marvel).

%% esJoven(Persona):- edad(Persona,Edad),between(8,18,Edad).
esJoven(Persona):- edad(Persona,Edad), Edad =< 18 .
esJoven(deadPool).

edad(anakin,10).
edad(frodo,11).
edad(frankestain,189).
edad(peterParker,17).

esHeroe(romero).
esHeroe(Alguien):-haceElBien(Alguien).
esHeroe(Alguien):-tienePoderes(Alguien),usa(Alguien,capa).
usa(alberto, lapicera).
usa(alberto, auto).
usa(ironMan, capa).

tieneEscuela(Maestro):-
    entrena(Maestro,Aprendiz1),
    entrena(Maestro,Aprendiz2),
    Aprendiz1 \= Aprendiz2.

tienePoderes(ironMan).
tienePoderes(alberto).
haceElBien(juanita).
haceElBien(capitan).