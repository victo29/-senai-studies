package br.com.exemplo.api.repositorio;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import br.com.exemplo.api.modelo.Pessoa;

public interface Repositorio extends CrudRepository<Pessoa, Integer> {
    List<Pessoa> findAll();
}
