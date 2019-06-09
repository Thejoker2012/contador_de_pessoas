import 'package:flutter/material.dart'; //import da biblioteca meterial design

void main() {
  //Função principal

  //usamos a função runApp para executar o código abaixo
  runApp(MaterialApp(
      //Usamos uma widget do tipo MaterialApp para que o App suporte widgets do tipo material Design
      title: "Contador de Pessoas",
      //Nome do parametro
      //home: Container(color: Colors.white,)//Conteiner para ser usado para colocar outros widgets

      home: Stack(
        // Permite colocar uma widget sobre o outro
        children: <Widget>[
          //filho do wisget Stack
          Image.asset(
            "images/restaurant.jpg", //Mapeamento da imagen
            fit: BoxFit.cover,
            //BoxFit.cover é usado para a imagen ocupar toda a tela
            height: 1000.0, //Tamanho ocupado
          ),
          Column(
            // Column permite que coloque varios widgets um em cima do outro na vertical

            mainAxisAlignment: MainAxisAlignment.center,
            //Alinha a coluna ao centro
            //Alinhamento do eixo principal
            children: <Widget>[
              //Lista de widgets (filhos da column)
              Text(
                //Texto a ser exibido na tela
                "Pessoas: 0",
                style: TextStyle(
                    //Formatação do Texto
                    color: Colors.white, //Cor do Texto
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //Alinha o conteudo das linhas ao centro
                //Linha usada para colocar dois botões na horizontal]
                children: <Widget>[
                  Padding(
                    //Formatação de espaçamento e tamanho das bordas
                    padding: EdgeInsets.all(10.0),
                    //Espaços a serem deixados nas laterais
                    child: FlatButton(
                      //Criando um botão
                      child: Text(
                        "+1", //Texto do Botão
                        style: TextStyle(
                            //Formatação do Botão
                            fontSize: 40.0,
                            color: Colors.white),
                      ),
                      //Função anonima
                      onPressed:
                          () {}, //colocar uma função para ser executada quando o botão for pressionado
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      //Criando um botão
                      child: Text(
                        "-1", //Texto do Botão
                        style: TextStyle(
                            //Formatação do Botão
                            fontSize: 40.0,
                            color: Colors.white),
                      ),
                      //Função anonima
                      onPressed:
                          () {}, //colocar uma função para ser executada quando o botão for pressionado
                    ),
                  ),
                ],
              ),
              Text(
                //Texto a ser exibido na tela
                "Pode Entrar!",
                style: TextStyle(
                    //Formatação do Texto
                    color: Colors.white, //Cor do Texto
                    fontStyle: FontStyle.italic, //Texto italico
                    fontSize: 30.0),
              )
            ],
          )
        ],
      )));
}
