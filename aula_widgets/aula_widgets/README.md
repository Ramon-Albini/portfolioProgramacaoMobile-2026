#  Projeto Flutter - Aula de Widgets

Este projeto tem como objetivo demonstrar conceitos fundamentais do **Flutter**, com foco na construção de interfaces utilizando widgets e gerenciamento de estado.

---

##  Conteúdos Abordados

O código apresenta diversos conceitos importantes do desenvolvimento Flutter:

###  Estrutura Básica do App

* Uso de `MaterialApp`
* Definição de tema com `ThemeData`
* Configuração da tela principal (`home`)

---

###  Stateful vs Stateless

* `StatelessWidget`: não possui estado mutável (ex: `AulaWidgetApp`, `CustomCard`)
* `StatefulWidget`: possui estado que pode mudar (ex: `WidgetsPage`)

---

###  Gerenciamento de Estado

* Uso de `setState()` para atualizar a interface
* Controle de um contador (`_counter`)
* Funções:

  * Incrementar
  * Decrementar
  * Resetar

---

###  Layout com Widgets

* `Column` e `Row` para organização
* `Expanded` para responsividade
* `SizedBox` para espaçamento
* `Padding` para margens

---

###  Estilização

* Uso de `Container` com:

  * `BoxDecoration`
  * `borderRadius`
  * `boxShadow`
* Cores personalizadas

---

###  Exibição Dinâmica de Dados

* Exibição de:

  * Valor atual
  * Dobro
  * Triplo
  * Par ou Ímpar (`isEven`)

---

###  Widget Customizado

* Criação do `CustomCard`
* Reutilização de UI com parâmetros:

  * `titulo`
  * `icone`
  * `corDeFundo`

---

###  Botões e Interações

* `ElevatedButton.icon`
* `FloatingActionButton`
* Ações conectadas às funções do contador

---

##  Objetivo

Este projeto serve como base para:

* Aprender como construir interfaces no Flutter
* Entender o funcionamento de widgets
* Praticar gerenciamento de estado simples
* Criar componentes reutilizáveis

---

##  Observações

* Projeto didático e introdutório, feito somente para fins educacionais com acompanhamento do professor em sala de aula.

