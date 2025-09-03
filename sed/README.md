# sed Practice

This folder contains examples of using the **`sed`** stream editor, from beginner basics to intermediate use cases.  
Each example can be run by executing the script:

```bash
./sed_examples.sh
```

---

## Sections Covered (1–30)

### **Section 1: Basics (Examples 1–5)**

* Replace the first occurrence of text in a line  
* Replace specific words (case sensitive)  
* Replace only the first match per line  
* Replace all matches in each line  

### **Section 2: More Replacements (Examples 6–10)**

* Replace only the 2nd or 3rd occurrence of a word in a line  
* Replace words only on a specific line  
* Replace within a range of lines  
* Replace on odd-numbered lines  

### **Section 3: Deleting Lines (Examples 11–15)**

* Delete a specific line (first, second, last)  
* Delete a range of lines  
* Delete lines matching a pattern  

### **Section 4: Printing (Examples 16–20)**

> By default, `sed` prints every line after applying edits.  
> Using **`-n`** suppresses this, so we can explicitly print lines with `p`.

* Print only a specific line (first, second, last)  
* Print a range of lines  
* Print lines matching a given pattern  

### **Section 5: Insert / Append / Change (Examples 21–25)**

* Insert a line before a given line  
* Append a line after a given line  
* Change (replace) a line completely  
* Insert a header at the start of the file  
* Append a footer at the end of the file  

### **Section 6: In-place Editing & Multiple Commands (Examples 26–30)**

> * **`-i`** → edit files in place (optionally with a backup).  
> * **`-e`** → run multiple sed commands in a single invocation.

* In-place replacement with backup  
* In-place deletion without backup  
* Use `-e` to combine replacement and deletion  
* Use `-e` to chain insertion and replacement  
* Restore file from backup  

---

## How to Use

1. Create the input file:

   ```bash
   echo -e "Hello World\nThis is a test file\nI love DevOps\nsed is powerful" > sample.txt
   ```

2. Run the script:

   ```bash
   ./sed_examples.sh
   ```

3. Observe outputs for each section.

---

## Next Steps

Planned upcoming sections:

* Multiple commands with `{}` blocks  
* Advanced regex (anchors, groups, alternation)  
* Numbering, transformations, hold/append space  
* Real-world examples with logs, CSV, and config files  

Stay tuned 🚀
