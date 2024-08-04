--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2024-07-23 11:54:03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3 (class 2615 OID 32956)
-- Name: hw_9; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA hw_9;


ALTER SCHEMA hw_9 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 212 (class 1259 OID 32982)
-- Name: depatments; Type: TABLE; Schema: hw_9; Owner: postgres
--

CREATE TABLE hw_9.depatments (
    dept_no character varying NOT NULL,
    dept_name character varying NOT NULL
);


ALTER TABLE hw_9.depatments OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 33012)
-- Name: dept_emp; Type: TABLE; Schema: hw_9; Owner: postgres
--

CREATE TABLE hw_9.dept_emp (
    emp_no integer NOT NULL,
    dept_no character varying(30) NOT NULL
);


ALTER TABLE hw_9.dept_emp OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 32999)
-- Name: dept_manager; Type: TABLE; Schema: hw_9; Owner: postgres
--

CREATE TABLE hw_9.dept_manager (
    dept_no character varying(30) NOT NULL,
    emp_no integer NOT NULL
);


ALTER TABLE hw_9.dept_manager OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 32957)
-- Name: employees; Type: TABLE; Schema: hw_9; Owner: postgres
--

CREATE TABLE hw_9.employees (
    emp_no integer NOT NULL,
    emp_title_id character varying(30) NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    sex character varying(10) NOT NULL,
    hire_date date NOT NULL
);


ALTER TABLE hw_9.employees OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 32972)
-- Name: salaries; Type: TABLE; Schema: hw_9; Owner: postgres
--

CREATE TABLE hw_9.salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL
);


ALTER TABLE hw_9.salaries OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 32960)
-- Name: titles; Type: TABLE; Schema: hw_9; Owner: postgres
--

CREATE TABLE hw_9.titles (
    title_id character varying(30) NOT NULL,
    title character varying(30) NOT NULL
);


ALTER TABLE hw_9.titles OWNER TO postgres;

--
-- TOC entry 3190 (class 2606 OID 32988)
-- Name: depatments depatments_pkey; Type: CONSTRAINT; Schema: hw_9; Owner: postgres
--

ALTER TABLE ONLY hw_9.depatments
    ADD CONSTRAINT depatments_pkey PRIMARY KEY (dept_no);


--
-- TOC entry 3192 (class 2606 OID 33003)
-- Name: dept_manager dept_manager_pkey; Type: CONSTRAINT; Schema: hw_9; Owner: postgres
--

ALTER TABLE ONLY hw_9.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 3184 (class 2606 OID 32966)
-- Name: employees emp_no; Type: CONSTRAINT; Schema: hw_9; Owner: postgres
--

ALTER TABLE ONLY hw_9.employees
    ADD CONSTRAINT emp_no PRIMARY KEY (emp_no);


--
-- TOC entry 3188 (class 2606 OID 32976)
-- Name: salaries salaries_pkey; Type: CONSTRAINT; Schema: hw_9; Owner: postgres
--

ALTER TABLE ONLY hw_9.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 3186 (class 2606 OID 32964)
-- Name: titles title_id; Type: CONSTRAINT; Schema: hw_9; Owner: postgres
--

ALTER TABLE ONLY hw_9.titles
    ADD CONSTRAINT title_id PRIMARY KEY (title_id);


--
-- TOC entry 3196 (class 2606 OID 33015)
-- Name: dept_emp dept_emp_dept_no_fkey; Type: FK CONSTRAINT; Schema: hw_9; Owner: postgres
--

ALTER TABLE ONLY hw_9.dept_emp
    ADD CONSTRAINT dept_emp_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES hw_9.depatments(dept_no);


--
-- TOC entry 3197 (class 2606 OID 33020)
-- Name: dept_emp dept_emp_emp_no_fkey; Type: FK CONSTRAINT; Schema: hw_9; Owner: postgres
--

ALTER TABLE ONLY hw_9.dept_emp
    ADD CONSTRAINT dept_emp_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES hw_9.employees(emp_no);


--
-- TOC entry 3195 (class 2606 OID 33004)
-- Name: dept_manager dept_manager_emp_no_fkey; Type: FK CONSTRAINT; Schema: hw_9; Owner: postgres
--

ALTER TABLE ONLY hw_9.dept_manager
    ADD CONSTRAINT dept_manager_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES hw_9.employees(emp_no);


--
-- TOC entry 3193 (class 2606 OID 32967)
-- Name: employees fk_title_id; Type: FK CONSTRAINT; Schema: hw_9; Owner: postgres
--

ALTER TABLE ONLY hw_9.employees
    ADD CONSTRAINT fk_title_id FOREIGN KEY (emp_title_id) REFERENCES hw_9.titles(title_id);


--
-- TOC entry 3194 (class 2606 OID 32977)
-- Name: salaries salaries_emp_no_fkey; Type: FK CONSTRAINT; Schema: hw_9; Owner: postgres
--

ALTER TABLE ONLY hw_9.salaries
    ADD CONSTRAINT salaries_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES hw_9.employees(emp_no);


-- Completed on 2024-07-23 11:54:03

--
-- PostgreSQL database dump complete
--

