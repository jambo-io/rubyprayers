# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

prayers_categories = [
  "Ajuda",
  "Amanhecer",
  "Beneplácito",
  "Casamento",
  "Contribuição aos Fundos",
  "Convênio",
  "Criança",
  "Cura",
  "Desprendimento",
  "Dia de Deus",
  "Ensino",
  "Família",
  "Firmeza e Constância",
  "Humanidade",
  "Jovem",
  "Louvor e Gratidão",
  "Pelos Mortos",
  "Mulher",
  "Noite",
  "Perdão",
  "Pré-Jovem",
  "Proteção",
  "Provações e Dificuldades",
  "Qualidades Espirituais",
  "Remoção de Dificuldades",
  "Reuniões",
  "Unidade",
  "Epístola de Ahmad",
]

prayers_categories.each do |name|
    if(Category.where(:name => name).blank?)
        Category.create( name: name)
    end
end

prayers_list_ajuda = [
  [ "<p>&Oacute; Deus, meu Deus! Estes s&atilde;o Teus servos fracos, Teus leais escravos e Tuas servas que se curvaram diante de Tuas Palavras excelsas e se humilharam em Teu Limiar de luz e deram teste-munho de Tua unicidade, atrav&eacute;s da qual se fez brilhar o sol em esplendor meridiano. Escutaram o chamado que levantaste de Teu Reino Oculto e, com cora&ccedil;&otilde;es tr&ecirc;mulos de amor e &ecirc;xtase, responderam &agrave; Tua convoca&ccedil;&atilde;o.</p>
  <p>&Oacute; Senhor, concede a todos eles os copiosos efl&uacute;vios de Tua miseric&oacute;rdia; faze descer sobre todos eles as chuvas de Tua gra&ccedil;a. Faze-os crescer como belas plantas no jardim do c&eacute;u e das nuvens plenas e transbordantes de Tuas d&aacute;divas e das fontes profundas de Tua abundante gra&ccedil;a, faze com que esse jardim flores&ccedil;a, e conserva-o sempre verdejante e glorioso, sempre fresco, iluminado e belo.</p>
  <p>Tu &eacute;s, verdadeiramente, o Forte, o Excelso, o Poderoso, Aquele &uacute;nico que, nos c&eacute;us e na terra, permanece inalter&aacute;vel. Nenhum outro Deus h&aacute;, salvo Tu, o Senhor dos sinais e s&iacute;mbolos manifestos.</p>", 
  "‘Abdu’l-Bahá" ],
  ["<p>&Oacute; Senhor! Somos fracos; fortalece-nos.</p>
  <p>&Oacute; Deus! Carecemos de conhecimentos; torna-nos conhecedores.</p>
  <p>&Oacute; Senhor! Somos pobres; enriquece-nos.</p>
  <p>&Oacute; Deus! Estamos mortos; vivifica-nos.</p>
  <p>&Oacute; Deus! Somos a pr&oacute;pria humilha&ccedil;&atilde;o; glorifica-nos em Teu reino.</p>
  <p>Se Tu nos ajudares, &Oacute; Senhor, nos tornaremos estrelas cintilantes.</p>
  <p>Se n&atilde;o nos ajudares, nos tornaremos inferiores &agrave; terra.</p>
  <p>&Oacute; Senhor! Fortalece-nos.</p>
  <p>&Oacute; Deus! Confere-nos vit&oacute;ria.</p>
  <p>&Oacute; Deus! Capacita-nos a sobrepujar o ego e superar o desejo.</p>
  <p>&Oacute; Senhor! Livra-nos da escurid&atilde;o do mundo material.</p>
  <p>&Oacute; Senhor! Vivifica-nos atrav&eacute;s do sopro do Esp&iacute;rito Santo de modo que possamos nos levantar para Te servir, nos empenhemos em Te adorar, e nos esforcemos em Teu reino com a m&aacute;xima sinceridade.</p>
  <p>&Oacute; Senhor! Tu &eacute;s poderoso! &Oacute; Deus, Tu &eacute;s clemente! &Oacute; Senhor, Tu &eacute;s compassivo!</p>",
  "‘Abdu’l-Bahá"],
  ["<p>&Oacute; tu que est&aacute;s te volvendo a Deus!</p>
  <p>Fecha teus olhos a tudo o mais, e abre-os para o reino do Todo-Glorioso.</p>
  <p>A Ele, exclusivamente, pede o que quer que desejes; Dele, exclusivamente, busca o que quer que busques.</p>
  <p>Com um olhar realiza Ele cem mil esperan&ccedil;as, num relance cura cem mil doen&ccedil;as incur&aacute;veis, com um vislumbre aplica um b&aacute;lsamo em toda ferida, com um aceno livra os cora&ccedil;&otilde;es dos grilh&otilde;es do sofrimento.</p>
  <p>Assim Ele procede, e que recurso temos n&oacute;s?</p>
  <p>Ele cumpre a Sua Vontade, Ele ordena o que Lhe apraz. Assim, te &eacute; melhor curvares a cabe&ccedil;a em submiss&atilde;o, e colocar tua confian&ccedil;a no Senhor Todo-Misericordioso.</p>",
  "‘Abdu’l-Bahá"],
  ["<p>&Oacute; Tu, Provedor! Sopraste sobre os amigos no Ocidente a doce fragr&acirc;ncia do Esp&iacute;rito Santo e, com a luz da guia divina, iluminaste o c&eacute;u ocidental. Fizeste com que os outrora remotos se aproximassem de Ti Pr&oacute;prio; transformaste estranhos em afetuosos amigos; despertaste aqueles que dormiam; tornaste atentos os negligentes.</p>
  <p>&Oacute; Tu, Provedor! Ajuda esses nobres amigos a conquistarem Teu benepl&aacute;cito. Torna-os igualmente ben&eacute;volos para com estranhos e amigos. Faze-os entrarem no mundo que perdura para todo o sempre; concede-lhes um quinh&atilde;o da gra&ccedil;a celestial; faze com que sejam verdadeiros bah&aacute;&rsquo;is, sinceramente de Deus; protege-os de apar&ecirc;ncias exteriores e estabelece-os firmemente na verdade. Torna-os sinais e emblemas do Reino, estrelas luminosas acima dos horizontes desta vida inferior. Que sejam conforto e consolo para a humanidade e promotores da paz do mundo. Extasia-os com o vinho de Teu des&iacute;gnio e permite que todos eles trilhem o caminho de Teus mandamentos.</p>
  <p>&Oacute; Tu, Provedor! O mais acalentado desejo deste servo de Teu Limiar &eacute; ver os amigos do Oriente e Ocidente em abra&ccedil;o &iacute;ntimo; &eacute; ver todos os membros da sociedade humana reunidos com amor numa mesma grande congrega&ccedil;&atilde;o, como as gotas d&rsquo;&aacute;gua reunidas num &uacute;nico e poderoso mar; &eacute; contemplar todos como aves num &uacute;nico jardim de rosas &ndash; como p&eacute;rolas do mesmo oceano, folhas de uma &uacute;nica &aacute;rvore, raios do mesmo sol.</p>
  <p>Tu &eacute;s o Grande, o Poderoso; &eacute;s o Deus de Fortaleza, o Onipotente, o que tudo v&ecirc;.</p>",
  "‘Abdu’l-Bahá"],
  ["<p>Senhor! Lastim&aacute;veis somos n&oacute;s: concede-nos Teu favor. Somos pobres: d&aacute;-nos uma fra&ccedil;&atilde;o do oceano de Tua riqueza. Satisfaze as nossas necessidades e livra-nos da humilha&ccedil;&atilde;o, atrav&eacute;s de Tua gl&oacute;ria. Todas as aves, como os animais do campo, recebem de Ti seu sustento di&aacute;rio, e todos os seres s&atilde;o objetos de Teus cuidados e de Tua merc&ecirc;.</p>
  <p>N&atilde;o prives este fr&aacute;gil ser humano de Tua gra&ccedil;a maravilhosa e, atrav&eacute;s de Teu poder, favorece com Tua generosidade esta alma desfalecida.</p>
  <p>D&aacute;-nos o nosso p&atilde;o de cada dia e concede Teu acr&eacute;scimo nas coisas necess&aacute;rias &agrave; vida, para que dependamos s&oacute; de Ti, comunguemos inteiramente Contigo, prossigamos em Teu Caminho e declaremos Teus mist&eacute;rios. &Eacute;s o Todo-Poderoso, o Deus de Amor; &eacute;s Quem prov&ecirc; a toda a humanidade.</p>",
  "‘Abdu’l-Bahá"],
  ["<p>N&atilde;o removas, &oacute; Senhor, a mesa festiva que se estendeu em Teu nome, nem apagues a chama ardente, acesa com Teu fogo inextingu&iacute;vel. Que Tuas &Aacute;guas Vivas, murmurando com a melodia de Tua gl&oacute;ria e Tua lembran&ccedil;a, n&atilde;o deixem de fluir, e Teus servos n&atilde;o sejam privados da fragr&acirc;ncia de Teus doces aromas, donde emana o perfume do Teu amor.</p>
    <p>Senhor! Transforma a ang&uacute;stia de Teus santos em sossego, suas durezas em conforto; muda-lhes a humilha&ccedil;&atilde;o em gl&oacute;ria, e a tristeza em j&uacute;bilo e &ecirc;xtase, &oacute; Tu que seguras nas m&atilde;os as r&eacute;deas de toda a humanidade!</p>
    <p>&Eacute;s, em verdade, o Deus Uno, o Poderoso, o Onipotente, a Suprema Sabedoria!</p>",
  "‘Abdu’l-Bahá"],
  ["<p>&Oacute; Divina Provid&ecirc;ncia!</p>
  <p>Lastim&aacute;veis somos n&oacute;s; concede-nos Teu socorro. Somos errantes sem lar; abriga-nos &agrave; sombra de Teu ref&uacute;gio. Estamos dispersos; une-nos. Tu nos v&ecirc;s perdidos; re&uacute;ne-nos a Teu rebanho. Eis-nos destitu&iacute;dos; confere-nos um quinh&atilde;o e por&ccedil;&atilde;o. Achamo-nos sequiosos; conduze-nos ao manancial da Vida.</p>
  <p>Somos fracos; fortalece-nos para que possamos levantar-nos em aux&iacute;lio &agrave; tua Causa e nos imolarmos em sacrif&iacute;cio vivo no caminho da guia.</p>",
  "‘Abdu’l-Bahá"],
  ["<p>Louvado seja Teu nome, &oacute; Deus.</p>
  <p>&Eacute;s, em verdade, nosso Senhor; est&aacute;s ciente de tudo o que est&aacute; nos c&eacute;us e na terra. Faze descer sobre n&oacute;s, pois, um sinal de Tua miseric&oacute;rdia. Verdadeiramente, Tu &eacute;s inexced&iacute;vel entre aqueles que mostram miseric&oacute;rdia.</p>
  <p>Todo louvor a Ti, &oacute; Senhor.</p>
  <p>Ordena para n&oacute;s, de Tua presen&ccedil;a, o que possa confortar os cora&ccedil;&otilde;es dos sinceros entre Teus servos. Glorificado &eacute;s Tu, &oacute; Deus; &eacute;s o Criador dos c&eacute;us e da terra e daquilo que entre eles h&aacute;. &Eacute;s o Senhor soberano, o Sant&iacute;ssimo, o Onipotente, a Suma Sabedoria.</p>
  <p>Magnificado seja Teu Nome, &oacute; Deus!</p>
  <p>Faze descer da Tua presen&ccedil;a sobre aqueles que acreditaram em Deus e em Seus sinais, um poderoso aux&iacute;lio que os capacite a prevalecer sobre a humanidade em geral.</p>",
  "O Báb"],
  ["<p>&Oacute; meu Deus! Pe&ccedil;o-Te, por Teu nome mais glorioso, que me ajudes naquilo que fa&ccedil;a com que os interesses de Teus servos prosperem e Tuas cidades progridam. Tu, verdadeiramente, tens poder sobre todas as coisas!</p>",
  "Bahá'u'lláh"],
  ["<p>&Oacute; Deus, meu Deus! Tu me v&ecirc;s imerso num oceano de ang&uacute;stias, cingido pelos fogos da opress&atilde;o, em prantos na escurid&atilde;o da noite. Insone, agito-me no leito e meus olhos lutam para avistar a luz matinal da fidelidade e fidedignidade. Estou agonizante como um peixe cujas entranhas ardem ao debater-se aterrorizado sobre a areia e, todavia, guardo sempre a esperan&ccedil;a de que Tuas d&aacute;divas surjam de todos os lados.</p>
  <p>&Oacute; Deus, meu Deus! Permite que os crentes de outras plagas obtenham um quinh&atilde;o de Tua gra&ccedil;a abundante; com Teu aux&iacute;lio e generosidade infal&iacute;veis salva aqueles de Teus amados que nas terras mais distantes suspiram devido &agrave; amarga crueldade de seus inimigos. Senhor! Eles s&atilde;o os cativos de Teu amor, os prisioneiros de Tuas hostes; s&atilde;o as aves que voam nos c&eacute;us de Tua guia, as baleias que nadam no oceano de Tuas d&aacute;divas, as estrelas cintilantes do horizonte de Teus dons. Eles s&atilde;o os defensores da fortaleza de Tua lei. S&atilde;o os estandartes de Tua lembran&ccedil;a entre os homens. S&atilde;o as fontes profusas de Tua compaix&atilde;o divina, os mananciais de Teus favores e as nascentes de Tua gra&ccedil;a.</p>
  <p>Guarda-os sempre em seguran&ccedil;a com Teu olhar que a tudo protege. Ajuda-os a exaltar Teu Verbo; torna seus cora&ccedil;&otilde;es constantes em Teu amor; fortalece seus bra&ccedil;os para que Te sirvam condignamente; em servitude, refor&ccedil;a-lhes os poderes.</p>
  <p>Atrav&eacute;s deles, difunde por toda parte Teus doces efl&uacute;vios; manifesta atrav&eacute;s deles Tuas Sagradas Escrituras; por interm&eacute;dio deles torna conhecido o que prov&eacute;m de Tua Voz; torna-os instrumentos do cumprimento de Tuas Palavras; por meio deles, esparge Tua merc&ecirc;.</p>
  <p>&Eacute;s, verdadeiramente, o Grande, o Poderoso. &Eacute;s, verdadeiramente, o Clemente, o Compassivo.</p>",
  "'Abdu'l-Bahá"],
  ["<p>Ele &eacute; Deus, o Soberano Governante, o Sempiterno, Aquele cujo aux&iacute;lio &eacute; implorado por todos os homens.</p>
  <p>Alvo de louvor e gl&oacute;ria &eacute;s Tu, &oacute; Senhor! Tanto o mundo existente, como as almas dos homens d&atilde;o testemunho de que Tu &eacute;s transcendente acima das revela&ccedil;&otilde;es da obra de Tuas m&atilde;os, e os portadores de Teus nomes e atributos proclamam que &eacute;s imensuravelmente exaltado acima de qualquer louvor que os habitantes dos dom&iacute;nios da cria&ccedil;&atilde;o e da inven&ccedil;&atilde;o possam a Ti render. Todas as apar&ecirc;ncias e realidades indicam a unicidade de Tua Ess&ecirc;ncia, e todas as evid&ecirc;ncias e todos os Sinais refletem a verdade de que Tu &eacute;s Deus e n&atilde;o h&aacute; para Ti nenhum igual ou associado em todos os reinos do c&eacute;u e da terra.</p>
  <p>Imensamente enaltecido e santificado &eacute;s Tu, &oacute; Senhor! Teu Ser divino atesta que &eacute;s inescrut&aacute;vel a todos os que habitam em Teu reino da exist&ecirc;ncia, e Tua mais &iacute;ntima Ess&ecirc;ncia proclama que est&aacute;s muito acima da descri&ccedil;&atilde;o dos que revelam Tua gl&oacute;ria.</p>
  <p>Os Sinais revelados pelas sagradas ess&ecirc;ncias e as palavras expressas pelas realidades excelsas e as alus&otilde;es manifestadas pelas entidades et&eacute;reas - todos proclamam que Tu est&aacute;s imensuravelmente exaltado acima do alcance das personifica&ccedil;&otilde;es do reino da exist&ecirc;ncia, e todos afirmam com solenidade que est&aacute;s imensamente enaltecido acima da descri&ccedil;&atilde;o daqueles envoltos nos v&eacute;us da fantasia.</p>
  <p>Louvor a Ti, &oacute; Senhor! Teu Ser divino &eacute; testemunho seguro da unicidade de Tua mais &iacute;ntima Ess&ecirc;ncia, e Tua divindade suprema d&aacute; testemunho da unidade de Teu Ser, e as realidades de todas as coisas criadas atestam que nenhum la&ccedil;o de intercurso Te liga a qualquer coisa no reino da cria&ccedil;&atilde;o que Tu formaste.</p>
  <p>Todo homem de percep&ccedil;&atilde;o que tem escalado as nobres alturas do desprendimento, e todo homem de eloq&uuml;&ecirc;ncia que tem atingido a mais sublime posi&ccedil;&atilde;o, d&aacute; testemunho de que Tu &eacute;s Deus, o Incompar&aacute;vel, que nenhum associado tens designado para Ti pr&oacute;prio no reino da cria&ccedil;&atilde;o, e que ningu&eacute;m h&aacute; no reino da inven&ccedil;&atilde;o que a Ti seja compar&aacute;vel. Homens de sabedoria, que tinham apenas uma no&ccedil;&atilde;o da Revela&ccedil;&atilde;o de Tua gl&oacute;ria, conceberam uma semelhan&ccedil;a de Ti de acordo com seu pr&oacute;prio entendimento, e homens de erudi&ccedil;&atilde;o, que haviam conseguido apenas um vislumbre das m&uacute;ltiplas evid&ecirc;ncias de Tua benevol&ecirc;ncia e gl&oacute;ria, inventaram para Ti associados, segundo suas pr&oacute;prias imagina&ccedil;&otilde;es.</p>
  <p>Glorificado, imensuravelmente glorificado &eacute;s Tu, &oacute; Senhor! Todo homem de percep&ccedil;&atilde;o tem se desviado para longe em sua tentativa de Te reconhecer, e todo homem de consumada erudi&ccedil;&atilde;o est&aacute; gravemente perplexo em sua busca de Ti. Toda evid&ecirc;ncia &eacute; inadequada em face de Tua Ess&ecirc;ncia incognosc&iacute;vel e toda luz recua e se p&otilde;e abaixo do horizonte, ao confrontar-se com apenas um t&ecirc;nue reflexo do deslumbrante esplendor de Tua grandeza.</p>
  <p>Dota-me, &oacute; meu Senhor, de Tuas generosas gra&ccedil;as e ben&eacute;volas d&aacute;divas e concede-me o que for pr&oacute;prio da sublimidade de Tua gl&oacute;ria. Ajuda-me, &oacute; meu Senhor, a ganhar uma vit&oacute;ria not&aacute;vel. Abre Tu diante de mim a porta do &ecirc;xito infal&iacute;vel, e faze aproximarem-se as coisas que prometeste. Tu &eacute;s, em verdade, potente sobre todas as coisas. Refresca meu cora&ccedil;&atilde;o, &oacute; meu Deus, com as &aacute;guas viventes de Teu amor e d&aacute;-me uma po&ccedil;&atilde;o, &oacute; meu Mestre, do c&aacute;lice de Tua terna miseric&oacute;rdia. Possa eu habitar, &oacute; meu Senhor, dentro dos aposentos de Tua gl&oacute;ria e permite-me emergir, &oacute; meu Deus, da treva na qual Tua obscuridade divina se amortalha. Possibilita-me participar de todo bem que Tu concedeste &Agrave;quele que &eacute; o Ponto e aos que s&atilde;o os expoentes de Sua Causa, e ordena para mim o que Te convier e que com Tua posi&ccedil;&atilde;o for real-mente condigno. Por Tua gra&ccedil;a, perdoa-me pelas coisas que tenho cometido em Tua santa presen&ccedil;a e n&atilde;o me dirijas o olhar da justi&ccedil;a, mas sim, salva-me atrav&eacute;s de Tua gra&ccedil;a, trata-me com Tua miseric&oacute;rdia e de acordo com Teus generosos favores, assim como &eacute; digno de Tua gl&oacute;ria.</p>
  <p>Tu &eacute;s a Eterna Clem&ecirc;ncia, o Todo-Glorioso; &eacute;s Quem concede favores e d&aacute;divas, o Senhor de gra&ccedil;a abundante. Verdadeiramente, nenhum Deus h&aacute;, sen&atilde;o Tu. &Eacute;s Quem a tudo possui, o Alt&iacute;ssimo.</p>
  <p>Santificado &eacute;s Tu, &oacute; Senhor, Tu a Quem todos rendem gra&ccedil;as. Qualquer coisa que de Ti eu possa afirmar, nada mais seria que um crime abomin&aacute;vel diante de Ti, e qualquer men&ccedil;&atilde;o que de Ti eu possa desejar fazer, seria a ess&ecirc;ncia da transgress&atilde;o, e n&atilde;o importa qual seja o louvor com que eu Te possa glorificar, n&atilde;o passaria de simples blasf&ecirc;mia. Ningu&eacute;m, sen&atilde;o Tu, jamais p&ocirc;de, nem poder&aacute; sondar Teu mist&eacute;rio, e pessoa alguma tem conseguido, nem conseguir&aacute;, em qualquer tempo, desvelar Tua Ess&ecirc;ncia.</p>
  <p>Magnificado &eacute;s! Nenhum Deus h&aacute;, salvo Tu. &Eacute;s, em verdade, o Governante Supremo, o Amparo no Perigo, o Alt&iacute;ssimo, o Incompar&aacute;vel, o Onipotente, o Todo-Poderoso. Verdadeiramente, &eacute;s grande em Tua proeza, o Senhor de transcendente gl&oacute;ria e majestade.</p>
  <p>Protege Tu, &oacute; Deus, a quem memorizar esta ora&ccedil;&atilde;o e a recitar durante o dia e &agrave; noite. Em verdade, Tu &eacute;s Deus, o Senhor da cria&ccedil;&atilde;o, o Todo-Suficiente. &Eacute;s fiel &agrave; Tua promessa e fazes qualquer coisa que Te apraza. &Eacute;s Aquele que em Suas m&atilde;os segura os dom&iacute;nios da terra e do c&eacute;u. Em verdade &eacute;s Tu o Todo-Poderoso, o Inating&iacute;vel, o Amparo no Perigo, o Predominante.</p>",
  "O Báb"],
  ["<p>&Oacute; meu Senhor! Tu sabes que o g&ecirc;nero humano est&aacute; cercado de pesares e calamidades, de afli&ccedil;&otilde;es e desgostos. Toda prova&ccedil;&atilde;o ataca o homem e toda adversidade tem&iacute;vel o assalta, como se fosse a investida de uma serpente. N&atilde;o h&aacute; abrigo ou asilo para ele salvo sob as asas de Tua prote&ccedil;&atilde;o, Teu cuidado e amparo.</p>
  <p>&Oacute; Tu, o Misericordioso! &Oacute; meu Senhor! Seja Tua prote&ccedil;&atilde;o, minha armadura; Tua preserva&ccedil;&atilde;o, meu escudo; minha humildade ante a porta da Tua Unidade, o que me guarda; e Teu cuidado e defesa, minha fortaleza e morada. Preserva-me das sugest&otilde;es do ego e do desejo, e guarda-me de toda mol&eacute;stia, prova&ccedil;&atilde;o, dificuldade e sofrimento.</p>
  <p>Em verdade, Tu &eacute;s Quem protege, guarda e preserva; &eacute;s o Suficiente e, em verdade, o Mais Misericordioso dos Misericordiosos.</p>",
  "‘Abdu’l-Bahá"],
  ["<p>&Oacute; meu Senhor, meu Bem-Amado, meu Desejo! S&ecirc; um amigo para mim em minha solid&atilde;o, e acompanha-me no ex&iacute;lio; remove meu pesar, faze-me adorar Tua Beleza, afasta-me de tudo, salvo de Ti, e atrai-me com Tuas frag&acirc;ncias de santidade; permite-me associar, em Teu Reino, aos que de tudo se desprenderam, menos de Ti, que aspiram a servir em Teu sagrado Limiar e se levantaram para trabalhar em Tua Causa. Torna-me uma de Tuas servas que atingiram a Tua aprova&ccedil;&atilde;o.</p>
  <p>Em verdade, &eacute;s o Ben&eacute;volo, o Generoso!</p>",
  "‘Abdu’l-Bahá"],
  ["<p>Eu Te adjuro pelo Teu poder, &oacute; meu Deus! N&atilde;o deixes nenhum mal me sobrevir em tempos de prova&ccedil;&otilde;es e, em momentos de inadvert&ecirc;ncia, guia meus passos no caminho certo, atrav&eacute;s de Tua inspira&ccedil;&atilde;o. Tu &eacute;s Deus; potente &eacute;s para fazer o que desejas. Ningu&eacute;m Te pode resistir &agrave; Vontade ou frustrar o Des&iacute;gnio.</p>",
  "O Báb"],
  ["<p>Enaltecido e glorificado &eacute;s Tu, &oacute; meu Deus! Rogo-Te &ndash; pelos suspiros dos que Te amam e pelas l&aacute;grimas vertidas por aqueles que aspiram Tua presen&ccedil;a &ndash; n&atilde;o me negues a ternura da Tua miseric&oacute;rdia em Teu Dia, nem me prives da melodia da Ave que exalta Tua Unidade diante da luz que se irradia de Tua Face. Sou aquele que est&aacute; em tribula&ccedil;&atilde;o, &oacute; Deus! Eis-me apoiado em Teu Nome, o Predominante. Sou aquele fadado a perecer; eis-me afirmando-me em Teu Nome, o Imperec&iacute;vel. Imploro-Te, pois, por Ti Pr&oacute;prio, o Excelso, o Alt&iacute;ssimo, que n&atilde;o me abandones a mim mesmo e aos desejos corruptos. Segura Tu minha m&atilde;o com a m&atilde;o do Teu poder, livra-me das profundezas de minhas fantasias e id&eacute;ias v&atilde;s, e purifica-me de tudo o que Tu abominas.</p>
  <p>Faze-me, pois, volver inteiramente a Ti, em Ti depositar toda a minha confian&ccedil;a, em Ti buscar ref&uacute;gio e em dire&ccedil;&atilde;o &agrave; Tua Face me apressar. Em verdade, &eacute;s Aquele que realiza tudo o que pretende, atrav&eacute;s do poder de Sua grandeza e, gra&ccedil;as &agrave; pot&ecirc;ncia de Sua Vontade, ordena o que Ele pr&oacute;prio elege. N&atilde;o h&aacute; quem possa impedir a opera&ccedil;&atilde;o do Teu decreto ou alterar o curso daquilo que Tu determinaste. &Eacute;s, em verdade, o Onipotente, o Todo-Glorioso, a Suprema Bondade.</p>",
  "Bahá'u'lláh"],
  ["<p>&Oacute; Deus, meu Deus! Tu me v&ecirc;s, Tu me conheces; &eacute;s meu Amparo e Ref&uacute;gio. A ningu&eacute;m tenho buscado, nem desejo buscar, salvo a Ti; caminho algum tenho trilhado, nem desejo trilhar, a n&atilde;o ser o caminho do Teu amor. Na noite tenebrosa do desespero, meus olhos volvem-se cheios de esperan&ccedil;a e expectativa para o amanhecer de Teu infinito favor e, na hora do alvorecer, minha&rsquo;alma esmorecida &eacute; refrescada e fortalecida com a lembran&ccedil;a de Tua beleza e Tua perfei&ccedil;&atilde;o. Quem for ajudado pela gra&ccedil;a da Tua miseric&oacute;rdia, embora seja apenas uma gota, se tornar&aacute; o ilimitado oceano, e o mais simples &aacute;tomo que for amparado pela emana&ccedil;&atilde;o de Tua benevol&ecirc;ncia, cintilar&aacute; como estrela radiante.</p>
  <p>Abriga sob tua prote&ccedil;&atilde;o, &oacute; Tu, Esp&iacute;rito de Pureza, Tu que &eacute;s o Mais Generoso Provedor, este Teu vassalo e servo extasiado. Ajuda-o, neste mundo da exist&ecirc;ncia, a permanecer constante e firme em Teu amor e permite que esta ave de asas partidas atinja um ref&uacute;gio e abrigo em Teu Ninho Divino, na &Aacute;rvore Celestial.</p>",
  "‘Abdu’l-Bahá"],
  ["<p>&Oacute; Deus! As prova&ccedil;&otilde;es mandadas por Ti s&atilde;o um b&aacute;lsamo para as feridas de todos aqueles que se devotam &agrave; Tua Vontade; a lembran&ccedil;a de Ti &eacute; um rem&eacute;dio que alivia o cora&ccedil;&atilde;o de quem se aproximou de Tua Corte; Tua proximidade &eacute; a verdadeira vida para aqueles que Te amam; Tua presen&ccedil;a &eacute; o ardente desejo dos que aspiram a contemplar o Teu Semblante; o seu afastamento de Ti &eacute; um supl&iacute;cio para todos os que admitiram Tua Unidade, e a separa&ccedil;&atilde;o de Ti &eacute; morte para aqueles que reconhecem Tua Verdade!</p>
  <p>Imploro-Te &ndash; pelos suspiros daqueles cujas almas por Ti anseiam em seu afastamento de Tua Corte, e pelos gemidos dos que Te amam, enquanto lamentam sua separa&ccedil;&atilde;o &ndash; imploro-Te que me nutras com o vinho do Teu conhecimento e as &aacute;guas vivas da Tua aprova&ccedil;&atilde;o e do Teu amor. Eis Tua serva, &oacute; meu Senhor, esquecida de tudo, menos de Ti, deleitando-se com Teu amor e lastimando o que Te sucedeu nas m&atilde;os dos malfeitores dentre Tuas criaturas. Ordena-lhe o que ordenaste para aquelas de Tuas servas que rodeiam o trono da Tua majestade e, ao anoitecer e ao amanhecer, contemplam Tua beleza.</p>
  <p>Tu &eacute;s, em verdade, o Senhor do Dia do ju&iacute;zo.</p>",
  "Bahá'u'lláh"]
]

