[modeline]: # ( vim: set spell spl=sv tw=79: )

# 3 Kodstruktur
I tidigare liknande node-react projekt har vi valt att arbeta i en helt annan
struktur än denna. Då hade vi allt i ett enda node-projekt och github-repo.
Men iom erfarenhet med låg läsbarhet och dålig skalbarhet på dem
projekten samt önskemålet att hålla allt i en docker-compose miljö så har vi
valt att dela upp projektet i flera mindre delar. Så projektet består då utav
fyra mindre projekt/repon:

* API - Ett Rest-baserat renodlat node/express API som agerar som en brygga
  mellan client och databas.
* ClientDistro - En node-webpack baserad server som inte gör något annat än att
  kompilera och distrubera klient koden, i undermappen "app" ligger all
  react-frontend kod
* GroupMaker - En dedikerad node server vars uppgift är att kontinuerligt
  analysera användar-grupper i databasen och para ihop dem med de grupper som
  uppfyller varandras krav bäst.
* GroupChatStream - Också en node server, men vars huvud uppgift är att hantera
  chat över websockets. Så den skapar och hanterar grupprum, client
  uppkopplingar, samt skickar ut diverse notiser.

## Föräldrar repot
I intresse av att hålla en så god utvecklings miljö som möjligt har vi också
ett 5:e repo (GroupApp) som "importerar" dem andra reporna som git-submodules
samt huserar huvud docker-compose filerna. Detta tillåter oss att relativt
enkelt och upprepningsbart sätta upp hela servermiljön på nya datorer genom
att bara köra 2 git-kommandon och köra ett script (dev.sh) som sätter upp och
startar hela miljön lokalt. Den huserar också en mongoDB dump som kan vara bra
att använda under utveckling.

## Gemensam struktur
Generellt så är alla node reporna strukturerade på liknande sätt. I root mappen
så ligger ingen ren kod, utan mest rena konfigurations filer för att sätta upp
projektet och annan meta-kod. I "app/" så ligger all ren kod. All kod är
skirven i JavaScript es6, och lintad med liknande eslint filer. Så den bör
hålla ganska så kontinuerlig stil.
