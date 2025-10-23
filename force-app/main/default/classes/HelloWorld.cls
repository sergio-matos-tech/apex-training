public class HelloWorld {
    public static String sayHello(String name) {
        if (name == null || name.trim().isEmpty()) return 'Hello, world!';
        return 'Hello, ' + name + '!';
    }
}