prayers_list_ajuda.each do |prayer, author|
  if(Prayer.where(:prayer => prayer).blank?)
    prayer = Prayer.create(prayer: prayer, author: author)
    category = prayer.category_prayers.new
    category.category_id = Category.where(name: prayers_categories[0]).first.id
    category.save!
  end
end

prayers_list_amanhecer = [
  ["<p>Despertei abrigado por Ti, &oacute; meu Deus, e quem busca esse abrigo deve permanecer no Santu&aacute;rio da Tua prote&ccedil;&atilde;o e na Fortaleza do Teu amparo.</p>
    <p>Ilumina o &iacute;ntimo do meu ser, &oacute; meu Senhor, com os esplendores do Alvorecer da Tua Revela&ccedil;&atilde;o, assim como iluminaste meu ser exterior com a luz matinal da Tua gra&ccedil;a.</p>",
    "Bahá'u'lláh "]
]

prayers_list_amanhecer.each do |prayer, author|
  if(Prayer.where(:prayer => prayer).blank?)
    prayer = Prayer.create( prayer: prayer, author: author )
    category = prayer.category_prayers.new
    category.category_id = Category.where(name: prayers_categories[1]).first.id
    category.save!
  end
end

  
prayers_list_casamento = [
  ["<p>Ele &eacute; Deus!</p>
  <p>&Oacute; Senhor incompar&aacute;vel! Em Tua sabedoria onipotente, ordenaste matrim&ocirc;nio aos povos, a fim de que as gera&ccedil;&otilde;es de homens se sucedessem umas &agrave;s outras, neste mundo de conting&ecirc;ncias e que sempre, enquanto o mundo existir, se ocupassem em servi&ccedil;o e devo&ccedil;&atilde;o no Limiar de Tua unicidade - em homenagem, adora&ccedil;&atilde;o e louvor. &quot;N&atilde;o criei esp&iacute;ritos e homens a n&atilde;o ser para que Me adorassem.&quot;</p>
  <p>Une, pois, no c&eacute;u da Tua miseric&oacute;rdia, estas duas aves do ninho do Teu amor, e torna-as o meio de atrair gra&ccedil;a perp&eacute;tua; para que, da uni&atilde;o destes dois mares de amor, possa surgir uma onda de ternura que lance na praia da vida as p&eacute;rolas de uma prog&ecirc;nie pura e excelente.&quot;Ele soltou os dois mares para que se encontrassem um com outro. Entre eles h&aacute; uma barreira que n&atilde;o podem transpor. Qual das d&aacute;divas de vosso Senhor, pois, negareis? Ele faz manifestarem-se, de cada um, p&eacute;rolas maiores e menores.&quot;</p>
  <p>&Oacute; Tu, Senhor bondoso! Faze surgirem p&eacute;rolas e coral deste casamento. Em verdade, Tu &eacute;s o Onipotente, o Supremo, o Perd&atilde;o Eterno.</p>",
    "'Abdu'l-Bahá"]
]

