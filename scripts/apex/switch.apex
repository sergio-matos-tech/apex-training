
Integer num = 2;

switch on num {
    when 3 {
        System.debug('The number is three.');
    }
    when 1, 2 {
        System.debug('The number is one or two.');
    }
    when else {
        System.debug('The number is something else.');
    }
}