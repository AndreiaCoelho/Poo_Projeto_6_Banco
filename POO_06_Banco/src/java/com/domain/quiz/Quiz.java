
package com.domain.quiz;

import java.util.ArrayList;


public class Quiz {
    
    private static int testsCount = 0;
    private static double testsGradeSum = 0.0;
    private static double lastGrade = 0.0;
    private static ArrayList<Question> test;
    
    public static ArrayList<Question> getTest(){
        if(test == null){
            test = new ArrayList<>();
            Question q1 = new Question
            ("Qual a família mais rica da série Game Of Thrones?", "Lannister", new String[]{"Lannister","Tyrell","Stark"});
            test.add(q1);
            Question q2 = new Question
            ("Qual o símbolo da casa Stark?", "Um lobo", new String[]{"Um lobo","Um dragão","Um leão"});
            test.add(q2);
            Question q3 = new Question
            ("Qual o lema da casa Lannister?", "Ouça me rugir", new String[]{"Ouça me rugir","Todo Lannister paga sua divída","O inverno está chegando"});
            test.add(q3);
            Question q4 = new Question
            ("Quantos julgamentos por combate o Tyrion teve?", "2", new String[]{"2","1","3"});
            test.add(q4);
            
            Question q5 = new Question
            ("Quem é o pai biológico de Jon Snow?", "Rhaegar Targaryen", new String[]{"Rhaegar Targaryen","Aerys Targaryen","Ned Stark"});
            test.add(q5);
            
            Question q6 = new Question
            ("Quem empurrou Bran Stark da torre?", "Jaime", new String[]{"Jaime","Cersei","Tyrion"});
            test.add(q6);
            
            Question q7 = new Question
            ("Meu Sol e Estrelas / Lua da minha vida - De qual casal pertence essas falas?", "Daenerys e Drogo", new String[]{"Daenerys e Drogo","Jon Snow e Igritte","Joffrey e Sansa"});
            test.add(q7);
            
            Question q8 = new Question
            ("Qual personagem fala a frase: Você não sabe de nada?", "Igritte", new String[]{"Igritte","Cersei","Sansa"});
            test.add(q8);
            
            Question q9 = new Question
            ("Qual a religião que a personagem Arya está seguindo?", "Deus de muitas faces", new String[]{"Deus de muitas faces","Deus vermelho","Deus afogado"});
            test.add(q9);
            
            Question q10 = new Question
            ("Quem foi o primeiro rei a morrer?", "Robert", new String[]{"Robert","Joffrey","Renly"});
            test.add(q10);
                                
        }
        return test;
    }
    
    public static double validateTest(String userAnswers[]){
        int count = 0;
        for(int i=0; i<test.size(); i++){
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