prayers_list_casamento.each do |prayer, author|
  if(Prayer.where(:prayer => prayer).blank?)
    prayer = Prayer.create( prayer: prayer, author: author )
    category = prayer.category_prayers.new
    category.category_id = Category.where(name: prayers_categories[3]).first.id
    category.save!
  end
end

prayers_list_cura = [
  ["<p>&#8203;</p>
  <p>&Oacute; Tu, Senhor clemente! &Eacute;s o amparo de todos estes servos Teus. Conheces os segredos e mist&eacute;rios de todas as coisas. Estamos necessitados, e Tu &eacute;s o Poderoso, o Onipotente. N&oacute;s todos somos pecadores, e Tu &eacute;s Quem absolve os pecados, o Misericordioso, o Clemente. &Oacute; Senhor! N&atilde;o olhes nossas faltas. Trata-nos de acordo com Tua gra&ccedil;a e Tua generosidade. Nossas faltas s&atilde;o numerosas, mas o oceano do Teu perd&atilde;o &eacute; ilimitado. Nossa fraqueza &eacute; grave, mas as evid&ecirc;ncias de Tua ajuda e assist&ecirc;ncia s&atilde;o claras.</p>
  <p>Confirma-nos, pois, e fortalece-nos. Ajuda-nos naquilo que nos torne aceit&aacute;veis em Teu sagrado Limiar. Ilumina nossos cora&ccedil;&otilde;es, d&aacute; discernimento aos nossos olhos e torna atentos os nossos ouvidos. Ressuscita os mortos e cura os enfermos. Ao pobre, concede riquezas, ao que teme, confian&ccedil;a e paz. Aceita-nos em Teu reino. Ilumina-nos com a luz de guia. Tu &eacute;s o Poderoso e o Onipotente! &Eacute;s o Generoso! &Eacute;s o Clemente! &Eacute;s o Ben&eacute;volo!</p>",
  "'Abdu'l-Bahá"]
]

