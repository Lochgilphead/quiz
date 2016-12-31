<?php
  $nbGoodAnswers = 0;
             $goodResults = resultMultipleChoice($quizId, $questionID);   //On trouve les bonnes réponses (answer_id)
             foreach ($goodResults as $gr){                 //Pour chaque bonne réponse (1 ou plusieurs)
                
             $nbAnswers = array();
             
             foreach ($results as $result => $questionid) { //Pour chacune de nos réponses
                    if($questionID == $questionid){         //(lorsque la question 'bonne réponse' est la même que la question répondue) 
                        $nbAnswers[] = $result;             //On stocke nos réponses dans une variable
                        
                        if($result == $gr['answer_id']){    //Si nos réponses correspondent à la (ou aux) bonne(s) réponse(s) de la question
                            $nbGoodAnswers++;               //On incrémente un compteur
                        } 
                    }
                }
            }
             $nbGoodResults = count($goodResults);          //On compte le nb de bonnes réponses 'absolues' existantes à chaque question
 
             //var_dump($nbGoodAnswers);
            if (isset($nbAnswers)) {                        //On détermine si on a répondu à une bonne question (si le nb de bonnes réponses répondues = nb de bonnes réponses 'absolues')                  
                 if (count($nbAnswers) == $nbGoodAnswers) { ////Si nb de nos bonnes réponse = nb de réponses auxquelles on a répondu (lorsqu'on coche une mauvaise réponse, toute la réponse est fausse) 
                     if ($nbGoodResults == $nbGoodAnswers) {    ////Si notre nb de bonnes réponses = nb de bonnes réponses 'absolues'
                        $nbCorrectQuestions++;                      ///On incrémente un compteur, c.a.d une bonne réponse                        
                     } else {
                         $quesResMcq[] = 'q'.$questionID;
                     }
                 }
            }