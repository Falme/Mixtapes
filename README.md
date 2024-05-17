
[README EN-US](https://github.com/Falme/Mixtapes/blob/main/README_EN-US.md) 👈

# MIXTAPES - Coleção de Jogos Curtos

MIXTAPES é um projeto feito em [Godot 4.2](https://godotengine.org/download/archive/) que agrupa 9 jogos curtos com a intenção de ser vendido a um preço curto.

## Atualmente trabalhando com:

- [ ] Melhorias na aparência visual


## Motivo?

Os desenvolvedores indies normalmente gastam meses ou talvez anos para lançar um jogo ao público, mesmo que seja evidente que criar jogos mais curtos seria melhor tanto para os desenvolvedores quanto para os jogadores.

As intenções do projeto são:

- Incentivar a produção de jogos mais curtos
- De Lançar e Vender um pacote com 9 jogos curtos
- Cada jogo curto com a duração de 10 a 15 minutos de duração
- Sem Demos, mas pode ser usado como publicidade pro desenvolvedor
- Venda por um preço curto, sendo acessível para todos.
- Colaborativo com outros desenvolvedores em um Mixtape para ajudar a divulgar os jogos.
- É uma resposta ás demissões em massa nas grande empresas de jogos
- Para lutar contra as empresas de jogos colonizadoras

MIXTAPES foram inspirados no Mixtape por [Alejandro Quan-Madrid's](https://www.youtube.com/watch?v=I1yBJD4yRss)  

Desenvolver e publicar jogos não precisa ser tão difícil; Nós podemos criar Mixtapes tematizados sobre qualquer coisa para qualquer pessoa.

## Como Começar?

Baixe a versão mais recente do Mixtapes na [Pagina de Releases](https://github.com/Falme/Mixtapes/releases/)

- Descomprima o arquivo "Mixtapes.zip" com zip, 7zip ou semelhante
- Rode "Mixtapes.exe" para abrir a coleção
- Selecione um dos jogos para abrir dentre a grid 3x3

Lá terá alguns projetos placeholder na coleção, para mudar para seus jogos por favor cheque a seção "Como Usar"


## Como Usar

### Para os Já Exportados (Sem Godot Engine)

Para começar a colocar seus jogos no Mixtapes, primeiro abra sua pasta descomprimida do Mixtapes e vá até a pasta "Games", lá você irá encontrar 9 pastas chamada:

- Game1
- Game2
- Game3
- Game4
- Game5
- Game6
- Game7
- Game8
- Game9

Essas são as pastas onde seus jogos deverão estar, no momento vamos usar a pasta "Game1" como exemplo.

Abra a pasta "Game1", delete o seu conteúdo todo exceto "mixtape_info.txt", esse txt tem a informação para carregar o seu jogo.

Copie os arquivos do seu jogo e cole em "Game1". Então atualize as informações do seu jogo em "mixtape_info.txt".

Vamos fazer um exemplo que o seu jogo se chame "Meu Proprio Jogo", que o desenvolvedor se chama "Lucas",  o arquivo de imagem do seu jogo se chama "backgroundBanner.png" e o arquivo EXE do seu jogo se chama "MeuProprioJogo.exe". Então o seu arquivo mixtape_info.txt deve ser algo como:

```
TITLE:Meu Proprio Jogo
AUTHOR:Lucas
ART:backgroundBanner.png
FILE:MeuProprioJogo.exe
```

Com essa informação, o Mixtapes consegue ler e abrir seu jogo quando selecionado.

Agora só abrir o Mixtapes.exe e seu jogo deverá ser selecionável e abrir normalmente.

**Não renomeie a pasta Game1** , Essa é uma pasta que é identificada no Nivel de Compilação da Engine.

#### Que Tipos de Jogos Eu Deveria Por Num Mixtape?

Qualquer tipo de jogo que você quiser, se for pra vender ou não, se você quiser compilar seus jogos favoritos nele, não tem limite para o que for fazer.

Mas o que eu, Falme, recomendaria é:

- Experiências pessoais e curtas
- Duração de 10 a 15 minutos, ou uma simples mecânica para um jogo infinito
- Não totalmente polido no código, Ninguém vai olhar o seu código ou ligar pra isso (bugs são legais também)
- Fazer em uma engine open-source, como Godot, para que o jogo seja totalmente seu.
- Jogos com um único tema, como Jogos Educacionais ou Shooter FPS ou Roguelikes
- Juntar 9 diferentes desenvolvedores para fazer 9 jogos, de Veteranos a Estudantes/Iniciantes
- Se for vender, tenha certeza que está trabalhando com alguém que confia ou tenha um contador
- Se o Mixtape não for o suficiente ou precisar mudar, Mude-o! Faça isso!
- Não Depender de algum server, fazendo que o jogo possa morrer (não-jogável) no futuro
- Sem demos, uma curta e poderosa experiência, se gostarem, eles vão se comunicar contigo

E por último, mas não menos importante, ajude a crescer a comunidade de jogos curtos, converse com pessoas, mostre seus jogos em eventos, você terá 9 jogos para mostrar para as pessoas, eles poderão escolher um ou nove pra jogar alí mesmo.

**Disclaimer** : No momento eu só programei para Windows, isso vai ser mudado no futuro.

Se você quiser alguns exemplos, aqui está uma lista de jogos curtos para se inspirar : https://itch.io/c/6160/small-is-beautiful
### Para Edição do Projeto (Com Godot Engine)

Antes de usar o repositório, verifique que você tem:

- [Godot Engine](https://godotengine.org/download/archive/)

Para usar o projeto você vai precisar clonar ele na sua maquina e abrir com Godot Engine v4.2.

#### Como é Estruturado?

Ao abrir o projeto você vai encontrar duas cenas:

- Splash
	- Essa é a tela de Splash Screen, não tem nada de importante aqui além da Splash Screen com o Logo e Texto do Mixtapes, e uma transição para a tela de Collections.
- Collections
	- Aqui é onde encontrará os Manifestos e as Fitas (Jogos). Terá uma grid 3x3 de Fitas e cada uma tem um script que carrega do arquivo "mixtape_info.txt" e sua chamada para uma pasta (como Game1, Game2, Game3...) no inspetor.

Visualmente isso é bem editável, se você algum dia já mexeu com Godot engine, então você conseguirá modificar o quanto quiser, ele não é complexo em sua estrutura.

Icones e imagens são feitos e exportados como SVG usando Inkscape, você pode mudar cores, layers, aparência e depois de salvar no Godot ele irá atualizar as alterações automaticamente.

#### Exportando

Para exportar o projeto tenha certeza que a Grid de Fitas na cena Collections está apontando para uma pasta que existe (por padrão é Game1, Game2, Game3...). Selecione para exportar para Windows usando as configurações de exportação do Godot e você terá um arquivo chamado "Mixtapes.exe".

Depois disso, na mesma pasta do Mixtapes.exe, crie essa estrutura de pastas:

- Mixtapes.exe
- Games
	- Game1
		- mixtape_info.txt
	- Game2
		- mixtape_info.txt
	- Game3
		- mixtape_info.txt
	- Game4
		- mixtape_info.txt
	- Game5
		- mixtape_info.txt
	- Game6
		- mixtape_info.txt
	- Game7
		- mixtape_info.txt
	- Game8
		- mixtape_info.txt
	- Game9
		- mixtape_info.txt

As pastas de Game1 até Game9 precisam ter o mesmo nome estabelecido no campo do inspetor das Fitas no Godot. Se você precisar de um exemplo, só baixar o zip exportado na pagina de Releases do Github.

Só colocar seus jogos na pasta GameX e configurar suas informações em "mixtape_info.txt". Isso deve fazer o seu projeto funcionar como o esperado.

## Contribuindo

Essa é sessão de contribuição, e não estou só falando sobre contribuição para o Projeto Mixtapes e seu repositório, mas também num nível de comunidade.

Precisando falar comigo? 

- [Bluesky](https://bsky.app/profile/falme.bsky.social)

### Mixtapes Repositório e Posse

Para usar, copiar, modificar, vender, comprar, comer, ou qualquer outra coisa que queira fazer com o projeto, por favor primeiro checar o arquivo ["PUBLIC LICENSE.TXT"](https://github.com/Falme/Mixtapes/blob/main/PUBLIC%20LICENSE.txt) , isso é muito importante para a redistribuição do projeto Mixtapes.

### Fazendo o Seu Mixtapes

FAÇA SEU PROPRIO MIXTAPE.

Essa é a mensagem, e deveria ser o suficiente. Não estou falando de só copiar o arquivos exportado em zip e fazer seus jogos, mas também faça seu próprio Projeto Mixtape. Faça com que tenha 3 jogos, faça com que tenha 100 jogos, faça com uma aventura 3D em que você precisa resolver puzzles como foi feito em DreadXP. Faça seu próprio "Compilado dos Meus Jogos" como Cactusquid fez com Mondo Media, compilando em curtas experiências. Até uns bootlegs de jogos que você já fez como Devolver fez com o Devolver Bootleg. Eu não ligo pra o que você vai fazer com esse projeto, mas EU LIGO para que você tenha menos trabalho pra fazer jogos e mais sucesso pra vender eles.

Espero que você tenha muito sucesso, esse é meu objetivo.

### De N Desenvolvedores para N Desenvolvedores 

Esse projeto não era originalmente feito para ser uma compilação de um único desenvolvedor que juntou seus exe num Hub, você pode fazer isso, por favor faça. Mas tente fazer esses Mixtapes com muitos desenvolvedores, converse com pessoas no Bluesky ou em outras redes sociais e encontre desenvolvedores para trabalhar junto, compartilhar códigos, compartilhar features parecidas, fazer features parecidas e crescer como um grupo.

Real mesmo, você não é um empregado no Mixtape, você vai colaborar com outros desenvolvedores, se algo de ruim acontecer, só vai fazer jogos com outras pessoas, se der tudo certo, continue e faça dar mais certo ainda.

Muitos desenvolvedores juntos = mais chance de dar certo em geral.

### Sindicato

Uuuhhh, Eu falei a palavra proibida. 

Sério mesmo, se até a SEGA está tendo aceitação para que os trabalhadores de unam para condições melhores de trabalho, você deveria também. E você deveria trabalhar em outros projetos e conversar com outros trabalhadores sobre condições melhores de trabalho, falar sobre quantas horas você está preso no trabalho e quantas horas você está usando fazendo o que ama fazer. E isso também se aplica a quantas horas você passa trabalhando num jogo.

O tempo desenvolvendo jogos é um tempo que você deveria gastas com coisas melhores, o Mixtapes incentiva a trabalhar menos horas para jogos que tem menos de 30 minutos de duração. Desenvolvedores de jogos tem que fazer agora de 40 a 80hrs de duração num jogo que as pessoas estão viciadas em jogar e pagar por um preço absurdo, basicamente 10% do mês de um trabalhador e até 1/4 de um salário. É um ciclo infinito de um Ouroboros.

Para as empresas você é uma compra, um peão, mesmo se você trabalhar incrivelmente bem, [Eles Vão](https://layoffs.fyi/) [Te Demitir](https://publish.obsidian.md/vg-layoffs/Archive/2024) e você não pode fazer nada sobre isso. Com Sindicato você tem mais chances de um lugar de trabalho melhor e com melhores condições.

### CyberSegurança e Sugestões de Features

Eu sei que existe um problema no projeto e é um grande elefante rosa chamado Segurança.

Eu sei alguma coisa aqui e alí sobre Cybersegurança, e esse projeto tem 2 coisas para olhar:

1. Estou fazendo uma chamada do CMD para um arquivo EXE, isso é além de não seguro, então sempre cheque por:
	1. O que o arquivo "mixtape_info.txt" diz
	2. Se o Hub do Mixtapes tiver o mesmo Hash que o encontrado na Pagina de Releases do Github, isso garante que o projeto não foi modificado. Mas limita a dissipação do projeto.
	3. Cheque os aquivos no site [VirusTotal](https://www.virustotal.com/gui/) 
	4. Se encontrar alguma coisa ruim, dê um flag imediatamente ou Abra um problema em Open an Issue
2. Os jogos adicionados não estão protegidos, de uma forma encriptada, mas chamadas de executaveis externos sempre vão ter o problema de "Então, como eu chamo um exe externamente?", Eu chequei outros projetos como DreadXP e eles fazem a mesma coisa, seu jogo acaba sendo mais facil de viajar pela internet.

Sugestões sobre o projeto, por favor abra um Issue ou faça um Fork e me mande um Pull Request, eu vou olhar assim que puder.


### Copyright e o Uso de Assets

Não recomendo usar assets com copyright, isso vai te dar mais problemas que espera.

MAS eu sugiro que use bibliotecas livres de assets para usar no seu jogo, todo mundo sai ganhando com assets abertos. Aqui está algumas recomendações:

- https://gentleland.notion.site/e2a28a127cc3421295c9b41dd70dc29f?v=a7242f603ee948bab2f0d2e546d84dca
- https://www.vg-resource.com/
- https://game-icons.net/
- https://sfbgames.itch.io/chiptone
- https://lovmura.itch.io/black-hair-live2d-example
- https://opengameart.org/

Em geral, Gentleland fez uma ótima compilação de assets para jogos: https://gentleland.notion.site/Ultimate-Resource-Database-9f7f86e9ce5a408090eee1985182d951

Não se esqueça de nomear os criadores, mesmo que não precise.

### Bandeiras

Isso aqui é bem direto, se você quiser uma nova bandeira na transição, só fazer um pull request.

O arquivo JSON está em Mixtapes/Data/flagcolors.json

Só copi-cola as novas cores da bandeira em RGB.

### Lado Politico

Se você abriu o projeto, você sabe minha visão politica.

O mais importante é, se eu abrir um Mixtape modificado e isso estiver modificado, Eu vou saber sua visão política e eu vou te julgar por isso.

### Para os Não-Esquerdistas

Eu pensei nisso já, então eu fiz um video tutorial que explica passo a passo em como mudar as partes "woke" para algo pró-estado, aqui está o [link](https://www.youtube.com/watch?v=dQw4w9WgXcQ);

