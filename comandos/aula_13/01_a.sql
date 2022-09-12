CREATE TABLE tb_intervalo (
    id_ int PRIMARY KEY
        GENERATED BY DEFAULT AS IDENTITY,
    dt date)
    PARTITION BY RANGE (dt);

CREATE TABLE tb_intervalo (
    id_ int
        GENERATED BY DEFAULT AS IDENTITY,
    dt date,
    PRIMARY KEY (id_, dt))
    PARTITION BY RANGE (dt);

CREATE TABLE tb_intervalo_2019_01
PARTITION OF tb_intervalo
FOR VALUES FROM ('2019-01-01') TO ('2019-02-01');

CREATE TABLE tb_intervalo_2019_02
PARTITION OF tb_intervalo
FOR VALUES FROM ('2019-02-01') TO ('2019-03-01');

CREATE TABLE tb_intervalo_2019_03
PARTITION OF tb_intervalo
FOR VALUES FROM ('2019-03-01') TO ('2019-04-01');

CREATE TABLE tb_intervalo_2019_04
PARTITION OF tb_intervalo
FOR VALUES FROM ('2019-04-01') TO ('2019-05-01');

CREATE TABLE tb_intervalo_2019_05
PARTITION OF tb_intervalo
FOR VALUES FROM ('2019-05-01') TO ('2019-06-01');

CREATE TABLE tb_intervalo_2019_06
PARTITION OF tb_intervalo
FOR VALUES FROM ('2019-06-01') TO ('2019-07-01');

CREATE TABLE tb_intervalo_2019_07
PARTITION OF tb_intervalo
FOR VALUES FROM ('2019-07-01') TO ('2019-08-01');

CREATE TABLE tb_intervalo_2019_08
PARTITION OF tb_intervalo
FOR VALUES FROM ('2019-08-01') TO ('2019-09-01');

CREATE TABLE tb_intervalo_2019_09
PARTITION OF tb_intervalo
FOR VALUES FROM ('2019-09-01') TO ('2019-10-01');
