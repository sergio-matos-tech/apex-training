public class HelloWorld {
    public static String sayHello(String name) {
        // Use String.isBlank to handle null/empty/whitespace safely.
        if (String.isBlank(name)) return 'Hello, world!';
        return 'Hello, ' + name + '!';
    }
}
