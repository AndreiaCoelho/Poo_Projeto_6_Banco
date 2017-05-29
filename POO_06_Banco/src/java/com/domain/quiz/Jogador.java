package com.domain.quiz;


public class Jogador {
    private String Jogador;
    private String Pontos;

    public Jogador(String Jogador, String Pontos) {
        this.Jogador = Jogador;
        this.Pontos = Pontos;
    }

    public String getPontos() {
        return Pontos;
    }

    public void setPontos(String Pontos) {
        this.Pontos = Pontos;
    }

    public String getJogador() {
        return Jogador;
    }

    public Jogador(String Jogador) {
        this.Jogador = Jogador;
    }

    public void setJogador(String Jogador) {
        this.Jogador = Jogador;
    }
    
    
}
