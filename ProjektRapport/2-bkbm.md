# 2. Beroenden, krav, begränsningar och målplattformar
Då vi använt oss av en rad "morderna" tekniker så krävs det en del parametrar för att appen ska fungera. Både ur ett utvecklings- och användarperspektiv. 

## Docker & Docker Compose
Installation av Docker och Docker Compose är ett krav (utvecklingsmässigt) då hela utvecklingsmiljön bygger på detta. Efter installation av Docker finns instruktioner från [GroupApp](https://github.com/RoadToGlobal/GroupApp) "repository:t" hur man sätter upp projektet.	Tanken är att man ska vara oberoende av andra delar då Docker sköter pakethantering och uppsättningen av projektet.
Värt att notera är att Windows stöd för Docker varierar från dom andra "OS/erna" och kan upplevas litet mer komplext att sätta upp. 

## Browser Compatibility
Då vi använder oss utav tekniker som **flexbox** och **React** så blir webbläsarstödet därefter. Den mest instabila upplevelsen av applikationen sker på IE. Tanken är att vi ska optimera stödet för IE och har det som en "milstolpe" som kommer releasas i en senare version. Utvärderingen grundas på tester och information på [flexbox](http://caniuse.com/#search=flexbox) och [React](http://caniuse.com/#search=react) från **caniuse.com**.

## Målplattform
I vår första release är applikationen optimerad för desktop. Det här var ett diskussionsämne som uppstod relativt tidigt i projektet där valet av att utforska nya tekniker sattes som prioritering. Vi har utgått från "Desktop-first" och har som milstolpe att hitta ett bättre sätt att optimera "responsiviteten" av vår webbapp då vi använder oss av JS-styling med CSS objekt ("inline-style").

## Packages
* [ClientDistro](https://github.com/RoadToGlobal/ClientDistro/blob/2bee2226b6d471d84cf2ac50a754cf6058c9fb76/package.json)
* [GroupChatStream](https://github.com/RoadToGlobal/GroupChatStream/blob/c9b64297082d915728fb8cc0d6e6a45cb86683b4/package.json)
* API (BitBucket)
* GroupMaker (BitBucket)

## Övrigt
Vi använder oss just nu av CDN för normalize.css och olika typer av fonter, vilket då kan anses som ett beroende.