prayers_list_cura.each do |prayer, author|
  if(Prayer.where(:prayer => prayer).blank?)
    prayer = Prayer.create( prayer: prayer, author: author )
    category = prayer.category_prayers.new
    category.category_id = Category.where(name: prayers_categories[7]).first.id
    category.save!
  end
end

prayers_list_desprendimento = [
  ["<p>Glorificado &eacute;s Tu, &oacute; meu Deus! Agrade&ccedil;o-Te por me haveres feito conhecer Aquele que &eacute; o Alvorecer de Tua merc&ecirc;, a Aurora de Tua gra&ccedil;a e o Santu&aacute;rio de Tua Causa. Imploro-Te, por Teu Nome, atrav&eacute;s do qual se tornaram n&iacute;veas as faces dos que est&atilde;o pr&oacute;ximos de Ti, e os cora&ccedil;&otilde;es de Teus devotos al&ccedil;aram v&ocirc;o em Tua dire&ccedil;&atilde;o &ndash; possa eu, em todos os tempos e sob todas as condi&ccedil;&otilde;es, segurar a Corda que a Ti me prende, livrar-me de todo apego que n&atilde;o seja a Ti, manter os olhos dirigidos ao horizonte da Tua Revela&ccedil;&atilde;o e realizar o que me prescreveste em Tuas Ep&iacute;stolas. &Oacute; meu Senhor! Adorna tanto o &iacute;ntimo de minh&rsquo;alma como meu ser exterior com as vestes dos Teus favores e da Tua benevol&ecirc;ncia. Protege-me, ent&atilde;o, de tudo o que abominas e, por Tua gra&ccedil;a, ajuda-me e a meus parentes a sermos todos obedientes a Ti e a evitarmos o que possa despertar dentro de n&oacute;s qualquer desejo mau ou corrupto.</p>
  <p>Tu, verdadeiramente, &eacute;s o Senhor de toda a humanidade, o Possuidor deste mundo e do vindouro. Nenhum outro Deus h&aacute;, sen&atilde;o Tu, o Onisciente, a Absoluta Sabedoria.</p>",
  "Bahá'u'lláh"]
]

