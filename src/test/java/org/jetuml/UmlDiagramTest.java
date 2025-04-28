package org.jetuml;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

class UmlDiagramTest {

    @Test
    void testSimpleMath() {
        assertEquals(4, 2 + 2);
    }

    @Test
    void testStringEquals() {
        String expected = "Hello";
        String actual = "Hel" + "lo";
        assertEquals(expected, actual);
    }

    @Test
    void testListSize() {
        java.util.List<String> list = new java.util.ArrayList<>();
        list.add("one");
        list.add("two");
        assertEquals(2, list.size());
    }
}
