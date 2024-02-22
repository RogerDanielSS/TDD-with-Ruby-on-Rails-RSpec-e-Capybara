Anotações TDD com Ruby on Rails, RSpec e Capybara

- Pra que testar software?
	Garantir a qualidade do software 
	Segurança e facilidade de manutenção 
	Melhor design de software
	Documentação técnica

- Tipos de teste
	Unitário (Método, classe)
	Integração (Mais de um serviço)
	Sistema (Teste do sistema completo, clica num botão e retorna determinado resultado)


- TDD (Test Drive Development)
	Python, Ruby, C++, Perl,... utilizam o padrão xUnit

- Fluxo TDD 
	1. (RED) Escreve um teste que falhe
	2. (GREEN) Escreve um código pra passar no teste
	3. (Refactor) Elimine a redundânia

- Usar TDD sempre?
	Não necesseriamente é sempre bom testar todo o projeto. Às vezes atrasa deploy, às vezes alguém muda o nome de um botão (teste de sistema)


- Rspec (Ruby)
	spec (folder_
	rspec (run tests)
	Rspec adds ./liv to the $LOAD_PATH (Projetos com Ruby puro)
  _spec (sufix)

- Doc RSpec
  https://www.betterspecs.org/
  https://rspec.info/