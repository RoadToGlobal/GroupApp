[modeline]: # ( vim: set spell spl=sv tw=79: )

# 4 Extern kod
Detta projekt använder väldigt många externa biblotek och tekniker, så det blir
svårt att på djupet gå in på detalj för varenda biblotek. Men här följer en
beskrivning och motivation för dem större beroenderna vi har valt.

## Backend tekniker
* [MongoDB](https://www.mongodb.com/)/[mongoose](http://mongoosejs.com/) - MongoDB är ett relativt nytt dbms som är en del av no-sql
  trenden. Anledningen till att vi valde denna databas är helt enkelt att
  dokumenten (rows:en) man får ut från den är väldigt lika strukturen för ett
  JavaScript objekt, och mongoose som är ett ramverk för att integrera mellan node
  och MongoDB gör det väldigt enkelt att skriva objektorienterad kod där varje
  objekt relaterar till ett MongoDB-dokument. Det har väsentligt underlättat grupperings
  algorimerna som "GroupMaker" genomför. Det är dock lite bökigt att
  administrera en node/mongo installation, inte lika enkelt som i php/sql att
  bara droppa adminer in i projektet nånstanns.
* [node](https://nodejs.org/en/)/[express](http://expressjs.com/) - Anledningen till varför vi valt node/express som vår webserver
  och bas för repos är att dem fungerar väldigt bra tillsammans med react och
  SPA lösningar. Sammt för att vi ville hålla allt i ett programmeringsspråk.
  Den stora nackdelen med node är ( enligt mig ) att om ett anrop kastar ett fel så
  stängs hela servern ner, till skillnad från php som fortsätter att ta hand om
  anrop efter en krash.
* [socket.io](http://socket.io/) - Förmodligen den enklaste och vanligaste websockets lösningen som
  finns, denns stora fördel är att den kommer med en bra klient-del och är
  väldigt bra anpassad för gruppchat då funktionalitet så som grupprum redan kommer inbyggt.
  Det kan dock kännas lite körigt att blanda vanligt rest-api med websockets,
  det skulle vara intressant att undersöka hur det skulle funka att köra allt i socket.io.

## Frontend tekniker
* [react](https://facebook.github.io/react/) - Är en teknik för att skapa en dynamisk html struktur genom
  JavaScript komponenter, så det är en väldigt smidig teknik för att skapa
  SPA-sidor, Den är också bra på att skapa advanserade input fält och formulär,
  samt för implementera dynamiskt styling. iom att react använder sig av ett
  alternativt syntax för JavaScript (jsx) som blandar in xml i js, så kan det
  bli lite svår använt på många texthanterare.
* [redux](http://redux.js.org/) - Är en smidig implementation av flux, vilket är en teknik för att
  hantera data i en komponent baserad SPA, Så redux tar Generellt hand om
  hanteringen av API anrop och dylikt. Det finns också ett par paket som
  integrerar redux med socket.io. Redux är en väldigt smart och svårförstådd
  teknik, men när man använder den rätt så löser den väldigt många problem med
  dataflödet i SPA sidor.

## Dev ops
* [Docker](https://www.docker.com/)/[Docker-compose](https://docs.docker.com/compose/) - Är en väldigt spännande ny teknik för att hantera s.k
  "containers" på linux servrar. En container fungerar lite som en VM, fast
  utan prestanda kraven som kommer med behöva virtualisera en ny dator för
  varje vm.  
  Detta gör att man kan sätta upp en ganska avancerad server miljö
  på en enda dator. Och skapa en utvecklings miljö som exakt speglar
  produktions miljön.  
  Vi stötte dock på lite problem med att köra docker på
  datorer som inte körde linux som OS. Och att specifiera hur nätverks trafik
  skulle routas och lastbalanseras till dem olika containersna var inte alltid
  självklart.
