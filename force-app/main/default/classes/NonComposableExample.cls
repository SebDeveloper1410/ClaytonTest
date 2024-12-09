public class NonComposableExample {
    
    // This method does multiple unrelated tasks
    public static void processOrder(String orderId, String customerName, List<String> items) {
        // Fetch order details
        System.debug('Processing order for: ' + customerName);
        
        // Calculate total price (hardcoded tax rate)
        Decimal total = 0;
        for (String item : items) {
            total += getItemPrice(item); // Calls a method that fetches item price
        }
        total += total * 0.1; // Adds a hardcoded tax of 10%
        
        // Update order status
        updateOrderStatus(orderId, 'Processed');
        
        // Send confirmation email
        sendEmail(customerName, total);
    }

    // This method is responsible for getting item price
    private static Decimal getItemPrice(String item) {
        // Hardcoded prices for simplicity
        if (item == 'Widget') {
            return 10.00;
        } else if (item == 'Gadget') {
            return 15.00;
        }
        return 0;
    }

    // This method updates the order status
    private static void updateOrderStatus(String orderId, String status) {
        // Simulate updating order status in database
        System.debug('Order ' + orderId + ' status updated to: ' + status);
    }

    // This method sends a confirmation email
    private static void sendEmail(String customerName, Decimal total) {
        // Simulate sending an email
        System.debug('Sending email to ' + customerName + ' with total: ' + total);
    }
}
