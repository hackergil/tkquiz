package main.java.com.tacitknowledge.exercise3;

/**
 * n! means n  (n  1)  ...  3  2  1
 * For example, 10! = 10  9  ...  3  2  1 = 3628800,
 * and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
 * Write a function to determine the sum of digits of n!
 *
 * author Gilberto Alvarado (gil@hackergil.com)
 */
public class Exercise3 {

    public Integer getDigitsSumOfFactorialNumber(Integer number) {
        int accumulator = 1;
        int sum = 0;
        if(number != null && number > 1)
        {
            for(int i=1; i <= number; i++)
            {
                accumulator *= i;
            }
            String s = String.valueOf(accumulator);
            for(int i =0; i<s.length(); i++)
            {
                sum += Character.getNumericValue(s.charAt(i));
            }
            return sum;
        }
        return accumulator;
    }
}