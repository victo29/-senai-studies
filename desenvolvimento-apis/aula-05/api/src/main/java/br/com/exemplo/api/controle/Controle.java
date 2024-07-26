package br.com.exemplo.api.controle;

import java.util.List;

import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.exemplo.api.modelo.Pessoa;
import br.com.exemplo.api.repositorio.Repositorio;

@RestController
public class Controle {

    @Autowired
    private Repositorio acao;

    @PostMapping("/api")
    public Pessoa cadastrar(@RequestBody Pessoa obj) {
        return acao.save(obj);
    }

    @GetMapping("/api")

    public List<Pessoa> selecionar() {
        return acao.findAll();
    }

    @GetMapping("")
    public String mensagem() {

        return "olá, mundo!";
    }

    @GetMapping("/boasVindas")
    public String boasVindas() {

        return "bem vindo!";
    }

    @GetMapping("/boasVindas/{nome}")
    public String boasVindas(@PathVariable String nome) {

        return "bem vindo " + nome;
    }

    @PostMapping("/pessoa")
    public Pessoa pessoa(@RequestBody Pessoa p) {
        return p;
    }
}
