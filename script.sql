--DROP TABLE historico;
--DROP TABLE turma;
--DROP TABLE professor;
--DROP TABLE disciplina;
--DROP TABLE aluno;

CREATE TABLE aluno(
  id_aluno INT NOT NULL,
  nome_aluno VARCHAR(100) NOT NULL,
  PRIMARY KEY(id_aluno)
);
	 
CREATE TABLE disciplina(
  id_disciplina INT NOT NULL,
  nome_disciplina VARCHAR(100) NOT NULL,
  carga_horaria INT,
  PRIMARY KEY(id_disciplina)
);
	 
CREATE TABLE professor(
  id_professor INT NOT NULL,
  nome_professor VARCHAR(100) NOT NULL,
  titulo_professor CHAR(3),
  PRIMARY KEY(id_professor)
);
	 
CREATE TABLE turma(
  id_turma INT NOT NULL,
  num_periodo INT NOT NULL,
  id_professor INT,
  id_disciplina INT,
  num_sala CHAR(4),
  PRIMARY KEY(id_turma),
  FOREIGN KEY(id_professor) REFERENCES professor(id_professor),
  FOREIGN KEY(id_disciplina) REFERENCES disciplina(id_disciplina)
);
	 
CREATE TABLE historico(
  id_historico INT NOT NULL,
  id_turma INT NOT NULL,
  id_aluno INT NOT NULL,
  num_faltas SMALLINT,
  media_final DECIMAL(3,1),
  PRIMARY KEY(id_historico),
  FOREIGN KEY(id_turma) REFERENCES turma(id_turma),
  FOREIGN KEY(id_aluno) REFERENCES aluno(id_aluno)
);
	 
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(1, 'JOSE');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(2, 'MARIA');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(3, 'BRUNO');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(4, 'CARLA');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(5, 'PEDRO');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(6, 'MATEUS');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(7, 'BIANCA');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(8, 'CARLOS');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(9, 'EDUARDA');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(10, 'FABRICIO');

INSERT INTO disciplina(id_disciplina, nome_disciplina, carga_horaria) VALUES(1, 'APC I', 60);
INSERT INTO disciplina(id_disciplina, nome_disciplina, carga_horaria) VALUES(2, 'BD I', 60);
INSERT INTO disciplina(id_disciplina, nome_disciplina, carga_horaria) VALUES(3, 'APC II', 60);
INSERT INTO disciplina(id_disciplina, nome_disciplina, carga_horaria) VALUES(4, 'BD II', 60);

INSERT INTO professor(id_professor, nome_professor, titulo_professor) VALUES(1, 'LETICIA', 'PHD');
INSERT INTO professor(id_professor, nome_professor, titulo_professor) VALUES(2, 'REGINALDO', 'MSC');
INSERT INTO professor(id_professor, nome_professor, titulo_professor) VALUES(3, 'DANIEL', 'BEL');
INSERT INTO professor(id_professor, nome_professor, titulo_professor) VALUES(4, 'FELIPE', 'MSC');

INSERT INTO turma(id_turma, num_periodo, id_professor, id_disciplina, num_sala) VALUES(1, 20221, 1, 2, 'JA1');
INSERT INTO turma(id_turma, num_periodo, id_professor, id_disciplina, num_sala) VALUES(2, 20222, 1, 4, 'JB1');
INSERT INTO turma(id_turma, num_periodo, id_professor, id_disciplina, num_sala) VALUES(3, 20221, 2, 1, 'JA2');
INSERT INTO turma(id_turma, num_periodo, id_professor, id_disciplina, num_sala) VALUES(4, 20222, 2, 2, 'JB3');
INSERT INTO turma(id_turma, num_periodo, id_professor, id_disciplina, num_sala) VALUES(5, 20222, 3, 1, 'JB6');
INSERT INTO turma(id_turma, num_periodo, id_professor, id_disciplina, num_sala) VALUES(6, 20222, 4, 3, 'JB8');

INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(1, 1, 1, 6, 4.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(2, 1, 2, 0, 6.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(3, 1, 3, 9, 5.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(4, 1, 4, 3, 3.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(5, 1, 5, 0, 6.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(6, 1, 6, 6, 4.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(7, 1, 7, 15, 4.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(8, 1, 8, 21, 1.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(9, 1, 9, 12, 5.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(10, 1, 10, 9, 7.5);

INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(11, 3, 1, 6, 4.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(12, 3, 2, 0, 6.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(13, 3, 3, 15, 5.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(14, 3, 4, 3, 3.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(15, 3, 5, 0, 6.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(16, 3, 6, 6, 4.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(17, 3, 7, 15, 4.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(18, 3, 8, 21, 1.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(19, 3, 9, 12, 5.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(20, 3, 10, 9, 7.5);

INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(21, 2, 2, 0, 5.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(22, 2, 3, 6, 8.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(23, 2, 5, 0, 2.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(24, 2, 9, 3, 6.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(25, 2, 10, 6, 8.5);

INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(26, 4, 1, 0, 5.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(27, 4, 4, 15, 3.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(28, 4, 6, 0, 6.5);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(29, 4, 7, 6, 5.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(30, 4, 8, 9, 4.0);

INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(31, 5, 1, 6, 5.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(32, 5, 4, 3, 2.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(33, 5, 6, 6, 4.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(34, 5, 7, 15, 4.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(35, 5, 8, 21, 1.0);

INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(36, 6, 2, 0, 6.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(37, 6, 3, 9, 5.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(38, 6, 5, 0, 6.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(39, 6, 9, 6, 5.0);
INSERT INTO historico(id_historico, id_turma, id_aluno, num_faltas, media_final) VALUES(40, 6, 10, 0, 7.5);
