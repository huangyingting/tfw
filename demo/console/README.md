# Terraform Console Examples

## How to Run Terraform Console

Follow these steps to run the Terraform console:

1. **Install Terraform**  
   Ensure Terraform is installed on your system. You can download it from [Terraform's official website](https://www.terraform.io/downloads).

2. **Start the Terraform Console**  
   Use the command below to start the Terraform console:
   ```bash
   terraform console
   ```

3. **Experiment with Commands**  
   Once inside the console, you can try out the examples provided below.

- **Basic Arithmetic**
   ```hcl
   > 5 + 10
   15
   ```

- **String Manipulation**
   ```hcl
   > upper("hello")
   "HELLO"
   ```

- **Working with Lists**
   ```hcl
   > length(["apple", "banana", "cherry"])
   3
   ```

- **Accessing Map Values**
   ```hcl
   > { name = "John", age = 30 }["name"]
   "John"
   ```

- **Using Terraform Functions**
   ```hcl
   > join(", ", ["a", "b", "c"])
   "a, b, c"
   ```

- **Conditional Expressions**
   ```hcl
   > true ? "yes" : "no"
   "yes"
   ```