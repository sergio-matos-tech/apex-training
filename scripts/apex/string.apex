
String name = 'John Doe';
Integer nameLength = name.length();
System.debug('The length of the name is: ' + nameLength);

String upperCaseName = name.toUpperCase();
System.debug('Uppercase Name: ' + upperCaseName);

String lowerCaseName = name.toLowerCase();
System.debug('Lowercase Name: ' + lowerCaseName);

String replacedName = name.replace('Doe', 'Smith');
System.debug('Replaced Name: ' + replacedName);

System.debug(replacedName.indexOf('n'));

// Compare original name with replaced name
System.debug(name.compareTo(replacedName)); // Outputs a negative number since 'John Doe' is lexicographically less than 'John Smith'
System.debug(name.compareTo('John Doe')); // Outputs 0 since both strings are identical
System.debug(replacedName.compareTo(name)); // Outputs a positive number since 'John Smith'

Boolean containsSmith = replacedName.contains('Smith');
System.debug('Does the replaced name contain "Smith"? ' + containsSmith);