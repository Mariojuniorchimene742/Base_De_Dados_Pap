# Base de Dados PAP - Igreja

Esta versão já inclui as novas funcionalidades pedidas:

1. Notificações para o utilizador
2. Dízimos e Ofertas / Contribuições
3. Inscrição para servir em ministérios da igreja

## Como usar

### Se queres recriar a base de dados do zero
Executa o ficheiro:

`00_runall.sql`

Ele apaga e recria a base de dados `igreja_system` com todas as tabelas e dados de teste.

### Se já tens a base de dados criada e só queres acrescentar as novas tabelas
Executa apenas:

`99_migracao_novas_funcionalidades.sql`

Esse ficheiro cria as tabelas novas sem apagar as tabelas antigas.

## Tabelas novas

- `notificacoes`
- `contribuicoes`
- `ministerios_inscricoes`
