class user {

notify {"Configurando usuários:": }

user { "jas":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '500',
gid => '100',
comment => 'James de Assis Silva',
home => '/home/jas',
password => 'e2NyeXB0fTUwN1o4dnIzcmJBaVE=',
}

user { "leon":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '501',
gid => '100',
comment => 'Leonardo Gregory Brunnet',
home => '/home/leon',
password => 'e2NyeXB0fWJJL0VhMThNN3JXZkk=',
}
 
user { "skoliveira":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '503',
gid => '100',
comment => 'Samuel Oliveira',
home => '/home/skoliveira',
password => 'e1NTSEF9ZHR1ZElvQUZMeE94MUJTTXRVOWVXR1JBWE5ITmtnOVk=',
}
 
user { "melo":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '504',
gid => '100',
comment => 'Ricardo Melo Ferreira, 129442, M203',
home => '/home/melo',
password => 'e2NyeXB0fTJoemZPRlhMWHIyVC4=',
}
 
user { "rizzato":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '505',
gid => '100',
comment => 'Felipe Barbedo Rizzato, Prof, N211',
home => '/home/rizzato',
password => 'e1NTSEF9TW9Hc3VYeXVOWjh2UUs1QnJxa1E5bGt4UmFyRHhreVc=',
}
 
user { "magusmao":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '506',
gid => '100',
comment => 'Miguel Gusmao, Prof, N213',
home => '/home/magusmao',
password => 'e2NyeXB0fUYxNEFlL3JMUjVJNWs=',
}
 
user { "esalcedo":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '637',
gid => '100',
comment => 'Evy Augusto Salcedo Torres',
home => '/home/esalcedo',
password => 'e2NyeXB0fTBDQ2NNMTVrc1BlQXc=',
}
 
user { "arenzon":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '508',
gid => '100',
comment => 'Jeferson Jacob Arenzon',
home => '/home/arenzon',
password => 'e1NTSEF9OWpTMTR4K0RkUHdLUmRCeC9EYTdySFEwOWhxdzRlNks=',
}
 
user { "caca":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '509',
gid => '100',
comment => 'Carolina Brito',
home => '/home/caca',
password => 'e2NyeXB0fTVGUzNGSmRndXEyQWs=',
}
 
user { "barbosa":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '510',
gid => '100',
comment => 'Marcia C Barbosa',
home => '/home/barbosa',
password => 'e2NyeXB0fTYxeUp1U0NPNzJTYVE=',
}
 
user { "idiart":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '511',
gid => '100',
comment => 'Marco Aurelio Idiart',
home => '/home/idiart',
password => 'e1NTSEF9UEkzT3hDRnhQK2RpWHk2NmozZEZqNHNvNDROK2FUQ3c=',
}
 
user { "glt":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '512',
gid => '100',
comment => 'Gilberto Lima Tomas',
home => '/home/glt',
password => 'e2NyeXB0fUxLSHFPOFhtMm1WOVk=',
}
 
user { "tmarcelo":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '513',
gid => '100',
comment => 'T Marcelo',
home => '/home/tmarcelo',
password => 'e1NTSEF9YnBhY1VjMXJUVFR3c2hNREtMcjZ3WDRHQjZZNm1TVi8=',
}
 
user { "oliveira":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '514',
gid => '100',
comment => 'Alan Barros de Oliveira',
home => '/home/oliveira',
password => 'e1NTSEF9bmNzK3JwRVhqZGZzR2pTMmNpNkJIMlRQK3p4Rlh0MC8=',
}
 
user { "ziebell":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '515',
gid => '100',
comment => 'Luis Fernando Ziebell',
home => '/home/ziebell',
password => 'e2NyeXB0fVV3UUNNdHMzbkY4eVU=',
}
 
user { "rubem":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '516',
gid => '100',
comment => 'Rubem Erichsen Junior',
home => '/home/rubem',
password => 'e2NyeXB0fS5VQ0pZc01SbzZld00=',
}
 
user { "julio":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '517',
gid => '100',
comment => 'Julio',
home => '/home/julio',
password => 'e1NTSEF9YTlHUG94VTBzdEdIK3hidzVyRzNVcW1rdXY4WUhhREU=',
}
 
user { "srisau":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '518',
gid => '100',
comment => 'srisau',
home => '/home/srisau',
password => 'e1NTSEF9ZGdnS0RXcXlEUERjSjY4RkVVKzVra1RPOFhBM0xyZ3Q=',
}
 
user { "matemich":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '519',
gid => '100',
comment => 'matemich',
home => '/home/matemich',
password => 'e1NTSEF9UUovVDhlSlVUNU56cEtrUUc4em55VllFbTEvaSthLys=',
}
 
user { "nicolao":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '520',
gid => '100',
comment => 'Lucas Nicolao',
home => '/home/nicolao',
password => 'e2NyeXB0fS5yL3FVZE50WjlYZ28=',
}
 
user { "linelb":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '521',
gid => '100',
comment => 'Aline Lopes Balladares',
home => '/home/linelb',
password => 'e1NTSEF9MzVLL2p4YmQzbE41eUdubkRjM09Id2ZLV2tjaVF5U0k=',
}
 
user { "joqa":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '522',
gid => '100',
comment => 'Joacir',
home => '/home/joqa',
password => 'e1NTSEF9MDM0QkV4RkMxK2tXdDJPRGpJMmREZ0lrNFFmdHNOcFI=',
}
 
user { "adriana":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '523',
gid => '100',
comment => 'Adriana',
home => '/home/adriana',
password => 'e1NTSEF9em1CeU1oSGtNL3BzRU51VjB3RHRMYzU1MDRyTmlXaWQ=',
}
 
user { "diehl":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '524',
gid => '100',
comment => 'Alexandre Diehl',
home => '/home/diehl',
password => 'e1NTSEF9dE5RdjBOQlBBWHJtSmZIOVlUL3dKNmdtbjJ2djBOcjg=',
}
 
user { "henrique":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '525',
gid => '100',
comment => 'Henrique Marks',
home => '/home/henrique',
password => 'e1NTSEF9VGpWS1hya2dXM09kN2pJY1V6OTRId092c1UxNTBkNE8=',
}
 
user { "colla":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '526',
gid => '100',
comment => 'Thiago Escobar Colla',
home => '/home/colla',
password => 'e1NTSEF9N1RQUjZlWTVuc1QwenpBOHRaN3pWMVpBU1VCb1VwbDk=',
}
 
user { "rita":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '527',
gid => '100',
comment => 'Rita Maria Cunha de Almeida',
home => '/home/rita',
password => 'e1NTSEF9Z1A0S01vZjNIVTNJMzRUNnB0SEZFZHovNlBSclM3em4=',
}
 
user { "heitor":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '528',
gid => '100',
comment => 'Heitor Carpes Marques Fernandes',
home => '/home/heitor',
password => 'e2NyeXB0fWI1SEQ2Yml0c0luNWM=',
}
 
user { "calovi":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '529',
gid => '100',
comment => 'Daniel Calovi',
home => '/home/calovi',
password => 'e2NyeXB0fTdrdnl0R0JlZ2NSc1E=',
}
 
user { "raul":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '530',
gid => '100',
comment => 'Raul Carlos Fadanelli Filho',
home => '/home/raul',
password => 'e1NTSEF9dE9vK2tnb3QyQVpxaG0wTndzSllGZUNpSEk2UG16akI=',
}
 
user { "gio":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '531',
gid => '100',
comment => 'Glaucius Iahnke de Oliveira',
home => '/home/gio',
password => 'e1NTSEF9ZWQvUi9VYnl2dVpJVTNlRElZendVd1RrcmNRWUhGRVg=',
}
 
user { "aluisio":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '532',
gid => '100',
comment => 'Aluisio de Andrade',
home => '/home/aluisio',
password => 'e1NTSEF9UDhxeGZJOGVkMzU3UHZvaTF4cnh1U0c0K0I1Z3djZDM=',
}
 
user { "wsjr":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '533',
gid => '100',
comment => 'Wilson Simeoni Jr',
home => '/home/wsjr',
password => 'e2NyeXB0fXZtQ3Q0TUV5MlRFSWM=',
}
 
user { "pakter":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '534',
gid => '100',
comment => 'Renato Pakter',
home => '/home/pakter',
password => 'e1NTSEF9KzJ1LzIwMTN0SllCak8rREVUQ3loQlBpckF5aFRwaTY=',
}
 
user { "cbonatto":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '535',
gid => '100',
comment => 'C Bonatto',
home => '/home/cbonatto',
password => 'e1NTSEF9Z2F1a1NyRDJjM25FcjA5Z1dZWUVPNG1zSXNYQUhOYXY=',
}
 
user { "agderivi":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '536',
gid => '100',
comment => 'Alexandre Derivi',
home => '/home/agderivi',
password => 'e1NTSEF9SURuMFRiVnVmdEJ4RkZFZnRuNSt5encyUU5vV2V2TWs=',
}
 
user { "mpinto":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '537',
gid => '100',
comment => 'Mauricio Pinto',
home => '/home/mpinto',
password => 'e1NTSEF9VXNuZ0NWcGJmMzBRckErYUI1dkkwaGNIZXkwNUtsSjQ=',
}
 
user { "abonatto":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '538',
gid => '100',
comment => 'Alexandre Bonatto',
home => '/home/abonatto',
password => 'e1NTSEF9MzBaVGpPcGw1eU8vUjM2UzdnbmV2Q1M3WlJ6S3BQZEg=',
}
 
user { "sebas":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '539',
gid => '100',
comment => 'Sebastian Goncalves',
home => '/home/sebas',
password => 'e1NTSEF9WHNSS2hKWnRzTzU1ZzJHUmVsb0lhSFlUclVXckNub1o=',
}
 
user { "rlink":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '540',
gid => '100',
comment => 'Rodrigo Link Federizzi',
home => '/home/rlink',
password => 'e1NTSEF9SEs5SlNoNkkyeXNGbTJSZEsrR3VHSlloVFNZL3BPSDg=',
}
 
user { "marfcg":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '541',
gid => '100',
comment => 'Marcelo Ferreira da Costa Gomes',
home => '/home/marfcg',
password => 'e2NyeXB0fUZrZUt6TjE2bS8zUkU=',
}
 
user { "thielo":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '542',
gid => '100',
comment => 'Marcelo Thielo',
home => '/home/thielo',
password => 'e1NTSEF9MkxROVczS1d3S3ZEWWl5R1dtVXEzT1A3Q3pKNmpBTWU=',
}
 
user { "fmetz":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '543',
gid => '100',
comment => 'Fernando Lucas Metz',
home => '/home/fmetz',
password => 'e1NTSEF9LzhGaUdSL3FIUjlRb2dCT0FVYWRua2VEb3JBYllGSkw=',
}
 
user { "aendler":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '544',
gid => '100',
comment => 'antonio endler',
home => '/home/aendler',
password => 'e1NTSEF9M3RMV0pFd3poYmR3d1BCY3pLNm1rUCs0ZzJMYjVjQTQ=',
}
 
user { "agenor":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '545',
gid => '100',
comment => 'Agenor Hentz da Silva Jr',
home => '/home/agenor',
password => 'e1NTSEF9ZzQyKzk5WldrM0ZPZ3I5OVNDOGw1dXFRRDZ2blJ4RlQ=',
}
 
user { "roncaratti":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '546',
gid => '100',
comment => 'luiz fernando roncaratti jr',
home => '/home/roncaratti',
password => 'e1NTSEF9TVdPMVZQT0tjdmFkS0dtdm80SnM4YlZFUVR6NXR3Rjg=',
}
 
user { "chris":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '547',
gid => '100',
comment => 'Christopher Thomas',
home => '/home/chris',
password => 'e1NTSEF9NUVVcXZtTmtWbnZuS0taTTBQbk1KdzFTMzhCZlFXZ04=',
}
 
user { "eneves":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '548',
gid => '100',
comment => 'Eduardo Barros Neves',
home => '/home/eneves',
password => 'e1NTSEF9ODNhU0xUYzBNd0kzWTR2dXBhMXZMVitnVm1uYlJoR28=',
}
 
user { "everton":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '549',
gid => '100',
comment => 'Everton Agnes',
home => '/home/everton',
password => 'e2NyeXB0fTg2c0lOaDBVb2FJcVU=',
}
 
user { "rejane":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '550',
gid => '100',
comment => 'Rejane',
home => '/home/rejane',
password => 'e1NTSEF9RnRDYXZlQ3ZHdGcwTS9RRTVFRzUwTmRCTUtrQ2FZSy8=',
}
 
user { "mpoloureiro":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '551',
gid => '100',
comment => 'Marcos Paulo',
home => '/home/mpoloureiro',
password => 'e1NTSEF9ZGNtbHB3QTI1TWRCU0hUMWFWb2NYWXkvQkRzQ1UvL24=',
}
 
user { "rogerpn":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '552',
gid => '100',
comment => 'Roger Pizzato Nunes',
home => '/home/rogerpn',
password => 'e1NTSEF9R0J0enhaVk5OeFlDS2tsRytBdVhiYWt0TzNKYUdKbGg=',
}
 
user { "cmoura":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '553',
gid => '100',
comment => 'Cassio Stein Moura',
home => '/home/cmoura',
password => 'e1NTSEF9K3RHWEZ0MjA1UW0xbkdpdWdQSEFuREQ5cFBGeVN1Y2Q=',
}
 
user { "billoni":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '554',
gid => '100',
comment => 'Orlando Vito Billoni',
home => '/home/billoni',
password => 'e1NTSEF9cXJZMnF1aXBhV01EV0cvS3RWVERHUVd6Y2xtYnBhWVI=',
}
 
user { "zerocool":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '555',
gid => '100',
comment => 'Jose Luiz Rybarczyk Filho',
home => '/home/zerocool',
password => 'e2NyeXB0fUtKb0h5LjMzZlAuYkk=',
}
 
user { "tarcisio":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '556',
gid => '100',
comment => 'Tarcisio Nunes Teles',
home => '/home/tarcisio',
password => 'e1NTSEF9b2tETThQN2hQYmhreEtCNy9xTjJpZ2gzVjdsVjVGQk0=',
}
 
user { "bonacina":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '557',
gid => '100',
comment => 'Tiago Luis Bonacina',
home => '/home/bonacina',
password => 'e1NTSEF9RGlOeUE3SVg3YmFxeE1ac3hMZ2ttWVR3VnppTE9jWG8=',
}
 
user { "italo":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '558',
gid => '100',
comment => 'italo gabriel neide',
home => '/home/italo',
password => 'e2NyeXB0fThKQ0ZmSEh5SC5Oc00=',
}
 
user { "ismael":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '559',
gid => '100',
comment => 'Ismael Fortuna',
home => '/home/ismael',
password => 'e2NyeXB0fXQvQUI5cDRGeWZ6eWs=',
}
 
user { "carine":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '560',
gid => '100',
comment => 'carine beatrici',
home => '/home/carine',
password => 'e2NyeXB0fVM3MW9wc2E0c3NieTI=',
}
 
user { "avill":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '561',
gid => '100',
comment => 'Aline Villavicencio',
home => '/home/avill',
password => 'e1NTSEF9ZXV5RkNvb29zbFVrZkZKQVhoMFJ4blkyK0VnWnVyRXc=',
}
 
user { "lasalcedo":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '562',
gid => '100',
comment => 'Luiz Alberto Salcedo',
home => '/home/lasalcedo',
password => 'e1NTSEF9SVB5YUx2THdqQzQ3T0pTY0paR2lHYjUvblllM0J6OHk=',
}
 
user { "jonathas":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '563',
gid => '100',
comment => 'Jonathas Nunes da Silva',
home => '/home/jonathas',
password => 'e2NyeXB0fTZ1OHdySExxSzdKNlE=',
}
 
user { "szortyka":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '564',
gid => '100',
comment => 'Marcia Szortyka',
home => '/home/szortyka',
password => 'e2NyeXB0fS5XS2Q2bXQucUk1S1k=',
}
 
user { "tiberio":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '565',
gid => '100',
comment => 'Tiberio Borges Vale',
home => '/home/tiberio',
password => 'e1NTSEF9TVlZcFJEc0RnVnBZZUhZTm9CUHJxcXBqT2VrbWZ3dEo=',
}
 
user { "samoel":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '566',
gid => '100',
comment => 'Samoel Renan Mello da Silva',
home => '/home/samoel',
password => 'e2NyeXB0fUZ1L1BIU3JtVGo5bmM=',
}
 
user { "rgaelzer":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '567',
gid => '100',
comment => 'Rudi Gaelzer',
home => '/home/rgaelzer',
password => 'e1NTSEF9dk1qS09aRE5HRU0vd3RQZUFYMVFvM0VvUGZKSFB2eHk=',
}
 
user { "israel":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '568',
gid => '100',
comment => 'Israel',
home => '/home/israel',
password => 'e1NTSEF9bERJNnozNlYxMGsxK04rcXdYL3lHeWNSQlY4bkNucVM=',
}
 
user { "iglesias":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '569',
gid => '100',
comment => 'Jose Roberto Iglesias',
home => '/home/iglesias',
password => 'e1NTSEF9TCt0MXVrOHFoSlowNW1DNnI0RzdQT1lSRGtrMy9nN0k=',
}
 
user { "ney":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '570',
gid => '100',
comment => 'Ney Marcal',
home => '/home/ney',
password => 'e1NTSEF9aHpFKzhvMHU5RU1YMUFQMXk4MTBYSGltVmR3VVNiNGc=',
}
 
user { "edgar":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '571',
gid => '100',
comment => 'Edgar Santos',
home => '/home/edgar',
password => 'e1NTSEF9Qm45aWhWYkhMaEdkeXd2a25OWDNxTVhuTU0reXdUWE0=',
}
 
user { "alechand":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '572',
gid => '100',
comment => 'Alexandre Pereira dos Santos',
home => '/home/alechand',
password => 'e2NyeXB0fUpPV2hqTS9Dd2M1YnM=',
}
 
user { "poderoso":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '573',
gid => '100',
comment => 'fabio campos poderoso',
home => '/home/poderoso',
password => 'e1NTSEF9RWxNUUtiTDBJWnVKNUFUMllzcWRpWG1KYXZJNDBqZFo=',
}
 
user { "ricardo":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '574',
gid => '100',
comment => 'Ricardo Melo Ferreira',
home => '/home/ricardo',
password => 'e1NTSEF9UENMUERzN1FuaFFxYjhNL0NHQTNLWVQ0RmV2WWJRMzU=',
}
 
user { "fernanda":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '575',
gid => '100',
comment => 'Fernanda Benetti',
home => '/home/fernanda',
password => 'e2NyeXB0fWcyZndoMmgxSUdwTk0=',
}
 
user { "jpavan":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '576',
gid => '100',
comment => 'Joel Pavan',
home => '/home/jpavan',
password => 'e1NTSEF9UTF6SC9GbkRnTjJucG81eGM4RFEzSjhJSDdPNDBQSDc=',
}
 
user { "andrekuhn":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '577',
gid => '100',
comment => 'Andre Dalpian Kuhn',
home => '/home/andrekuhn',
password => 'e1NTSEF9VFBpb2N1OUdIaEp4UisrR3FkbWcwb3JNdUdITWIrSC8=',
}
 
user { "jupaukowski":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '578',
gid => '100',
comment => 'Juliana Zacharias Paukowski',
home => '/home/jupaukowski',
password => 'e1NTSEF9c04wOXpHTW1sbVdGV0dIL1dwY2lDTEVWMWErTUl6UFg=',
}
 
user { "cris":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '579',
gid => '100',
comment => 'Cristina Gavazzoni',
home => '/home/cris',
password => 'e1NTSEF9WURNZkdLc1ZjdHZkd3FyaUFaRlAvcnlVdFlzM1J1WWQ=',
}
 
user { "guilherme":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '580',
gid => '100',
comment => 'Guilherme Goncalves Ferrari',
home => '/home/guilherme',
password => 'e1NTSEF9RmtjNEMySjVlSHBVd0hNcjgyRjB0Y1pQN0ZxaEJpbEo=',
}
 
user { "egsouza":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '581',
gid => '100',
comment => 'Everton Granemann Souza',
home => '/home/egsouza',
password => 'e1NTSEF9NEVHeTlJZHlxN0hlV2N0V3paRWFrU1ZSYmpITmFCT0I=',
}
 
user { "willianr":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '582',
gid => '100',
comment => 'willian radunz',
home => '/home/willianr',
password => 'e1NTSEF9UmoyaU5TdVhWV053cmEwMlkyTUFZOXo1anp5cGY3MXA=',
}
 
user { "nep2n0":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '583',
gid => '100',
comment => 'Rogelio Diaz-Mendez,Lucas,Lucas Nicolao',
home => '/home/nep2n0',
password => 'e1NTSEF9WjlrSXp5WVNKTk91UGJTb0VsZVJRZUk3azJBd3JoVHI=',
}
 
user { "prado":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '584',
gid => '100',
comment => 'Sandra Prado',
home => '/home/prado',
password => 'e2NyeXB0fTAyRTN0ay5IT3d2eXc=',
}
 
user { "jocrisdias":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '585',
gid => '100',
comment => 'Josiane Cristina Dias',
home => '/home/jocrisdias',
password => 'e1NTSEF9OE9mZVlpQXlIc2llaXpGdHdRNHV6OWozQ1BhQi9Cdmw=',
}
 
user { "riffel":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '586',
gid => '100',
comment => 'Rogerio Riffel',
home => '/home/riffel',
password => 'e1NTSEF9M0tNaUtramZTZUUxUVlpYzlxVThLYzdTeGxwSWc0R1A=',
}
 
user { "alexp":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '587',
gid => '100',
comment => 'Alex Pedroso de Moraes',
home => '/home/alexp',
password => 'e1NTSEF9NHlpQ3c4emkyWVNKcE9ZM3VXU2JuRmd2MEg4L21kbzU=',
}
 
user { "beatriz":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '588',
gid => '100',
comment => 'Beatriz Eymi Pimentel Mizusaki',
home => '/home/beatriz',
password => 'e2NyeXB0fXQyLnZCcXlYZlRsbVE=',
}
 
user { "sandi":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '589',
gid => '100',
comment => 'Alessandra Lutz',
home => '/home/sandi',
password => 'e2NyeXB0fW9rU1QubEJoYUxCek0=',
}
 
user { "vanzella":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '590',
gid => '100',
comment => 'Melissa Vanzella',
home => '/home/vanzella',
password => 'e1NTSEF9OFVRcG84RG1zWDZrSFZtelNuS1c3QXg4M0NuWkNxTnk=',
}
 
user { "benhur":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '591',
gid => '100',
comment => 'Benhur Briao',
home => '/home/benhur',
password => 'e1NTSEF9bDRUWEljZCtqek9YVVRxa3lDQVFTK1ZZM0FLRDdzOWo=',
}
 
user { "bordin":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '592',
gid => '100',
comment => 'Jose Rafael Bordin',
home => '/home/bordin',
password => 'e2NyeXB0fXEwaHE2RkpzUEZKY1U=',
}
 
user { "azevedo":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '594',
gid => '100',
comment => 'Gustavo de Medeiros Azevedo',
home => '/home/azevedo',
password => 'e1NTSEF9YUlYR1dVcy93M0dRN25VbU1aNzlsY3NEdTNiTjRscy8=',
}
 
user { "quel":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '595',
gid => '100',
comment => 'Raquel Waechter',
home => '/home/quel',
password => 'e1NTSEF9ZnZGbjZ1ZWExS3A3UWdHbTBSWGVZWjJmWnBvN1FZWEo=',
}
 
user { "andressa":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '596',
gid => '100',
comment => 'Andressa Antonini Bertolazzo',
home => '/home/andressa',
password => 'e2NyeXB0fTdjTTdPQ0pQWXc3ZGM=',
}
 
user { "krott":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '597',
gid => '100',
comment => 'Leandro Krott',
home => '/home/krott',
password => 'e2NyeXB0fTIxWU5udHhwNlg2OG8=',
}
 
user { "perrone":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '598',
gid => '100',
comment => 'Gabriel Cury Perrone',
home => '/home/perrone',
password => 'e2NyeXB0fWM0S3VCRTk4MER3WTI=',
}
 
user { "tgarcia":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '599',
gid => '100',
comment => 'Thomas Garcia',
home => '/home/tgarcia',
password => 'e1NTSEF9a3Z2a0dNMFVxMWZrQ0RyT1h6bDFaRmpOcmFGekIwN2s=',
}
 
user { "lucianoborba":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '600',
gid => '100',
comment => 'lucianoborba',
home => '/home/lucianoborba',
password => 'e1NTSEF9UTZ6WERPL1lEYWkvMjBzczRibU42NzVQbjRvV1g1aTI=',
}
 
user { "rdasilva":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '602',
gid => '100',
comment => 'Roberto da Silva',
home => '/home/rdasilva',
password => 'e2NyeXB0fS9vZTFoM282RlQ4Sm8=',
}
 
user { "francovalduga":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '603',
gid => '100',
comment => 'Franco Valduga, 00129844, M206',
home => '/home/francovalduga',
password => 'e2NyeXB0fVBMTE4vV1o1c0h3b2c=',
}
 
user { "lbpiovesan":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '604',
gid => '100',
comment => 'Laura Bottin Piovesan, 182639, N211',
home => '/home/lbpiovesan',
password => 'e1NTSEF9VXc1NnZVZjBuNmxHMy94ZjV3S05QeXRvTjBodURkQ0Y=',
}
 
user { "mrsilva":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '605',
gid => '100',
comment => 'Marcos Rodrigo da Silva',
home => '/home/mrsilva',
password => 'e2NyeXB0fUxQRC5Pa055VWNqVFk=',
}
 
user { "rbarbosa":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '606',
gid => '100',
comment => 'Rafael de Carvalho Barbosa, 255144, M205',
home => '/home/rbarbosa',
password => 'e2NyeXB0fVVXNTdNUUdRR2t1VEU=',
}
 
user { "lauraprandi":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '607',
gid => '100',
comment => 'Laura Prandi',
home => '/home/lauraprandi',
password => 'e2NyeXB0fUlEajhyOEZkeXVhQjI=',
}
 
user { "jardel":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '609',
gid => '100',
comment => 'Jardel Cestari, M208',
home => '/home/jardel',
password => 'e2NyeXB0fW9GNE9xSk8yVFU5ZUk=',
}
 
user { "dfrydel":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '610',
gid => '100',
comment => 'Derek Frydel, Salas dos Post-docs predio N',
home => '/home/dfrydel',
password => 'e2NyeXB0fU04YnpIcVBCYkg0S2s=',
}
 
user { "zigue":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '611',
gid => '100',
comment => 'Gabriel Zigue, M216, 136489',
home => '/home/zigue',
password => 'e2NyeXB0fVFXVDl2TEwzTWdNV00=',
}
 
user { "zezo":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '612',
gid => '100',
comment => 'Jose Luiz Ferreira Jr, 151721, M208, Ramal 6504',
home => '/home/zezo',
password => 'e2NyeXB0fVk1OFQubWRnaW9aazY=',
}
 
user { "furlan":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '613',
gid => '100',
comment => 'Alexandre Penteado Furlan, M205',
home => '/home/furlan',
password => 'e2NyeXB0fUQ2bFRvTDJ0bnhUMFE=',
}
 
user { "tekkito":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '614',
gid => '100',
comment => 'Raphael Imbuzeiro, 209040, L205',
home => '/home/tekkito',
password => 'e2NyeXB0fTI1YTByVmk4TlRFRmM=',
}
 
user { "pablovalverde":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '615',
gid => '100',
comment => 'Pablo Valverde, 196321, N207',
home => '/home/pablovalverde',
password => 'e2NyeXB0fTFORlR5OEZOMjQ2Ync=',
}
 
user { "maximiliano":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '616',
gid => '100',
comment => 'Maximiliano Jesus Moreno Zapata, PG, Lab. Durao',
home => '/home/maximiliano',
password => 'e2NyeXB0fTIwcS5kbHJCNzBQOTY=',
}
 
user { "ambotelho":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '617',
gid => '100',
comment => 'Ataides Martins Botelho Neto, 00204825, M216',
home => '/home/ambotelho',
password => 'e2NyeXB0fTFxUDZRMmIvTllRYUE=',
}
 
user { "mendeli":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '618',
gid => '100',
comment => 'Mendeli Vainstein, 94554, N206 6474',
home => '/home/mendeli',
password => 'e2NyeXB0fXc0Zk5mbVNwTE56SHc=',
}
 
user { "creq":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '619',
gid => '100',
comment => 'Carlo Requiao, N114',
home => '/home/creq',
password => 'e2NyeXB0fTR2MmJGSFY1RUNiOGs=',
}
 
user { "nmallmann":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '620',
gid => '100',
comment => 'Nicolas Mallmann, 150253, Lab. Microeletronica',
home => '/home/nmallmann',
password => 'e2NyeXB0fURwVC5aLk51WjJpMy4=',
}
 
user { "anacarol":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '621',
gid => '100',
comment => 'Ana Carolina Ribeiro Teixeira, 80243020, N224',
home => '/home/anacarol',
password => 'e2NyeXB0fTRScHZrb2lMeXZaQWc=',
}
 
user { "doria":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '623',
gid => '100',
comment => 'Felipe Franca Doria, Aluno PG, Orientador Rubem Erichsen',
home => '/home/doria',
password => 'e2NyeXB0fVl1YzB4V2dRTUtET3c=',
}
 
user { "michou":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '624',
gid => '100',
comment => 'Charlotte Rulquin, N210',
home => '/home/michou',
password => 'e2NyeXB0fWdIa25RZVcwbkt5Y1U=',
}
 
user { "marcelo13":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '625',
gid => '100',
comment => 'Marcelo Castaneda, M202, 6496',
home => '/home/marcelo13',
password => 'e2NyeXB0fVFBbUQweUlwL0RnMmc=',
}
 
user { "thalestr":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '626',
gid => '100',
comment => 'Thales Marques Correa da Silva, 00159543, M206',
home => '/home/thalestr',
password => 'e2NyeXB0fTZRZDlLWDdUZXc5cVk=',
}
 
user { "daniel":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '627',
gid => '100',
comment => 'Daniel de Oliveira Berto,  171711,  34937580',
home => '/home/daniel',
password => 'e1NTSEF9TkFSeTJXNklXb1IyaWpXd25mWVlGNmtVc3pCYnRLMkM=',
}
 
user { "michou2":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '628',
gid => '100',
comment => 'Charlotte Rulquin, N214',
home => '/home/michou2',
password => 'e1NTSEF9UW94S1FBeFhXbEtidE9HcklHRXYySmwvM01WRm0yZk0=',
}
 
user { "alan":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '629',
gid => '100',
comment => 'Alan Barros de Oliveira',
home => '/home/alan',
password => 'e1NTSEF9OTNpUmYzcHpZcVM0WDhvRFBJNmc0eWxwVm9Pa0doOWo=',
}
 
user { "ruben.carvalho":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '630',
gid => '100',
comment => 'Rubens Carvalho, M207',
home => '/home/ruben.carvalho',
password => 'e1NTSEF9RkhBMVZuNy8xOFNDVk51c2JWOXVsaTF3ZVhDT3hvVVo=',
}
 
user { "rubens.carvalho":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '631',
gid => '100',
comment => 'Rubens Carvalho, M207',
home => '/home/rubens.carvalho',
password => 'e2NyeXB0fUsvc0xlR2s5VEhrVXM=',
}
 
user { "vquadros":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '632',
gid => '100',
comment => 'Vanessa Quadros, PG',
home => '/home/vquadros',
password => 'e2NyeXB0fVQ1WmhVbkovY2MvZW8=',
}
 
user { "cassiok":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '633',
gid => '100',
comment => 'Cassio, Bolsista Setor Informatica',
home => '/home/cassiok',
password => 'e2NyeXB0fWQzeWMxbUJBeUpmLms=',
}
 
user { "luna":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '634',
gid => '100',
comment => 'Emerson Luna, 00213406, casarosada310',
home => '/home/luna',
password => 'e2NyeXB0fUVoQWZnTUZwSTdpZS4=',
}
 
user { "broilo":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '635',
gid => '100',
comment => 'Mateus Broilo',
home => '/home/broilo',
password => 'e2NyeXB0fWVxb0lXaHdLeVROWmM=',
}
 
user { "mlsilvestrini":
ensure => present,
managehome => true,
shell => '/bin/bash',
uid => '636',
gid => '100',
comment => 'Marion Silvestrini, 208620',
home => '/home/mlsilvestrini',
password => 'e2NyeXB0fXl0bFRONEtiS1NheC4=',
}
}
