package test.java;

import main.java.com.tacitknowledge.exercise2.Exercise2;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static junit.framework.Assert.assertEquals;
import static junit.framework.Assert.assertNotNull;
import static junit.framework.Assert.assertNull;
import static junit.framework.Assert.assertTrue;

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
        Integer[] numbers = {1, 2, 3, 4, 5, 6};
        Integer target = 9;
        List<Integer> result = exercise.getNumbersAsSumOfTargetNumber(Arrays.asList(numbers), target);
        assertNotNull(result);
        assertEquals(2, result.size());
        assertTrue(result.get(0) + result.get(1) == target);
    }

    @Test
    public void shouldReturnNull()
    {
        List<Integer> numbers = new ArrayList<Integer>();
        assertNull(exercise.getNumbersAsSumOfTargetNumber(numbers, 1));
        numbers.add(0);
        assertNull(exercise.getNumbersAsSumOfTargetNumber(numbers, 1));
        numbers.add(0);
        assertNull(exercise.getNumbersAsSumOfTargetNumber(numbers, 1));
    }
}
