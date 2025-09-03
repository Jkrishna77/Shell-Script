# awk Practice

This folder contains examples of using the **`awk`** command-line tool for text processing.  
We use a sample `app.log` file for practice.

Run all examples with:

```bash
./awk_examples.sh
```

---

## Sections Covered (1–20)

### **Section 1: Basics (Examples 1–5)**
* Print entire file or selected fields  
* Extract specific columns  
* Filter lines by text match  
* Count lines  

### **Section 2: Filtering & Conditions (Examples 6–10)**
* Match by field values (e.g., log level)  
* Compare timestamps  
* Exclude lines with a pattern  
* Count pattern occurrences  
* Show unique values  

### **Section 3: Formatting & Output (Examples 11–15)**
* Add line numbers  
* Format as CSV  
* Print only message body  
* Highlight important entries  
* Limit output lines  

---

## How to Use

1. Ensure the log file exists:

   ```bash
   ls -l app.log
   ```

2. Run the script:

   ```bash
   ./awk_examples.sh
   ```

3. Observe outputs for each section.

---

## Next Steps

Future expansions (not yet added):

* Using `-F` for custom delimiters (CSV/TSV)  
* More advanced text transformations  
* Real-world log parsing (Apache, Nginx, Kubernetes logs)  
* Combining `awk` with `sed` and `grep`  