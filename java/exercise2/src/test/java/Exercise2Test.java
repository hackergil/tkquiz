package test.java;

import main.java.com.tacitknowledge.exercise2.Exercise2;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;

import static junit.framework.Assert.assertNull;

/**
 * @author Gilberto Alvarado(galvarado@tacitknowledge.com)
 */
public class Exercise2Test
{

    Exercise2 exercise;

    @Before
    public void setup()
    {
        exercise = new Exercise2();
    }


    @Test
    public void shouldFindTwoNumbersOnArray()
    {

    }

    @Test
    public void shouldReturnNull()
    {
        assertNull(exercise.getNumbersAsSumOfTargetNumber(new ArrayList<Integer>(), 1));
    }
}
