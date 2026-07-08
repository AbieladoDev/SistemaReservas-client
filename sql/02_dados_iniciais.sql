-- =====================================================================
--  DADOS INICIAIS (execute DEPOIS do 01_estrutura.sql)
--  Categorias, Setores e 10 recursos de exemplo (o "pacote do cliente").
--
--  OBS SOBRE OS USUÁRIOS/LOGIN:
--  Os usuários (admin e demo) são criados pelo script  web/instalar.php
--  (basta abrir http://localhost/reservas/instalar.php UMA vez).
--  Isso garante que a senha fique com o hash correto do PHP.
-- =====================================================================

USE reservas_db;

-- ---------- Categorias (Módulo 1) ----------
INSERT INTO categorias (nome, descricao) VALUES
  ('Laboratórios',    'Salas de laboratório da escola'),
  ('Projetores',      'Projetores e equipamentos de imagem'),
  ('Kits de Robótica','Kits e componentes para robótica'),
  ('Quadras',         'Espaços esportivos');

-- ---------- Setores (Módulo 2) ----------
INSERT INTO setores (nome, responsavel) VALUES
  ('TI',           'Carlos Souza'),
  ('Manutenção',   'Ana Lima'),
  ('Coordenação',  'Marcos Pereira');

-- ---------- Recursos (Módulo 3) - 10 itens de exemplo ----------
-- categoria_id: 1=Lab 2=Projetor 3=Robótica 4=Quadra
-- setor_id:     1=TI 2=Manutenção 3=Coordenação
INSERT INTO recursos (nome, descricao, foto, categoria_id, setor_id, ativo) VALUES
  ('Laboratório de Informática 1', 'Sala com 30 computadores e ar-condicionado.',      NULL, 1, 1, 1),
  ('Laboratório de Química',       'Bancadas, capela e materiais de análise.',         NULL, 1, 2, 1),
  ('Projetor Epson X05',           'Projetor Full HD com controle remoto.',            NULL, 2, 1, 1),
  ('Projetor Portátil BenQ',       'Projetor leve para salas menores.',                NULL, 2, 1, 1),
  ('Kit Arduino Uno',              'Kit completo com sensores e protoboard.',          NULL, 3, 1, 1),
  ('Kit LEGO Mindstorms',          'Kit de robótica educacional.',                     NULL, 3, 3, 1),
  ('Quadra Poliesportiva',         'Quadra coberta para futsal, vôlei e basquete.',    NULL, 4, 3, 1),
  ('Sala de Reuniões',             'Sala com mesa oval para 12 pessoas.',              NULL, 1, 3, 1),
  ('Notebook Dell Inspiron',       'Notebook para apresentações e aulas.',             NULL, 2, 1, 1),
  ('Caixa de Som Amplificada',     'Caixa de som portátil com microfone.',             NULL, 2, 2, 1);
