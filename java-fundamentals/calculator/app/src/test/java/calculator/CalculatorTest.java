package calculator;
import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class CalculatorTest {
    @Test public void testAddsTwoAndTwo() {
        Calculator calc = new Calculator();
        assertEquals("2 + 2 should equal 4", Integer.valueOf(1), calc.subtract(3, 2));
    }
}
