
package com.domain.quiz;

import java.util.ArrayList;


public class Quiz {
    
    private static int testsCount = 0;
    private static double testsGradeSum = 0.0;
    private static double lastGrade = 0.0;
    public static ArrayList<Question> test;
    
    public static ArrayList<Question> getTest(){
        if(test == null){
            test = new ArrayList<Question>();
            DataBase db = new DataBase();
            db.InserirPegunta("Qual a família mais rica da série Game Of Thrones?", "Lannister", "Lannister","Tyrell","Stark");            
            db.InserirPegunta("Qual o símbolo da casa Stark?", "Um lobo", "Um lobo","Um dragão","Um leão");
            db.InserirPegunta("Qual o lema da casa Lannister?", "Ouça me rugir","Ouça me rugir","Todo Lannister paga sua divída","O inverno está chegando");
            db.InserirPegunta("Quantos julgamentos por combate o Tyrion teve?", "2","2","1","3");
            db.InserirPegunta("Quem é o pai biológico de Jon Snow?", "Rhaegar Targaryen","Rhaegar Targaryen","Aerys Targaryen","Ned Stark");
            db.InserirPegunta("Quem empurrou Bran Stark da torre?", "Jaime","Jaime","Cersei","Tyrion");
            db.InserirPegunta("Meu Sol e Estrelas / Lua da minha vida - De qual casal pertence essas falas?", "Daenerys e Drogo","Daenerys e Drogo","Jon Snow e Igritte","Joffrey e Sansa");
            db.InserirPegunta("Qual personagem fala a frase: Você não sabe de nada?", "Igritte","Igritte","Cersei","Sansa");
            db.InserirPegunta("Qual a religião que a personagem Arya está seguindo?", "Deus de muitas faces","Deus de muitas faces","Deus vermelho","Deus afogado");
            db.InserirPegunta("Quem foi o primeiro rei a morrer?", "Robert", "Robert","Joffrey","Renly");
            test = db.CarregarPerguntas();
        }else{
            test = new ArrayList<Question>();
            DataBase db = new DataBase();
            test = db.CarregarPerguntas();
        }
        return test;
    }
    
    public static double validateTest(String userAnswers[]){
        int count = 0;
        for(int i=0; i < 10; i++){
            if(test.get(i).getAnswer().equals(userAnswers[i])){
                count++;
            }
        }
        double grade = (double)count / (double)test.size();
        Quiz.lastGrade = grade;
        Quiz.testsGradeSum += grade;
        Quiz.testsCount++;
        return grade;
    }
    
    public static double getLastGrade(){
        return Quiz.lastGrade;
    }
    public static double getGradeAverage(){
        return Quiz.testsGradeSum / (double)Quiz.testsCount;
    }
    
    
    
    
}
