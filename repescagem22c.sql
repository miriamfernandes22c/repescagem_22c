use repescagem_22c;
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200),
    data_contratacao DATE NOT NULL,
    horario_trabalho VARCHAR(50),
    status ENUM('Ativo', 'Inativo') DEFAULT 'Ativo',
    salario DECIMAL(10, 2),
    data_nascimento DATE,
    genero ENUM('Masculino', 'Feminino'),
    especializacoes_adicionais TEXT
);

INSERT INTO medicos(nome, especialidade, crm, telefone, email, endereco, data_contratacao, horario_trabalho, status, salario, data_nascimento, genero, especializacoes_adicionais),
SELECT nome, especialidade
FROM nome_especialidade;

SELECT médicos especialistas_cardiologia;


SELECT médicos contratados_depois_de2020;

SELECT dta_contratacao_dos_médicos('mais antigos para mais novos');

SELECT médico_especialisado_em('cirurgia');

SELECT ('email') resultados_em_ordem_alfabética;

SELECT ('horario de trabalho de tarde') médicos_que_trabalham_entre12h00, 20h00 ou, 11h00, 19h00;

SELECT ('final do número 8901') médicos_que_o_telefone_termina_em_8901;

SELECT ('salario entre') medicos_com_salario_entre_15000_e_16000;

SELECT ('salário de todos os médicos') salario_de_todos_os_médicos;




 