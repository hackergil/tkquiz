package test.java.com.tacitknowledge.exercise3;

import main.java.com.tacitknowledge.exercise3.Exercise3;
import org.junit.Before;
import org.junit.Test;

import static junit.framework.Assert.assertEquals;
import static junit.framework.Assert.assertNotNull;
import static junit.framework.Assert.assertTrue;

/**
 * @author Gilberto Alvarado(galvarado@tacitknowledge.com)
 */
public class Exercise3Test
{

    Exercise3 exercise3;

    @Before
    public void setup()
    {
        exercise3 = new Exercise3();
    }

    @Test
    public void shouldGetSumOfFactorial()
    {
        Integer result = exercise3.getDigitsSumOfFactorialNumber(4);
        assertNotNull(result);
        assertTrue(result > 0);
        assertEquals(6, result.intValue());
        result = exercise3.getDigitsSumOfFactorialNumber(10);
        assertEquals(27, result.intValue());
    }

    @Test
    public void shouldReturnDefaultValue()
    {
        Integer result = exercise3.getDigitsSumOfFactorialNumber(0);
        assertNotNull(result);
        assertEquals(1, result.intValue());
    }


}
