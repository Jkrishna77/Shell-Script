# grep Practice

This folder contains examples of using the **`grep`** command-line tool for searching text.  
We use a sample `sample.txt` file for practice.

Run all examples with:

```bash
./grep_examples.sh
```

---

## Sections Covered (1–10)

### **Section 1: Basics (Examples 1–5)**
* Search case-sensitive and case-insensitive  
* Find matches with line numbers  
* Count matches  
* Simple keyword searches  

### **Section 2: Advanced (Examples 6–10)**
* Invert match (`-v`)  
* Match beginning (`^`) or end (`$`) of line  
* Use regex with `-E`  
* Highlight matches  

---

## How to Use

1. Ensure the file exists:

   ```bash
   cat sample.txt
   ```

2. Run the script:

   ```bash
   ./grep_examples.sh
   ```

3. Observe outputs for each section.

---

## Next Steps

Future expansions (not yet added):

* Recursive search in directories (`grep -r`)  
* Show only matching part (`-o`)  
* Context around matches (`-A`, `-B`, `-C`)  
* Combining `grep` with `awk` and `sed`  
