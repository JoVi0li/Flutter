import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel/components/character_card.dart';
import 'package:marvel/components/card_list.dart';
import 'package:marvel/components/character_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromRGBO(248, 248, 248, 1),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: SvgPicture.asset(
                  'assets/icons/menu.svg',
                ),
              );
            },
          ),
          title: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/marvel.svg',
              color: Color.fromRGBO(237, 29, 36, 1),
            ),
            iconSize: 71,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg'),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bem vindo ao Marvel Heroes',
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(183, 183, 200, 1)),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Escolha o seu personagem',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    )
                  ],
                ),
              ),
              CharacterIcons(),
              CardList(
                listName: 'Her??es',
                cardOne: CharacterCard(
                  heroName: 'Homem \nAranha',
                  name: 'Peter Parker',
                  image: 'assets/chars/spider-man.png',
                  age: '30 anos',
                  height: '71.80m',
                  universe: 'Terra 616',
                  weight: '78Kg',
                  description:
                      'Em Forest Hills, Queens, Nova York, o estudante de ensino m??dio, Peter Parker, ?? um cientista orf??o que vive com seu tio Ben e tia May.'
                      ' Ele ?? mordido por uma aranha radioativa em uma exposi????o cient??fica e adquire a agilidade e a for??a proporcional de um aracn??deo.'
                      ' Junto com a super for??a, Parker ganha a capacidade de andar nas paredes e tetos. \n\n'
                      ' Atrav??s de sua habilidade nativa para a ci??ncia, ele desenvolve um aparelho que o permitir lan??ar teias artificiais.'
                      ' Inicialmente buscando capitalizar suas novas habilidades, Parker cria um traje e, como Homem Aranha, torna-se uma estrela de televis??o.',
                ),
                cardTwo: CharacterCard(
                    heroName: 'Pantera \nNegra',
                    name: "T'Chala",
                    image: 'assets/chars/black-panther.png',
                    age: '47 anos',
                    height: '1.83m',
                    universe: 'Terra 616',
                    weight: '91Kg',
                    description:
                        'O Pantera Negra ?? o t??tulo cerimonial atribu??do ao chefe da Tribo Pantera da avan??ada na????o africana de Wakanda.'
                        ' Al??m de governar o pa??s, ele tamb??m ?? chefe de suas v??rias tribos (coletivamente conhecida como Wakandas). \n\n'
                        ' O uniforme do Pantera ?? um s??mbolo oficial (chefe de estado) e ?? usado mesmo durante miss??es diplom??ticas.'
                        ' O Pantera ?? um t??tulo heredit??rio, mas ainda ?? preciso ganhar um desafio.'
                        ' No passado distante, um enorme meteorito maci??o composto de vibranium - elemento que absorve o som,'
                        'entre outras propriedades especiais - caiu em Wakanda, e ?? desenterrado uma gera????o antes dos eventos do presente.'),
                cardThree: CharacterCard(
                  heroName: 'Homem \nde Ferro',
                  name: 'Tony Stark',
                  image: 'assets/chars/iron-man.png',
                  age: '50 anos',
                  height: '1.85m',
                  universe: 'Terra 616',
                  weight: '102Kg',
                  description:
                      'Durante a guerra do Vietn??, o inventor e empres??rio Tony Stark foi v??tima de uma explos??o de granada.'
                      ' Stark sobreviveu ?? explos??o mas estilha??os do explosivo se alojaram pr??ximo ao seu cora????o, amea??ando sua vida.'
                      ' Ele foi capturado e levado at?? o l??der Wong Chu, que o for??ou a criar uma poderosa arma,'
                      'mas ele criou algo que o mantivesse vivo e permitisse derrotar os captores. \n\n'
                      ' O Homem de Ferro enfrentou os soldados e os derrotou. Sua armadura resistia aos disparos contra ele.'
                      ' Wong Chu tentou fugir e o Homem de Ferro incendiou o galp??o de muni????es fazendo com que a explos??o o matasse.',
                ),
              ),
              CardList(
                listName: 'Vil??es',
                cardOne: CharacterCard(
                  heroName: 'Caveira \nVermelha',
                  name: 'J??hann Schmidt ',
                  image: 'assets/chars/red-skull.png',
                  age: '79 anos',
                  height: '1.88m',
                  universe: 'Terra 616',
                  weight: '91Kg',
                  description:
                      'J??hann Schmidt ?? filho de um campon??s analfabeto e b??bado.'
                      ' Sua m??e morreu ao lhe dar a luz e seu pai, que tentou afog??-lo por causa disso em uma bacia '
                      'e foi contido pelo obstetra, logo em seguida suic??dou-se.'
                      'Schmidt fugiu aos sete anos do orfanato onde foi criado, cresceu nas ruas da Alemanha,'
                      ' sendo preso v??rias vezes por pequenos crimes. \n\n Hitler encontrou Schmidt quando ele trabalhava como camareiro em um hotel no qual o l??der nazista se hospedou.'
                      'Hitler o treinou pessoalmente, oferecendo ao final do processo uma m??scara vermelha no formato de um cr??nio e o nome que carrega at?? hoje.',
                ),
                cardTwo: CharacterCard(
                  heroName: 'Doutor \nDestino',
                  name: 'Victor Von Doom',
                  image: 'assets/chars/dr-doom.png',
                  age: '58 anos',
                  height: '1.92m',
                  universe: 'Terra 616',
                  weight: '188Kg',
                  description:
                      'Victor nasceu em Haasenstadt, um vilarejo que fica na Latv??ria,'
                      ' filho de Werner von Doom, um conhecido curandeiro cigano, e Cynthia von Doom,'
                      ' que diziam ser uma bruxa.\n\nSua m??e foi morta quando ele ainda era uma crian??a.'
                      ' Ela tentara adquirir poder para proteger sua tribo cigana da persegui????o que sofriam por parte do governo vigente sobre a Latv??ria.'
                      ' Cynthia tentou obter esse poder atrav??s de um trato com o dem??nio Mephisto.\n\nVictor von Doom ficou aos cuidados de B??ris,'
                      ' um dos membros da comunidade cigana de que pertencia. Victor jurou que faria o mundo todo pagar pela morte de seus pais.',
                ),
                cardThree: CharacterCard(
                  heroName: 'Duende \nVerde',
                  name: 'Norman Osborn',
                  image: 'assets/chars/green-goblin.png',
                  age: '46 anos',
                  height: '1.93m',
                  universe: 'Terra 616',
                  weight: '174Kg',
                  description: 'Filho do rico empres??rio Amberson Osborn,'
                      ' Norman foi v??tima de abuso quando o pai perdeu seu dinheiro e se tornou alc??olatra e violento,'
                      ' o que iniciou suas tend??ncias homicidas e o desejo de ser um chefe de fam??lia melhor. '
                      '\n\nNorman estudou qu??mica, administra????o e engenharia el??trica na faculdade, onde conheceu sua futura esposa Emily,'
                      ' m??e de seu filho Harry Osborn. \n\nAp??s formar, Norman se uniu a seu professor Mendel Stromm para fundar a empresa qu??mica Oscorp,'
                      ' que logo o tornaria milion??rio de novo, por??m quando Emily morre Norman fica abalado a ponto de focar mais e mais no trabalho, neglicenciando a cria????o do filho.',
                ),
              ),
              CardList(
                listName: 'Anti-her??is',
                cardOne: CharacterCard(
                  heroName: 'Deadpool',
                  name: 'Wade Wilson',
                  image: 'assets/chars/deadpool.png',
                  age: '29 anos',
                  height: '1.88m',
                  universe: 'Terra 616',
                  weight: '91Kg',
                  description:
                      'O jovem Wade saiu do controle quando sua m??e morreu de c??ncer quando ele tinha 6 anos de idade,'
                      ' tornando-o um garoto solit??rio e atormentado, sem nenhuma explica????o. Seu pai ??? que era um b??bado do ex??rcito'
                      '??? o espancava e o tratava mal. \n\nAssim, com uma vida desestruturada, Wade tornou-se um delinquente na adolesc??ncia.'
                      ' Um dia chegou a agredir friamente seu pai com uma garrafa mostrando alguns tra??os de insanidade, matando-o no processo.'
                      '\n\nDepois disso, Wade iniciou sua carreira de mercen??rio. Ele aceitava assassinar apenas aqueles merecedores da morte.',
                ),
                cardTwo: CharacterCard(
                  heroName: 'Venom',
                  name: 'Eddie Brock',
                  image: 'assets/chars/venom.png',
                  age: '34 anos',
                  height: '1.92m',
                  universe: 'Terra 616',
                  weight: '104Kg',
                  description:
                      'Venom ?? o ser resultante da simbiose entre uma criatura alien??gena e o jornalista Eddie Brock.'
                      ' Apesar de j?? ter tido miniss??ries pr??prias, a maioria de suas apari????es ?? como inimigo do personagem Homem Aranha.'
                      '\n\nA caracter??stica marcante de Venom, al??m do uniforme negro, ?? a desproporcional e assustadora mand??bula.'
                      '\n\nAntes de fundir-se ao simbionte e tornar-se o Venom, Eddie Brock era um rep??rter do jornal Clarim Di??rio.'
                      '\n\nA origem do simbionte alien??gena foi mostrada no evento intitulado Guerras Secretas, quando foi usado como "uniforme" pelo pr??prio Homem Aranha.',
                ),
                cardThree: CharacterCard(
                  heroName: 'Justiceiro',
                  name: 'Francis Castle',
                  image: 'assets/chars/punisher.png',
                  age: '46 anos',
                  height: '1.87m',
                  universe: 'Terra 616',
                  weight: '95Kg',
                  description:
                      'O Justiceiro ?? um vigilante, que considera crimes como assassinato,'
                      ' sequestro e tortura aceit??veis como t??ticas de combate ao crime.'
                      ' \n\nMotivado pela morte de sua fam??lia, que foi morta pelos capangas do mafioso Costa,'
                      ' quando testemunharam uma execu????o proveniente de uma guerra entre gangues no Central Park, em Nova York.'
                      ' \n\nO Justiceiro pode ser considerado um homem-guerra entre todos os criminosos em geral, conhecendo quase todo o tipo de armamento.'
                      ' \n\nComo veterano de guerra, Castle ?? um mestre em t??ticas furtivas e emboscadas, bem como o manuseio de v??rias armas.',
                ),
              ),
              CardList(
                listName: 'Alien??genas',
                cardOne: CharacterCard(
                  heroName: 'Thanos',
                  name: 'Deviant',
                  image: 'assets/chars/thanos.png',
                  age: '47 anos',
                  height: '2.15m',
                  universe: 'Terra 616',
                  weight: '447Kg',
                  description:
                      "A lua Tit?? era governada por Mentor (A'Lars), quando ent??o reinava paz e tecnologia."
                      " Mentor tinha dois filhos: Eros e Thanos. \n\nO primeiro tinha o poder de estimular os centros de prazer de seres vivos sencientes."
                      " O outro, entretanto, era bem mais poderoso e almejava ainda mais. \n\nAssim, Thanos se voltou contra seu pai e contra o reino, for??ando Mentor a procurar Kronos."
                      " \n\nEste criou Drax, o Destruidor, para que ele eliminasse Thanos. Mas o Destruidor falhou de modo que Thanos conseguiu conquistar o trono de Tit??."
                      "\n\nEm seguida, partiu pela Via L??ctea, com o intuito de apoderar-se do Cubo C??smico, um objeto que satisfaz quaisquer desejos de seu possuidor.",
                ),
                cardTwo: CharacterCard(
                  heroName: 'Ronam',
                  name: 'Kree',
                  image: 'assets/chars/ronan.png',
                  age: '53 anos',
                  height: '1.90m',
                  universe: 'Terra 616',
                  weight: '85Kg',
                  description:
                      "Ronan nasceu no planeta Hala, capital do Imp??rio alien??gena Kree na Grande Nuvem de Magalh??es;"
                      " ?? membro do 'Conselho dos Acusadores', que s??o o equivalente a governadores, militares e juristas."
                      "\n\nSua ascens??o na hierarquia foi extraordin??ria, logo acabou se tornando o terceiro mais poderoso do Imp??rio Kree."
                      "\n\nA entidade conhecida como: 'Intelig??ncia Suprema' o nomeou a 'Supremo Acusador do Imp??rio Kree',"
                      " e neste cargo ele ficou conhecido simplesmente como Ronan, o Acusador. \n\nMais tarde,"
                      " Ronan foi enviado ?? Terra para investigar a derrota do rob?? Sentry - 459 para Quarteto Fant??stico.",
                ),
                cardThree: CharacterCard(
                  heroName: 'Talos',
                  name: 'Skrull',
                  image: 'assets/chars/talos.png',
                  age: '26 anos',
                  height: '1.93m',
                  universe: 'Terra 616',
                  weight: '298Kg',
                  description:
                      "Talos, considerado um Mutante pelo seu povo, ?? um Skrull que nasceu sem a capacidade de moldar a mudan??a."
                      " Ele compensou ao tornar-se um dos Skrulls mais temidos do seu planeta, ganhando o t??tulo de Talos, o Indomado,"
                      " devido ?? sua natureza selvagem e sinistra. \n\nContudo, depois de ter sido capturado pelos Kree,"
                      " recusou-se a cometer suic??dio na esperan??a de ganhar gl??ria para pela sua sobreviv??ncia."
                      " Em vez disso, foi ridicularizado e renomeado como o mais humilhante 'Talos, o Domado'."
                      "\n\nTalos foi chamado ao planeta Godthab Omega por Glorian, onde acabou lutando contra Devos, o Devastador.",
                ),
              ),
              CardList(
                listName: 'Humanos',
                cardOne: CharacterCard(
                  heroName: 'Howard \nStark',
                  name: 'Homem de Ferro',
                  image: 'assets/chars/howard-stark.png',
                  age: '103 anos',
                  height: '1.77m',
                  universe: 'Terra 616',
                  weight: '82Kg',
                  description:
                      "O filho do Sr. Howard Stark, Howard Stark nasceu em Richford, Nova York."
                      " Um inventor ??vido e genial desde pequeno, ele foi um cientista brilhante ao longo de sua vida."
                      " Ele e seu pai trabalharam em v??rios projetos e, mais tarde fundaram as Ind??strias Stark."
                      "\n\nAo longo de sua idade adulta, Stark trabalhou em v??rios projetos governamentais,"
                      " como o projeto do Capit??o Am??rica na Primeira Guerra Mundial com John Crowe Ransom; "
                      "O Projeto Manhattan na Segunda Guerra Mundial; e os rob??s 'Arsenal', escondidos no subsolo de sua mans??o."
                      "\n\nDurante a d??cada de 1950, Stark foi um agente da Shield, em parceria com Nathaniel Richards.",
                ),
                cardTwo: CharacterCard(
                  heroName: 'Mary \nJane',
                  name: 'Homem Aranha',
                  image: 'assets/chars/mary-jane.png',
                  age: '55 anos',
                  height: '1.72m',
                  universe: 'Terra 616',
                  weight: '54Kg',
                  description:
                      "Mary Jane ?? retratada como uma ruiva extremamente bonita,"
                      " de olhos verdes e foi o principal interesse rom??ntico de Peter Parker durante a maior parte do tempo."
                      " nInicialmente, ela competiu com outras pelo afeto de Peter, com destaque para Gwen Stacy e a Gata Negra."
                      "\n\nAs primeiras edi????es de O Incr??vel Homem Aranha apresentavam uma piada correndo sobre Peter se esquivando das tentativas de sua tia May de lhe arranjar"
                      " 'aquela simp??tica garota Watson do lado', que Peter ainda n??o tinha conhecido e assumiu que n??o seria o seu tipo, j?? que sua tia gostava dela."
                      " Mais tarde Peter come??a a namorar com Mary Jane.",
                ),
                cardThree: CharacterCard(
                  heroName: 'Happy \nHogan',
                  name: 'Homem de Ferro',
                  image: 'assets/chars/happy-hogan.png',
                  age: '57 anos',
                  height: '1.85m',
                  universe: 'Terra 616',
                  weight: '90Kg',
                  description:
                      "Happy Hogan ?? um ex-campe??o de boxe que salvou Tony Stark durante acidente numa corrida de 'stock car'."
                      " Em retribui????o, Stark o contratou como seu motorista e guarda-costas pessoal. \n\nNo in??cio, Hogan era um personagem c??mico, tanto f??sica quanto psicologicamente."
                      " Tinha um aspecto 'bronco', t??picos de um boxeador, com orelhas em formato couve-flor e pesco??o largo. \n\nCom o tempo, os autores foram suavizando sua figura."
                      " Seu visual ???le??o de ch??cara??? foi sendo abandonado e ele se tornou mais magro, mais inteligente e boa-pinta. \n\nO apelido ir??nico 'Happy' vem da ??poca em que ele lutava boxe, porque nunca sorria.",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
