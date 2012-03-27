package main.java.com.tacitknowledge.exercise2;

import java.util.ArrayList;
import java.util.List;

/**
* Write a program that takes a list of integers and a target number and determines
* if any two integers in the list sum to the target number. If so, return the two numbers.
* If not, return null.
 *
 * @author Gilberto Alvarado(galvarado@tacitknowledge.com)
 */
public class Exercise2
{

    public List<Integer> getNumbersAsSumOfTargetNumber(List<Integer> numbersList, Integer targetNumber) {
        List<Integer> resultList = null;
        if(numbersList != null && numbersList.size() > 2)
        {
            for (int i=0; i<numbersList.size() - 1; i++)
            {
                for(int j = i + 1; j< numbersList.size(); j++)
                {
                    Integer n1 = numbersList.get(i);
                    Integer n2 = numbersList.get(j);
                    if (n1 + n2 == targetNumber)
                    {
                        resultList = new ArrayList<Integer>();
                        resultList.add(n1);
                        resultList.add(n2);
                        return resultList;
                    }
                }
            }
        }
        return resultList;
    }
}
