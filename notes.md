Anotações TDD com Ruby on Rails, RSpec e Capybara

- Pra que testar software?
	- Garantir a qualidade do software 
	- Segurança e facilidade de manutenção 
	- Melhor design de software
	- Documentação técnica

- Tipos de teste
	- Unitário (Método, classe)
	- Integração (Mais de um serviço)
	- Sistema (Teste do sistema completo, clica num botão e retorna determinado resultado)


- TDD (Test Drive Development)
	- Python, Ruby, C++, Perl,... utilizam o padrão xUnit

- Fluxo TDD 
	1. (RED) Escreve um teste que falhe
	2. (GREEN) Escreve um código pra passar no teste
	3. (Refactor) Elimine a redundânia

- Usar TDD sempre?
	- Não necesseriamente é sempre bom testar todo o projeto. Às vezes atrasa deploy, às vezes alguém muda o nome de um botão (teste de sistema)


- Rspec (Ruby)
	- spec (folder)
	- rspec (run tests)
	- Rspec adds ./liv to the $LOAD_PATH (Projetos com Ruby puro)
  - _spec (sufix)

- Doc RSpec
  - https://www.betterspecs.org/
  - https://rspec.info/

- Premissas
  - Testes devem ser confiáveis
  - Testes devem ser fáceis de escrever
  - Testes devem ser fáceis de entender hoje e no futuro
  - Não estamos focados em velocidade

- Teste em quatro fases (xUnit)
	- Setup: Quando você coloca o SUT (System Under Test, o objeto sendo testado) no estado necessário para o teste
	- Exercise: Quando você interage com o SUT
  - Verify: Quando você verifica o comportamento esperado
  - Teardown: Quando você coloca o sistema no estado em que ele estava antes do teste ser executado

- BDD (Behavior Driven Development)
	- Surge da dificuldade de ensinar TDD: "Por onde começar a testar, o que testar, como nomear os testes?"
	- A principal motivação do TDD não é testar o seu software, e sim especificá-lo com exemplos de como usar o seu código e deixar isso guiar o design de software (pensar em como o software vai ser usado internamente, a nível de código)
	- A suíte de testes automatizados gerada pelo TDD é "apenas" uma consequência do processo
	- O BDD começou como uma nova nomeclatura para o TDD, mas acabou se tornando uma nova abordagem de desenvolvimento de software. 

- Libs BDD
	- Cucumber (diversas linguagens)
	- BDD gem (Ruby)

- Documento guia do BDD

		Funcionalidades: <Título de uma linha descrevendo a funcionalidade>
			<Narrativa>
			Para <Benefício>
			Como um <Papel>
			Eu <Recurso/Funcionalidade>
		
		<Critérios - apresentados como cenário>

		Cenário: <Título do cenário 1>
			Dado <Parâmetro de entrada>
			E <Parâmetro de entrada 2>
			E <Parâmetro de entrada n>
			Quando <Evento que acontece em determinado momento>
			Então <Valor de saída>
			E <Valor de saída 2>
			E <Valor de saída n>

	- Exemplo

			Feature: Alerta de recebimento
				In order para comprar um produto indisponível no momento
				As a cliente do site
				I want ser notificado quando o produto voltar a ficar disponível
				Scenario: Receber notificação
					Given usuário está logado
					And usuário está cadastrado no site
					When usuário confirma o recebimento do alerta
					Then alerta é criado para envio de email

- Hooks
	- before (:suite) => Antes de toda a suite de testes
	- after (:suite) => Depois de toda a suite de testes

	- exemplo:
		config.before(:suite) do
			puts 'Antes de toda a suite de testes'
		end

		mais exemplos em
		- spec_helper.rb
		- atributos_spec.rb

- Helper methods
	
	- Helper methods arbitrário: uma função comum escrita dentro do teste. Essa função também pode ser escrita dentro de um módulo que deve ser importado no teste ou spec_helper (solução mais elegante)
	- let: Quando você precisa criar uma variável, ao invés de usar um bloco before para criar a var de instância, use let. Ao usar let, a variável é carregada somente quando ela é utilizada pela primeira vez no teste e fica em cache até o teste terminar
	- let!