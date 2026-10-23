// GENERÁLT FÁJL – ne szerkeszd kézzel.
// Forrás: lib/features/stock_detail/metric_glossary.dart és az app hu/en ARB-je;
// újragenerálás: python3 tool/glossary/gen_server_glossary.py

/// A mutatók közérthető magyarázata (címke, magyarázat) nyelvenként, az app sorrendjében.
const glossaryEntries = <String, List<(String, String)>>{
  'hu': [
    ('Piaci kapitalizáció', 'Mennyit ér az egész cég a tőzsdén: árfolyam × részvények száma.'),
    (
      '50 napos átlag',
      'Az utolsó 50 kereskedési nap záróárainak átlaga. Ha az ár felette van, azt gyakran rövid távú erőként olvassák, ha alatta, gyengeségként.',
    ),
    (
      'Bekerülési osztalékhozam',
      'Az elmúlt 12 hónapban kapott osztalék osztva azzal, amennyit a még birtokolt részvényekért fizettél. Az osztalékhozammal ellentétben a saját vételi áradhoz méri, nem a mai árhoz.',
    ),
    (
      '200 napos átlag',
      'Az utolsó 200 kereskedési nap záróárainak átlaga – a klasszikus hosszú távú trendvonal. Sok befektető a felette járó árat hosszú távú emelkedő trendnek tekinti.',
    ),
    (
      'RSI (14 nap)',
      'Relatív erő index: a közelmúlt emelkedéseit veti össze az eséseivel egy 0–100-as skálán. 70 felett gyakran túlvettnek mondják (gyorsan emelkedett), 30 alatt túladottnak – de egy erős trendben sokáig ott maradhat.',
    ),
    (
      'Volatilitás (30 nap)',
      'Mennyit ingadozik az ár napról napra, egy évre vetítve: 20% azt jelenti, hogy egy tipikus év nagyjából ±20%-on belül mozog. A nagyobb volatilitás nagyobb kilengéseket jelent mindkét irányba.',
    ),
    (
      'Forgalomban lévő részvények',
      'Hány részvényt bocsátott ki a cég. Ha nő, egy részvényre kisebb szelet jut; a visszavásárlás csökkenti.',
    ),
    (
      'P/E (visszatekintő)',
      'Árfolyam ÷ az elmúlt 12 hónap egy részvényre jutó nyeresége: hány évnyi mostani profitot fizetsz ki. Az alacsonyabb olcsóbb, de a gyorsan növekvő cégeké általában magas.',
    ),
    (
      'P/E (előretekintő)',
      'Mint a P/E, de az elemzők által a következő 12 hónapra várt profittal. Ha kisebb a múltbelinél, a profit növekedését várják.',
    ),
    (
      'P/B',
      'Árfolyam ÷ egy részvényre jutó könyv szerinti érték (eszközök mínusz tartozások). 1 körül a piac annyit ad a cégért, amennyi papíron a vagyona.',
    ),
    (
      'P/S',
      'Piaci érték ÷ éves árbevétel. Hasznos, ha a cégnek még alig van profitja; ugyanazon az iparágon belül érdemes összevetni.',
    ),
    (
      'EV / szabad cash flow',
      'A cég értéke az adóssággal együtt (EV) ÷ a beruházások után egy év alatt megtermelt készpénz. Az alacsonyabb azt jelenti, hogy több pénzt kapsz az árért.',
    ),
    ('PEG', 'P/E ÷ várt éves profitnövekedés (%). 1 körül sokan méltányosnak tartják; a P/E-t a növekedéshez méri.'),
    (
      'EPS (TTM)',
      'Egy részvényre jutó nyereség az elmúlt 12 hónapban. Ha évről évre nő, az az egészséges cég egyik legerősebb jele.',
    ),
    (
      'Béta',
      'Mennyire mozog együtt a piaccal: 1 = mint a piac, 1,5 = nagyjából másfélszer akkora kilengések, 1 alatt = nyugodtabb.',
    ),
    ('Árbevétel (TTM)', 'Az elmúlt 12 hónap teljes árbevétele, minden költség előtt.'),
    ('Nettó eredmény (TTM)', 'Az elmúlt 12 hónapban minden költség, kamat és adó után megmaradt nyereség.'),
    (
      'Bruttó árrés',
      'Az árbevétel mekkora része marad meg a termékek közvetlen költsége után. A magas érték gyakran árazási erőt jelez.',
    ),
    (
      'Működési árrés',
      'Az árbevétel mekkora része marad meg a működés (bérek, bérleti díj, marketing) után, kamat és adó előtt.',
    ),
    (
      'Nettó árrés',
      'Az árbevétel mekkora része lesz végső nyereség. 20% azt jelenti, hogy minden 100 egység bevételből 20 a profit.',
    ),
    (
      'Sajáttőke-arányos megtérülés',
      'Sajáttőke-arányos megtérülés: éves nyereség ÷ a tulajdonosok tőkéje. Megmutatja, mennyire jól forgatja a vezetés a részvényesek pénzét; kb. 15% fölött erős.',
    ),
    (
      'Eszközarányos megtérülés',
      'Eszközarányos megtérülés: éves nyereség ÷ a cég összes eszköze. Ugyanazon az iparágon belül érdemes összevetni.',
    ),
    (
      'Adósság / saját tőke',
      'Adósság ÷ a tulajdonosok tőkéje. A magasabb több kölcsönpénzt jelent: nagyobb kockázat kamatemelésnél vagy lassuláskor.',
    ),
    (
      'Likviditási ráta',
      'Rövid lejáratú eszközök ÷ egy éven belül esedékes tartozások. 1 fölött a cég fedezni tudja a közeli kötelezettségeit.',
    ),
    ('Árbevétel-növekedés (YoY)', 'Mennyivel nőtt az árbevétel az egy évvel korábbihoz képest.'),
    ('EPS-növekedés (YoY)', 'Mennyivel nőtt az egy részvényre jutó nyereség az egy évvel korábbihoz képest.'),
    ('Osztalékhozam', 'Éves osztalék ÷ árfolyam: évente mennyi készpénzt kapnál a befizetett összeg százalékában.'),
    ('Egy részvényre jutó osztalék', 'Az elmúlt évben egy részvényre kifizetett osztalék.'),
    (
      'Kifizetési arány',
      'A nyereség mekkora részét fizeti ki osztalékként. 100% fölött többet fizet, mint amennyit keres, ami ritkán tartható.',
    ),
    (
      'Osztaléknövekedés (5 év)',
      'Mennyivel nőtt átlagosan évente a részvényenkénti osztalék az elmúlt öt évben. Az egyenletes növekedés általában azt jelzi, hogy a cég bízik a pénztermelésében; a csökkentés gyakran figyelmeztető jel.',
    ),
    (
      'Portfólió-béta',
      'A részvényeid bétája az értékükkel súlyozva: nagyjából hány százalékot mozdulnak a részvényeid, ha a piac 1%-ot. 1 fölött nagyobbakat lengenek, mint a piac, 1 alatt kisebbeket. A készpénz nincs benne.',
    ),
    (
      'A 3 legnagyobb pozíció',
      'A részvényeid értékének mekkora része van a három legnagyobb pozíciódban. Minél magasabb, annál jobban fájhat egyetlen cég rossz híre az egész portfóliónak.',
    ),
    (
      'Idei hozam',
      'Időarányos hozam az év elejétől (vagy az első vételtől, ha az idén volt): minden nap az aznap birtokolt részvények változása számít, és a napok összeláncolódnak – a befizetés és a kivét nem hozam, így összevethető egy indexszel. Alatta a választott index ugyanerre az időszakra.',
    ),
    (
      'Legnagyobb visszaesés',
      'A részvényeid értékének legnagyobb esése egy korábbi csúcsról egy későbbi mélypontig, a vételeid és eladásaid hatása nélkül (időarányosan). Megmutatja, mekkora visszaesést élt már át a portfóliód.',
    ),
  ],
  'en': [
    ('Market cap', 'What the whole company is worth on the stock market: share price × number of shares.'),
    (
      '50-day average',
      'The average closing price of the last 50 trading days. Price above it is often read as short-term strength, below it as weakness.',
    ),
    (
      'Yield on cost',
      'Dividends received in the last 12 months divided by what you paid for the shares you still hold. Unlike the dividend yield, it is measured against your own purchase price, not today\'s price.',
    ),
    (
      '200-day average',
      'The average closing price of the last 200 trading days – the classic long-term trend line. Many investors treat a price above it as a long-term uptrend.',
    ),
    (
      'RSI (14 days)',
      'Relative strength index: compares recent gains with recent losses on a 0–100 scale. Above 70 the stock is often called overbought (it rose fast), below 30 oversold – but a strong trend can stay there for a long time.',
    ),
    (
      'Volatility (30 days)',
      'How much the price swings day to day, scaled to a year: 20% means a typical year moves within roughly ±20%. Higher volatility means bigger moves both ways.',
    ),
    (
      'Shares outstanding',
      'How many shares the company has issued. If it grows, each share owns a smaller slice; buybacks shrink it.',
    ),
    (
      'P/E (trailing)',
      'Price ÷ earnings per share of the last 12 months: how many years of current profit you pay for. Lower is cheaper, but fast growers usually have a high P/E.',
    ),
    (
      'P/E (forward)',
      'Like P/E, but with the profit analysts expect for the next 12 months. Below the trailing P/E means profits are expected to grow.',
    ),
    (
      'P/B',
      'Price ÷ book value (assets minus debts) per share. Around 1 means the market values the company at what it owns on paper.',
    ),
    (
      'P/S',
      'Market value ÷ yearly revenue. Useful for companies with little or no profit yet; compare it within the same industry.',
    ),
    (
      'EV / free cash flow',
      'Company value including debt (EV) ÷ the cash it generates in a year after investments. Lower means you get more cash for the price.',
    ),
    (
      'PEG',
      'P/E ÷ expected yearly profit growth (%). Around 1 is often seen as fair; it puts the P/E in the light of growth.',
    ),
    (
      'EPS (TTM)',
      'Profit per share over the last 12 months. Rising EPS over the years is one of the strongest signs of a healthy company.',
    ),
    (
      'Beta',
      'How much the stock tends to move with the market: 1 = like the market, 1.5 = about 50% bigger swings, below 1 = calmer.',
    ),
    ('Revenue (TTM)', 'Total sales of the last 12 months, before any costs.'),
    ('Net income (TTM)', 'Profit left after all costs, interest and taxes over the last 12 months.'),
    (
      'Gross margin',
      'The share of revenue left after the direct cost of the products. A high margin often means pricing power.',
    ),
    (
      'Operating margin',
      'The share of revenue left after running the business (wages, rent, marketing), before interest and taxes.',
    ),
    ('Net margin', 'The share of revenue that ends up as final profit. 20% means 20 of every 100 in sales is profit.'),
    (
      'Return on equity',
      'Return on equity: yearly profit ÷ the owners\' capital. Shows how well management uses shareholders\' money; above about 15% is strong.',
    ),
    (
      'Return on assets',
      'Return on assets: yearly profit ÷ everything the company owns. Compare it within the same industry.',
    ),
    (
      'Debt / equity',
      'Debts ÷ the owners\' capital. Higher means more borrowed money: more risk when rates rise or business slows.',
    ),
    (
      'Current ratio',
      'Short-term assets ÷ bills due within a year. Above 1 means the company can cover its near-term bills.',
    ),
    ('Revenue growth (YoY)', 'How much revenue grew compared with a year earlier.'),
    ('EPS growth (YoY)', 'How much profit per share grew compared with a year earlier.'),
    (
      'Dividend yield',
      'Yearly dividend ÷ share price: the cash income you would get per year, as a percentage of what you pay.',
    ),
    ('Dividend per share', 'The dividend paid on one share over the last year.'),
    (
      'Payout ratio',
      'The share of profit paid out as dividends. Above 100% the company pays more than it earns, which rarely lasts.',
    ),
    (
      'Dividend growth (5y)',
      'How much the dividend per share grew a year on average over the last five years. Steady growth usually means the company trusts its cash flow; a cut is often a warning sign.',
    ),
    (
      'Portfolio beta',
      'The beta of your stocks, weighted by their value: roughly how many percent your stocks move when the market moves 1%. Above 1 they swing more than the market, below 1 less. Cash is not included.',
    ),
    (
      'Top 3 positions',
      'How much of your stocks\' value sits in your three largest positions. The higher it is, the more bad news at a single company can hurt the whole portfolio.',
    ),
    (
      'Return this year',
      'Time-weighted return since the start of the year (or since your first purchase, if that was this year): each day counts the change of the stocks you held that day, and the days are chained together – money you put in or take out is not return, so it can be compared with an index. Below it: the chosen index over the same period.',
    ),
    (
      'Largest drop',
      'The biggest fall of your holdings from an earlier high to a later low, without the effect of your buying and selling (time-weighted). It shows how deep a dip your portfolio has already been through.',
    ),
  ],
};
