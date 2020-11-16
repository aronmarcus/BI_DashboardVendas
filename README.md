# Projeto de visualização de dados - Dashboard Comercial


![](https://github.com/aronmarcus/BI_DashboardVendas/blob/main/Desenvolvimento/Dashboard.png)


## Objetivo ##

 <p>Desenvolver estratégias para uma empresa fictícia que atua desde 2012, é uma rede de varejo que vende produtos eletrônicos e eletrodomésticos com lojas espalhadas por diversas cidades do Brasil, que busca tomar suas decisões sob a óptica da evolução dos seus dados de vendas. Sendo necessário organiza-los de forma a compreende-los com precisão e em tempo real, acompanhando as principais metas e podendo obter insights para ações futuras.</p>
 
## Estudo de Caso ##

 <p>A empresa está montando a estratégia de vendas para o próximo ano e precisa saber qual dos fabricantes dos produtos vendidos, apresenta melhor desempenho nas vendas. O objetivo é descartar os fabricantes cujos produtos possuem poucas vendas e tentar negociar melhores condições com os principais fabricantes. Em paralelo a isso, a empresa gostaria de ter diferentes visões das vendas realizadas nos últimos 4 anos (período de 2012 a 2015). Deve ser possível segmentar os relatórios de vendas por diferentes informações e por diferentes ângulos. Estas informações irão suportar as estratégias da empresa para o próximo ano.</p>

<p>Os dados foram extraídos de diferentes tabelas de um banco de dados transacional e como a empresa vai usar os relatórios todos os meses, alguns consultores recomendaram o uso
de um Data Warehouse. Aqui as colunas disponíveis nos arquivos txt:
 
 ![2020-11-16 (2)](https://user-images.githubusercontent.com/27938405/99299932-b5470500-282a-11eb-8291-da58d7f6e19f.png)


 <p>Haverá diversas reuniões para definição da estratégia de vendas e os relatórios poderão ser extraídos sob demanda, de acordo com a necessidade dos gestores. Por conta disso, é necessário criar um modelo de dados que permita a extração de relatórios a qualquer momento e que permita extrair dados por diferentes visões e ângulos. Os dados devem ser alimentados em um banco de dados consolidado, que será atualizado mensalmente com novos dados.</p>

## Motivação ##

  <p>Contribuir com um trabalho analítico extraindo informações e storytelling baseados em dados para insights e tomada de decisão bem como, uma forma de consolidar meus conhecimentos no campo da análise de dados e Business Intelligence desenvolvendo um projeto com o uso das ferramentas Microsoft PowerBI e PostgreSQL.</p>

## A Origem dos Dados ##

  <p>Base de dados em arquivos ".csv", tendo como fonte a plataforma de cursos da Data Science Academy (link nas referencias). Estes arquivos foram tratados no Sistema gerenciador de Banco de Dados PostgreSQL e guardados em um Datawarehouse. Feito conexão direta do PowerBI com o PostgreSQL. </p>

## Desenvolvimento ##

### Instalação das ferramentas ###
  
  - [PostgreSQL](https://www.postgresql.org/download/)
  - [Power BI Desktop](https://powerbi.microsoft.com/pt-br/desktop/)


  <p>Dashboard construído com base em um modelo/protótipo do site da Data Science Academy, seguindo estas etapas:</p>
  
  1. Download dos datasets ".csv". [Clique aqui](https://github.com/aronmarcus/BI_DashboardVendas/tree/main/Datasets_csv)
  
  2. Criação de um Banco de Dados no PostgreSQL
  
  ![](https://github.com/aronmarcus/BI_DashboardVendas/blob/main/Desenvolvimento/sql1.png)
  
  3. Importação dos arquivos .csv para o SGBD
  4. Implementação do Datawarehouse
  5. Tratamento de dados no SGBD
  
  ![](https://github.com/aronmarcus/BI_DashboardVendas/blob/main/Desenvolvimento/sql2.png)
  
  ![](https://github.com/aronmarcus/BI_DashboardVendas/blob/main/Desenvolvimento/relacionamentos.png)
  
  6. Conexão do PowerBI com o Postgres
  
  ![](https://github.com/aronmarcus/BI_DashboardVendas/blob/main/Desenvolvimento/conexao.png)
  
  7. Tratamento dos dados no Power Query
  8. Tratamento de erros e conjuntos nulos
  9. Criação de medidas, estruturas condicionais e cálculos com funções DAX e programação em linguagem M
  
  ![](https://github.com/aronmarcus/BI_DashboardVendas/blob/main/Desenvolvimento/DAX.png)
  
  10. Criação de dashboard interativos com os seguintes gráficos:
  
     * Barras clusterizadas
     * Colunas empilhadas
     * Cartões informativos
     * KPI (Indicador chave de perfomance)
     * Gráfico de área
     * Principais influenciadores
     
  11. Visualização
  12. Atualização

## Ferramentas ##

  - <p>Configurações do meu computador pessoal utilizado neste projeto:</p>

     - [x] <strong>Sistema Operacional:</strong> Windows 10 - 64 bits</p>
     - [x] <strong>Processador:</strong> Intel(R) Core(TM) i7-5500U CPU @ 2,40GHz 2,40GHz</p>
     - [x] <strong>Memória:</strong> 8,00 GB </p>
     - [x] <strong>HD:</strong> SSD 250 GB</p>

  - <p>Softwares.</p>
  
     - [x] <strong>Git:</strong> Utilizado para fazer o controle de versão do código gerado ao longo do projeto;</p>
     - [x] <strong>Github Desktop:</strong> Utilizado para fazer a interface do Git para controle de versão do código gerado ao longo do projeto;</p>
     - [x] <strong>Notepad++:</strong> Utilizado para geração e edição dos arquivos ".txt", ".md";</p>
     - [x] <strong>Microsoft PowerBI:</strong> Utilizado para tratamento de dados, visualização e criação do dashboard interativo.</p>
     - [x] <strong>PostgreSQL:</strong> SGBD utilizado para modelagem dos dados, implementação de DW, processo ETL e scripts SQL.</p>
  
  ## Referências ##
  
  - [Data Science Academy](https://www.datascienceacademy.com.br/)
  - [Microsoft Power BI para Data Science](https://www.datascienceacademy.com.br/course?courseid=microsoft-power-bi-para-data-science)
  
  ## Licença ##
  
  _MIT License Copyright (c) 2020 Aron Marcus_
 

