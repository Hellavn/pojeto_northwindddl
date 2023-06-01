# Projeto Orthwindddl
Realização de carga de dados e elaboração de consultas utilizando AWS Redshift, AWS S3 e um banco de dados Relacional.
![image](https://github.com/Hellavn/pojeto_northwindddl/assets/43830415/68623d9a-a939-4309-9868-55c940b13ae8)



# O que foi realizado:
## Preparação:
Os arquivos utilizados para elabaração das atividades setão disponveis nas pastas desse projeto.
Para a realização da atividade foi necessário seguir os passos listados abaixo:
- Criação de Cluster Redshift;
- Criação do banco de dados atraves do arquivo <i>scripts/criação _e_carga/northwindddl.sql</i>;
- Upload dos arquivos .csv encontrados na pasta <i>csv_carga/</i> para um bucket no AWS S3;
- Realização da cópia dos dados do AWS S3 para o datawarehouse no Redshift utilizando o script encontrado em <i>scripts/criação _e_carga/copy.sql</i>;
- Realização das sentenças encontradas em <i>scripts/consultas/consultas.sql</i>.

## Estrutura do banco de dados
O banco de dados relacional foi gerado conforme estrutura abaixo
![image](https://github.com/Hellavn/pojeto_northwindddl/assets/43830415/6fc193bf-eca3-45f8-85c9-112689003227)

## Consultas 
Abaixo consultas elaboradas, todas estão disponibilizadas em <i>scripts/consultas/consultas.sql</i>.
1. Gerar um relatório com os valores tabelados dos produtos e com os valores realmente executados nas vendas, exibindo a diferença entre esses valores e exibir a quantidade de produtos vendidos por venda.
2. Agrupar o valor das vendas dos vendedores no ano de 2022 para analisar o desempenho dos vendedores.
3. Selecionar os 10 produtos que têm os preços tabelados mais caros.
4. Mostrar a quantidade de vendas total por fornecedor nos anos de 2021 e 2020 e a diferença entre o total de vendas desses anos.
5. Selecionar as 5 categorias que mais venderam em cada ano.
