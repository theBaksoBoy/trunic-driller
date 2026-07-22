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

    // taken from the TUNIC manual
    {"Lost? See page twenty-eight.", "lGst? sF pBy twenF-Bt."},
    {"Everything hurts way more when I\'m tired.", "evrFTiN hVts wB mR hwen Im tIVd."},
    {"Keep your eye on your stamina-points!", "kFp jR I Gn jR stamZnZ-pxnts!"},
    {"Face your adversaries!", "fBs jR advVsEFz!"},
    {"At the start of evasion you have invulnerability.", "at MZ stGrt Zv FvBHZn jU hav invZlnVZbilitF."},
    {"Cards can change its nature...", "kGrdz kan tSBny its nBtSV..."},
    {"You can do it!", "jU kan dU it!"},
    {"Where are the keys?", "hwE Gr MZ kFz?"},
    {"Lets go and visit the hero\'s grave!", "lets go and vizit MZ hYoz grBv!"},
    
    // Jerma quotes
    {"\"Giving aliens edibles is an act of war\"", "\"giviN BlFZnz edZbZlz iz an akt Zv wR\""},
    {"When in doubt, radish it out!", "hwen in dWt, radiS it Wt!"},
    {"THERE IS BLOOD IN THE BOX!", "ME iz blZd in MZ bGks!"},
    {"If I put you in a meat grinder...", "if I pLt jU in B mFt grIndV..."},

    // by: big papa (idk man)
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
    {"Oh, language practice? Try these on for size!", "o, laNgwZy praktZs? trI MFz Gn fR sIz!"}, // I know you probably didn't intend for this one to be used but hihihi
    {"Why will we whittle wet whistles when winter whips?", "hwI wil wF hwitZl wet hwisZlz hwen wintV hwips?"},
    {"Alliteration is my passion, but clearly not my strong suite.", "ZlitVBSZn iz mI paSZn, bZt klirlF nGt mI strGN swFt."},
    {"My favorite word I learned this week is Hidalgo.", "mI fBvVit wVd I lVnd Mis wFk iz hZdalgo."},
    {"I know why the caged bird sings.", "I no hwI MZ kByd bVd siNz."},
    {"It is impractical to joist while on giraffe, but what a show!", "it iz impraktZkZl tU yxst hwIl Gn yVaf, bZt hwZt B So!"},

    // by: 7dxxander
    {"Through the darkness of futures past...", "TrU MZ dGrknZs Zv fjUtSVz past..."},
    {"The magician longs to see.", "MZ mZyiSZn lGNz tU sF."},
    {"One chants out between two worlds...", "wZn tSants Wt bFtwFn tU wVldz..."},
    {"Fire walk with me.", "fIV wGk wiM mF."},
}