prayers_list_desprendimento.each do |prayer, author|
  if(Prayer.where(:prayer => prayer).blank?)
    prayer = Prayer.create( prayer: prayer, author: author )
    category = prayer.category_prayers.new
    category.category_id = Category.where(name: prayers_categories[8]).first.id
    category.save!
  end
end

prayers_list_firmeza_e_constancia = [
  ["<p>Glorificado &eacute;s Tu, &oacute; Senhor meu Deus! Suplico-Te, por Aquele que &eacute; Teu Nome Supremo, que foi severamente afligido por aquelas criaturas Tuas que repudiaram Tua verdade - Aquele que foi assediado por tristezas que l&iacute;ngua alguma pode descrever - permite que eu Te recorde e celebre Teu louvor, nesses dias em que todos se afastaram de Tua beleza, duvidaram de Ti e, com desd&eacute;m, voltaram as costas &Agrave;quele que &eacute; o Revelador de Tua Causa. N&atilde;o existe quem Te ajude, &oacute; meu Senhor, a n&atilde;o ser Tu mesmo, nem poder algum que venha em Teu socorro, salvo o Teu pr&oacute;prio.</p>
  <p>Imploro-Te que me fa&ccedil;as aderir firmemente &agrave; Tua lembran&ccedil;a e ao Teu amor. Isto se encontra, realmente, dentro de meu alcance, e &eacute;s Tu Quem conhece tudo o que est&aacute; em mim. Em verdade, &eacute;s O de tudo informado. N&atilde;o me prives, &oacute; meu Senhor, dos esplendores da luz do Teu semblante, cujo brilho iluminou o mundo inteiro. Nenhum outro Deus h&aacute;, sen&atilde;o Tu, o Mais Poderoso, a Suprema Gl&oacute;ria, O que sempre perdoa.</p>",
  "Bahá'u'lláh"]
]

