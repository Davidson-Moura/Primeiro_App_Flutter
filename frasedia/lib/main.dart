import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'Frases do dia',
    home: Home(),
  ));
}

class Home extends StatefulWidget{
  @override
  _HomeState  createState() => _HomeState();
}
class _HomeState extends State<Home>{
  var _frases = [
    "Ser mulher é enfrentar muitos desafios. Mas também é ser forte, guerreira e pronta para derrotar os dragões mais altos.",
    "Jamais se subestime. Você é forte e será capaz de lutar e conquistar o seu espaço.",
    "Falhar faz parte da caminhada, afinal, somos mulheres, mas não somos super-heroínas. Não desista!",
    "Quando você falha, a vida continua e você precisa aprender a se reerguer e começar de novo!",
    "Não se assuste com o sucesso, você é uma mulher que nasceu para brilhar.",
    "Então deixe que o medo te atrapalhe nas suas decisões. Você é maior que ele.",
    "Tente algo novo todos os dias e você descobrirá algo incrível que pode fazer por toda sua vida.",
    "Mulheres são capazes de fazer tudo, desde que elas estejam dispostas e motivadas.",
    "Nós sempre podemos aguentar mais, desde que essa seja a nossa vontade. Não carregue fardo dos outros, lide com os seus.",
    "Mulheres podem ser líderes, assumirem grandes cargos, irem para o espaço se quiserem. Mulheres podem absolutamente tudo!",
    "Sempre podemos mais do que pensamos desde que estejamos fazendo o que nos enche de paixão.",
    "Não importa onde você esteja, você só precisa se manter firme aos seus princípios e a tudo dará certo.",
    "A vida é um privilégio e, por mais difícil que seja, você será capaz de conquistar grandes coisas se souber driblar os desafios.",
    "O sucesso existe e está à espera de mulheres que se colocam no seu caminho.",
    "A melhor coisa que podemos fazer por nós mesmas é nos conhecermos.",
    "Dentro de você, mora uma mulher que sabe que é capaz. Escute o que ela diz!",
    "Conheça-se e seja sua porta-voz em todos os lugares que desejar estar.",
    "Somos mulheres poderosas e que não precisamos competir entre nós para vencer. Todas podemos vencer juntas!",
    "Acredite em você porque se você não fizer isso, ninguém mais poderá fazer.",
    "A vida da mulher só pertence a ela e você é forte para seguir o caminho que seu coração mandar.",
    "Descubra que você tem muitos motivos para agradecer e que um deles é por ser uma mulher incrível e poderosa.",
    "Quanto mais você celebra as suas conquistas, mais motivação você tem para lutar ainda mais.",
    "A sua arma mais poderosa é a sua versatilidade. Use-a para conquistar tudo o que deseja na vida.",
    "Seja decidida, seja poderosa, seja uma mulher que conquista o que quer porque sabe o que quer.",
    "Você é a roteirista da sua vida. Pegue a caneta e escreva melhor história que já existiu.",
    "Você é incrível em tudo o que faz, não deixe que as pessoas te façam pensar o contrário.",
    "A sua essência é ser uma mulher maravilhosa a sua própria maneira. Não tenha medo de ser você.",
    "Inspire-se em outras mulheres e aprenda com elas a como ser forte e conquistar seu próprio caminho.",
    "Todas as mulheres são fortes, elas só precisam se conhecer e concentrar suas forças no que querem.",
    "Você é dona do seu próprio destino, faça dele o que você quiser!",
    "Que nada nos limite. Que nada nos defina. Que nada nos sujeite. Que a liberdade seja a nossa própria substância.",
    "Não sou, nem devo ser a mulher maravilha, apenas uma pessoa vulnerável e forte, incapaz e gloriosa, assustada e audaciosa... Uma mulher.",
    "É a confiança em nossos corpos e mentes que nos permite buscar novas aventuras.",
    "Não podemos todos ser bem-sucedidos quando metade de nós está restringida.",
    "Liberdade é pouco. O que eu desejo ainda não tem nome.",
    "Eu quero ser tudo que sou capaz de me tornar.",
    "Recria tua vida, sempre, sempre. Remove pedras e planta roseiras e faz doces. Recomeça.",
    "Toda vez que uma mulher se defende, sem nem perceber que isso é possível, sem qualquer pretensão, ela defende todas as mulheres.",
    "Qual é a maior lição que uma mulher pode aprender? Que desde o primeiro dia, ela sempre teve tudo o que precisa dentro de si mesma. Foi o mundo que a convenceu que ela não tinha.",
    "Você pode encontrar muitas derrotas, mas você não pode se deixar derrotar.",
    "Uma mulher é como um saquinho de chá; você nunca sabe o quão forte é até que esteja em água quente.",
    "Aprendi com a primavera a deixar-me cortar e voltar sempre inteira.",
    "Descobri que, se você tem vontade de viver e curiosidade, dormir não é a coisa mais importante.",
    "Continue a ter iniciativas, nas horas decisivas a confiança faz diferença.",
    "O ato mais corajoso é pensar por você mesma. Em voz alta!",
    "Crie a melhor e mais grandiosa visão possível para sua vida, porque você se torna aquilo que acredita.",
    "Uma das lições que eu cresci aprendendo é ser sempre fiel a si mesmo e nunca deixar que alguém o desvie de seus objetivos.",
    "Pés, por quê os amaria, se eu tenho asas para voar?",
    "Na vida, você ganha o que você tem coragem de pedir."
  ];

  var _fraseGerada = "Clique para gerar uma frase";

  void _gerarFrase(){
    var n = Random().nextInt(_frases.length-1);
    setState(() {
      _fraseGerada = _frases[n];
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase do dia"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("imagens/1.png",width: 200,),
            Padding(padding: EdgeInsets.all(10),child: Text(_fraseGerada,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              )
            ),
            FloatingActionButton(onPressed: _gerarFrase,child: Text("Gerar"),backgroundColor: Colors.pinkAccent,),
          ],
        ),
      ),
    );
  }
}
