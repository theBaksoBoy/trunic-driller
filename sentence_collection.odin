package main

import "core:math/rand"



GetRandomSentenceIndex :: proc() -> int {
    return rand.int_range(0, len(sentence_collection))
}



sentence_collection: []StringSet = {
    {"This is a test string to test realistic lengths of sentences.", "Mis iz B test striN tU test rFZlistik leNkTs Zv sentZnsZz."},
    {"No ruin seeker! Don\'t take the last slice of pizza! It\'s mine!", "no rUZn sFkV! don tBk MZ las slIs Zv pFtsZ! its mIn!"},
    {"I hope this program is helping to improve your reading speed.", "I hop Mis program iz helpiN tU imprUv jR rediN spFd."},
    {"I\'m just four sentences in and my brain is already struggling...", "Im yZst fR sentZnsZz in and mI brBn iz RedF strZgZliN..."},
    {"Astigmatism makes it harder to drive.", "ZstigmZtizZm mBks it hGrdV tU drIv."},
    {"Oh mama mia, Luigi is drunk again!", "o mGmZ mFZ, lUFyF iz drZNk ZgBn!"},
    {"I hope that my unhinged sentences get drowned out by better ones.", "I hop Mat mI Znhinyd sentZnsZz get drWnd Wt bI betV wZnz."},
    {"Vintage Story is a great game. You should go play it!", "vintiy stRF iz B grBt gBm. jU SLd go plB it!"},
    {"Odin is an amazing programming language. You should use it!", "odZn iz an ZmBziN programiN laNgwZy. jU SLd jUs it!"},
    {"Linux is an awesome operating system. You should try it!", "linZks iz an GsZm GpVBtiN sistZm. jU SLd trI it!"},
    {"The TUNIC soundtrack is absolutely phenomenal...", "MZ tUnik sWntrak iz absZlUtlF fZnGmZnZl..."},
    {"Remember to check your posture!", "rFmembV tU tSek jR pGstSV!"},
    {"Ordered ordering of ordinary lord hoards.", "RdVd RdViN Zv RdZnEF lRd hRdz."},
    {"Hexagons are honestly overrated... triangles are where it\'s at!", "heksZgGns Gr GnZslF ovVrBtid... trIaNgZlz Gr hwE its at!"},

    // taken from the TUNIC manual
    {"Lost? See page twenty-eight.", "lGst? sF pBy twenF-Bt."},
    {"Everything hurts way more when I\'m tired.", "evrFTiN hVts wB mR hwen Im tIVd."},
    {"Keep your eye on your stamina-points!", "kFp jR I Gn jR stamZnZ-pxnts!"},
    {"Face your adversaries!", "fBs jR advVsEFz!"},
    {"At the start of evasion you have invulnerability.", "at MZ stGrt Zv FvBHZn jU hav invZlnVZbilitF."},
    {"Cards can change its nature...", "kGrdz kan tSBny its nBtSV..."},
    {"You can do it!", "jU kan dU it!"},
    {"Where are the keys?", "hwE Gr MZ kFz?"},
    {"Let's go and visit the hero\'s grave!", "lets go and vizit MZ hYoz grBv!"},
    
    // Jerma quotes
    {"Giving aliens edibles is an act of war", "giviN BlFZnz edZbZlz iz an akt Zv wR"},
    {"When in doubt, radish it out!", "hwen in dWt, radiS it Wt!"},
    {"THERE IS BLOOD IN THE BOX!", "ME iz blZd in MZ bGks!"},
    {"If I put you in a meat grinder...", "if I pLt jU in B mFt grIndV..."},

    // quote by u/idonotlikethisrock
    {"You\'re just mad that my shiny bald head is brighter than your future.", "jUr yZst mad Mat mI SInF bGld hed iz brItV Man jR fjUtSV."},

    
    // user submitted sentences
    
    // by: big papa (idk man)
    // amount: 12
    {"My left foot is shaped like a United States state.", "mI left fLt iz SBpt lIk B jUnItid stBts stBt."},
    {"My doctor asked me to stop calling him with a surly sensual voice.", "mI dGktV askt mF tU stGp kGliN him wiM B sVlF senSZwZl vxs."},
    {"Smoked meat, call that my rug burn.", "smokt mFt, kGl Mat mI rZg bVn."},
    {"Fake horse spotted in downtown, officers on standby!", "fBk hRs spGtid in dWntWn, GfZsVz Gn standbI!"},
    {"I have impostor syndrome. I got to be my therapists least favorite patient.", "I hav impGstV sindrom. I gGt tU bF mI TEZpists lFst fBvVit pBSZnt."},
    {"Sometimes I wake up at night and listen to the insects speak.", "sZmtImz I wBk Zp at nIt and lisZn tU MZ insekts spFk."},
    {"Oh boy my male snake laid eggs!", "o bx mI mBl snBk lBd egz!"},
    {"Burger King foot lettuce.", "bVgV kiN fLt letZs."},
    {"This muffin is looking awfully like a hamster. Someone baked my hamster into a muffin.", "Mis mZfZn iz lLkiN GflF lIk B hamstV. sZmwZn bBkt mI hamstV intU B mZfZn."},
    {"I came home late and we had no ice cubes in the freezer.", "I kBm hom lBt and wF had no Is kjUbz in MZ frFzV."},
    {"What happens after we pass? is it blissful silence or will my wife be there?", "hwZt hapZnz aftV wF pas? iz it blisfZl sIlZns R wil mI wIf bF ME?"},
    {"Who ate the last century egg?", "hU Bt MZ las sentSVF eg?"},

    // by: Albin
    // amount: 11
    {"Writing haikus is really not that hard.", "rItiN hIkUz iz rFlF nGt Mat hGrd."},
    {"Whatever you do, never bring a sword to a sword fight.", "hwZtevV jU dU, nevV briN B sRd tU B sɔɹd faɪt."},
    {"I think you need to stay at home more and meet less people.", "I TiNk jU nFd tU stB at hom mR and mFt les pFpZl."},
    {"Becoming an adult is realizing cheese is really expensive.", "bikZmiN an adZlt iz rFZlIziN tSFz iz rFlF ikspensiv."},
    {"I\'ve been really getting into giving up lately.", "Iv bin rFlF getiN intU giviN Zp lBtlF."},
    {"Apparently there have never been any aquatic dinosaurs, only marine reptiles?", "ZpEZntlF ME hav nevV bin enF Zkwatik dInZsRz, onlF mVFn reptIlz?"},
    {"How many roads must a man walk down? Forty-two.", "hW menF rodz mZst B man wGk dWn? fRtF-tU."},
    {"You really don\'t need any other drink than water.", "jU rFlF don nFd enF ZMV driNk Man wGtV."},
    {"If I lived in a room without windows I think I would crumble to dust.", "if I lIvd in B rUm wiMWt windoz I TiNk I wLd krZmbZl tU dZst."},
    {"Sometimes I wonder if the crazy frog really was that crazy after all.", "sZmtImz I wZndV if MZ krBzF frGg rFlF wGz Mat krBzF aftV Gl."},
    {"Time waits for no one.", "tIm wBts fR no wZn."},

    // by: Sveta
    // amount: 6
    {"Oh, language practice? Try these on for size!", "o, laNgwZy praktZs? trI MFz Gn fR sIz!"}, // I know you probably didn't intend for this one to be used but hihihi
    {"Why will we whittle wet whistles when winter whips?", "hwI wil wF hwitZl wet hwisZlz hwen wintV hwips?"},
    {"Alliteration is my passion, but clearly not my strong suite.", "ZlitVBSZn iz mI paSZn, bZt klirlF nGt mI strGN swFt."},
    {"My favorite word I learned this week is Hidalgo.", "mI fBvVit wVd I lVnd Mis wFk iz hZdalgo."},
    {"I know why the caged bird sings.", "I no hwI MZ kByd bVd siNz."},
    {"It is impractical to joist while on giraffe, but what a show!", "it iz impraktZkZl tU yxst hwIl Gn yVaf, bZt hwZt B So!"},

    // by: dxxander
    // amount: 4
    {"Through the darkness of future's past,", "TrU MZ dGrknZs Zv fjUtSVz past,"},
    {"The magician longs to see.", "MZ mZyiSZn lGNz tU sF."},
    {"One chants out between two worlds,", "wZn tSants Wt bFtwFn tU wVldz,"},
    {"Fire, walk with me.", "fIV, wGk wiM mF."},

    // by: DonQuijote
    // amount: 43
    {"The thieving scholar who seeks the cross but does not understand.", "MZ TFviN skGlV hU sFks MZ krGs bZt dZz nGt ZndVstand."},
    {"These gifts are fake.", "MFz gifs Gr fBk."},
    {"They used to be alive.", "MB jUzd tU bF ZlIv."},
    {"This is the last of its kind.", "Mis iz MZ las Zv its kInd."},
    {"Fish, fish, fish... Fishing for fish.", "fiS, fiS, fiS... fiSiN fR fiS."},
    {"A sleeping guardian.", "B slFpiN gGrdFZn."},
    {"Be careful.", "bF kEfZl."},
    {"Yoga helps the soul.", "jogZ helps MZ sol."},
    {"There\'s a secret save?", "MEz B sFkrZt sBv?"},
    {"Pick at the bones of this land.", "pik at MZ bonz Zv Mis land."},
    {"Don\'t trust the miasma.", "don trZst MZ mIazmZ."},
    {"Do not lose will.", "dU nGt lUz wil."},
    {"Hit the weak spot.", "hit MZ wFk spGt."},
    {"Press \"A\" to do a barrel roll.", "pres \"B\" tU dU B barZl rol."},
    {"Bombs create more bombs.", "bGmz krFBt mR bGmz."},
    {"The cake is a lie.", "MZ kBk iz B lI."},
    {"Snake? Snake. Snake!", "snBk? snBk. snBk!"},
    {"Acquired a questagon.", "ZkwIVd B kwestZgGn."},
    {"Fight the gauntlet, attain the crown.", "fIt MZ gGntlZt, ZtBn MZ krWn."},
    {"I want to eat a potato with tomato and cheese.", "I wGnt tU Ft B pZtBto wiM tZmGto and tSFz."},
    {"If a gun uses mana, is it a magical staff?", "if B gZn jUsZz mGnZ, iz it B mayikZl staf?"},
    {"Attain your corporeal self again.", "ZtBn jR kRpRFZl self ZgBn."},
    {"This is your sign. Play void stranger.", "Mis iz jR sIn. plB vxd strBnyV."},
    {"Where is the forty-sixth room?", "hwE iz MZ fRtF-siksT rUm?"},
    {"They must really be forging with fury.", "MB mZst rFlF bF fRyiN wiM fjLrF."},
    {"If you find yourself next to a stick, pick it up.", "if jU fInd jRself neks tU B stik, pik it Zp."},
    {"No slugcat! Don\'t eat that neuron!", "no slZgkat! don Ft Mat nLrGn!"},
    {"Higher beings, these words are for you alone.", "hIV bFiNz, MFz wVdz Gr fR jU Zlon."},
    {"A good defense is a great defense.", "B gLd difens iz B grBt difens."},
    {"Thank you weird merchant.", "TaNk jU wird mVtSZnt."},
    {"This sign can\'t stop me because I can\'t read.", "Mis sIn kant stGp mF bikGz I kant red."},
    {"A key is no mere plaything.", "B kF iz no mir plBTiN."},
    {"Are fairies annoying you? Can you just never hit them? Just cast fireball.", "Gr fEFz ZnxiN jU? kan jU yZst nevV hit Mem? yZst kast fIVbGl."},
    {"Pray and allow the far shore\'s power through.", "prB and ZlW MZ fGr SRz pWV TrU."},
    {"Press x to doubt.", "pres eks tU dWt."},
    {"This is a huge breakthrough!", "Mis iz B hjUy brBkTrU!"},
    {"They used to call me the drift king.", "MB jUzd tU kGl mF MZ drift kiN."},
    {"If you can\'t figure it out, go to sleep.", "if jU kant figjV it Wt, go tU slFp."},
    {"Are we the bad guys?", "Gr wF MZ bad gIz?"},
    {"Windmills are my biggest enemy.", "windmilz Gr mI bigZst enZmF."},
    {"Ruin seeker, grab your lure for emotional support.", "rUZn sFkV, grab jR lLr fR FmoSZnZl sZpRt."},
    {"Don\'t break my pots!", "don brBk mI pGts!"},
    {"Spoiler, there might be a \"secret legend\".", "spxlV, ME mIt bF B \"sFkrZt leyZnd\"."},   

    // by: Quantodeluz
    // amount: 45
    {"Nothing that can\'t be solved with some G U N", "nZTiN Mat kant bF sGlvd wiM sZm yF jU en"},
    {"Fairy fairy, come and speak. Show the way to what I seek!", "fEF fEF, kZm and spFk. So MZ wB tU hwZt I sFk!"},
    {"The notes Mason! What do they mean!?", "MZ nots mBsZn! hwZt dU MB mFn!?"},
    {"Git gud.", "git gLd."},
    {"It\'s really quite simple.", "its rFlF kwIt simpZl."},
    {"Give us the last proof.", "giv Zs MZ las prUf."},
    {"Big robot with the power of napalm!", "big robGt wiM MZ pWV Zv nBpGm!"},
    {"What happened to the cute fox game!?", "hwZt hapZnd tU MZ kjUt fGks gBm!?"},
    {"Gemstones you find, Keys of great shine!", "yemstonz jU fInd, kFz Zv grBt SIn!"},
    {"The quest nears its end...", "MZ kwest nirz its end..."},
    {"\"I\'ll set you free!\" Oh, poor of them.", "\"Il set jU frF!\" o, pUr Zv Mem."},
    {"Oh, a customization room!", "o, B kZs.tZ.mIzB.SZn rUm!"},
    {"Look, I have a white tuft!", "lLk, I hav B hwIt tZft!"},
    {"What is this, some sort of outer wilds?", "hwZt iz Mis, sZm sRt Zv WtV wIldz?"},
    {"Behold, my opus magnum: water!", "bihold, mI opZs magnZm: wGtV!"},
    {"Oh, shiny gold!", "o, SInF gold!"},
    {"Oh! shiny orb!!", "o! SInF Rb!!"},
    {"Truth can still be found from those in the wrong.", "trUT kan stil bF fWnd frZm Moz in MZ rGN."},
    {"Just listen for what they have to say.", "yZst lisZn fR hwZt MB hav tU sB."},
    {"Don\'t hate the wrong one, hate the wrong.", "don hBt MZ rGN wZn, hBt MZ rGN."},
    {"The curse is lifted!", "MZ kVs iz liftZd!"},
    {"The Heir is here no more!", "MZ E iz hY no mR!"},
    {"This world has so many secrets to find...", "Mis wVld haz so menF sFkrZts tU fInd..."},
    {"I don\'t think we\'re done.", "I don TiNk wV dZn."},
    {"Time to get the corkboard!", "tIm tU get MZ kRkbRd!"},
    {"Seeker, we\'re so screwed.", "sFkV, wV so skrUd."},
    {"Hey! Give me back my book!", "hB! giv mF bak mI bLk!"},
    {"Time for some deciphering!", "tIm fR sZm dZsIfViN!"},
    {"The moonlight can show hidden things.", "MZ mUnlIt kan So hidZn TiNz."},
    {"Annealed visions of the future.", "ZnFld viHZnz Zv MZ fjUtSV."},
    {"The fulcrum has shattered!", "MZ fLlkrZm haz SatVd!"},
    {"Begone, Seeker of Ruin.", ", sFkV Zv rUZn."},
    {"Come, Seeker of Runes.", "kZm, sFkV Zv rUnz."},
    {"May you become the Hero this world needs.", "mB jU bikZm MZ hYo Mis wVld nFdz."},
    {"May the Holy Cross be your guide and means.", "mB MZ holF krGs bF jR gId and mFnz."},
    {"Yes Rico... kaboom.", "jes rFko... kZbUm."},
    {"What a suspiciously shaped wallstone!", "hwZt B sZspiSZslF SBpt wGlston!"},
    {"What a conveniently hidden entrance!", "hwZt B kZnvFnjZntlF hidZn entrZns!"},
    {"Hey, this wasn\'t here yesterday...", "hB, Mis wGzZnt hY jestVdB..."},
    {"Show me what you\'ve got!", "So mF hwZt jUv gGt!"},
    {"The old that is strong does not wither.", "MZ old Mat iz strGN dZz nGt wiMV."},
    {"Have you eaten?", "hav jU FtZn?"},
    {"Have you had water?", "hav jU had wGtV?"},
    {"Have you slept?", "hav jU slept?"},
    {"I hope you\'re doing fine.", "I hop jUr dUiN fIn."},

    // by: GrapeDragon
    // amount: 4
    {"I like your ears and tail!", "I lIk jR Yz and tBl!"},
    {"This stick does not work very well.", "Mis stik dZz nGt wVk vEF wel."},
    {"Erm, what the slorm?", "Em, hwZt MZ slRm?"},
    {"I have spent too much money on Spyro merchandise.", "I hav spent tU mZtS mZnF Gn spIro mVtSZndIz."},

    // by: small-piece-of-grass
    // amount: 9
    {"My battery is almost dead.", "mI batVF iz Glmost ded."},
    {"Can you believe it?", "kan jU bilFv it?"},
    {"I had a long day.", "I had B lGN dB."},
    {"I keep dreaming about summer camp.", "I kFp drFmiN ZbWt sZmV kamp."},
    {"Isn’t it curious sometimes?", "izZn it kjLrFZs sZmtImz?"},
    {"I’m not an idiot! Though I may be a fool...", "Im nGt an idFZt! Mo I mB bF B fUl..."},
    {"What do you think about often?", "hwZt dU jU TiNk ZbWt GfZn?"},
    {"Well, here we are, nothing we can do.", "wel, hY wF Gr, nZTiN wF kan dU."},
    {"Sometimes things look prettier as ruins!", "sZmtImz TiNz lLk pritFV az rUZnz!"},
}