prayers_list_firmeza_e_constancia.each do |prayer, author|
  if(Prayer.where(:prayer => prayer).blank?)
    prayer = Prayer.create( prayer: prayer, author: author )
    category = prayer.category_prayers.new
    category.category_id = Category.where(name: prayers_categories[12]).first.id
    category.save!
  end
end

prayers_list_protecao = [
  ["<p>&Oacute; Deus, nosso Senhor! Atrav&eacute;s de Tua gra&ccedil;a, protege-nos de qualquer coisa que Te seja repugnante e concede-nos o que de Ti for digno. Dota-nos de maior quinh&atilde;o de Tua gra&ccedil;a e aben&ccedil;oa-nos. Perdoa-nos as coisas que temos feito e purifica-nos dos pecados e, com Tua ben&eacute;vola clem&ecirc;ncia, s&ecirc; Tu indulgente para n&oacute;s. Em verdade, &eacute;s o Excelso, O que subsiste por Si pr&oacute;prio.</p>
  <p>Tua terna provid&ecirc;ncia tem abrangido todas as coisas criadas, nos c&eacute;us e na terra, e Tua clem&ecirc;ncia tem superado toda a cria&ccedil;&atilde;o. A Ti pertence a soberania; em Tua m&atilde;o se encontram os Reinos da Cria&ccedil;&atilde;o e da Revela&ccedil;&atilde;o; em Tua m&atilde;o direita, seguras Tu todas as coisas criadas e em Teu poder est&atilde;o as medidas determinadas do perd&atilde;o. Tu perdoas a quem quer que desejes entre Teus servos. Em verdade &eacute;s Tu a Eterna Clem&ecirc;ncia, O de todo amor. Nada, em absoluto, escapa a Teu conhecimento e nada h&aacute; que de Ti esteja oculto.</p>
  <p>&Oacute; Deus, nosso Senhor! Protege-nos atrav&eacute;s da pot&ecirc;ncia de Tua grandeza, e possibilita-nos entrar em Teu admir&aacute;vel oceano que surge, e concede-nos o que de Ti for digno.</p>
  <p>Tu &eacute;s o Governante Soberano, o Grande Realizador, o Excelso, O de todo amor.</p>",
  "O Báb"]
]

prayers_list_protecao.each do |prayer, author|
  if(Prayer.where(:prayer => prayer).blank?)
    prayer = Prayer.create( prayer: prayer, author: author )
    category = prayer.category_prayers.new
    category.category_id = Category.where(name: prayers_categories[21]).first.id
    category.save!
  end
end