public class ComposabilityIssuesExample {

    // This method handles user registration, email confirmation, and logging
    public static void registerUser(String username, String email) {
        // Step 1: Validate input
        if (String.isEmpty(username) || String.isEmpty(email)) {
            throw new IllegalArgumentException('Username or email cannot be empty');
        }
        
        // Step 2: Create user
        User newUser = new User();
        newUser.Username = username;
        newUser.Email = email;
        newUser.IsActive = true;
        insert newUser;
        
        // Step 3: Send confirmation email
        sendConfirmationEmail(email);
        
        // Step 4: Log registration
        logRegistration(username);
    }

    // This method sends a confirmation email
    private static void sendConfirmationEmail(String email) {
        // Simulate sending an email
        System.debug('Sending confirmation email to: ' + email);
    }

    // This method logs the registration action
    private static void logRegistration(String username) {
        // Simulate logging the registration
        System.debug('User registered: ' + username);
    }

    // This method handles user login
    public static void loginUser(String username, String password) {
        // Validate input
        if (String.isEmpty(username) || String.isEmpty(password)) {
            throw new IllegalArgumentException('Username or password cannot be empty');
        }
        
        // Simulate user authentication
        System.debug('Logging in user: ' + username);
        
        // Log the login action
        logLogin(username);
    }

    // This method logs the login action
    private static void logLogin(String username) {
        // Simulate logging the login action
        System.debug('User logged in: ' + username);
    }
}
