package test.java.com.tacitknowledge.exercise3;

import main.java.com.tacitknowledge.exercise3.Exercise3;
import org.junit.Before;
import org.junit.Test;

import static junit.framework.Assert.assertNull;

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
    public void shouldGetFactorial()
    {
    }

    @Test
    public void shouldReturnNull()
    {
        assertNull(exercise3.getDigitsSumOfFactorialNumber(0));
    }


}
