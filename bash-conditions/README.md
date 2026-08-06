# Bash Conditional Expressions

Bash provides three common ways to write conditions. Although they look similar, each one has a different purpose.

## 1. `[ ... ]` — Standard Test

`[ ... ]` is the traditional and POSIX-compliant way to write conditions. It works in almost every Unix shell.

### Best for

* Numeric comparisons
* String comparisons
* File and directory checks

### Example

```bash
age=20

if [ $age -ge 18 ]
then
    echo "Adult"
fi
```

### Common Operators

| Operator | Description           |
| -------- | --------------------- |
| `-eq`    | Equal to              |
| `-ne`    | Not equal to          |
| `-gt`    | Greater than          |
| `-lt`    | Less than             |
| `-ge`    | Greater than or equal |
| `-le`    | Less than or equal    |
| `=`      | String equality       |
| `!=`     | String inequality     |
| `-f`     | File exists           |
| `-d`     | Directory exists      |

> **Note:** Variables should generally be quoted in `[ ... ]` when they may contain spaces.

Example:

```bash
if [ "$name" = "Nithish Kumar" ]
```

---

# 2. `[[ ... ]]` — Bash Conditional Expression

`[[ ... ]]` is a Bash-specific feature. It is safer and more powerful than `[ ... ]`.

### Best for

* String comparisons
* Pattern matching
* Complex logical conditions

### Example

```bash
name="Nithish"

if [[ $name == "Nithish" ]]
then
    echo "Welcome"
fi
```

### Pattern Matching

```bash
file="error.log"

if [[ $file == *.log ]]
then
    echo "Log file"
fi
```

Here:

* `*.log` → any string ending with `.log`
* `N*` → any string starting with `N`
* `*ish` → any string ending with `ish`

### Advantages

* Safer handling of variables.
* Supports pattern matching.
* Easier to write complex conditions.

---

# 3. `(( ... ))` — Arithmetic Evaluation

`(( ... ))` is used for mathematical expressions.

### Best for

* Arithmetic calculations
* Numeric comparisons
* Incrementing and decrementing variables

### Example

```bash
age=20

if (( age >= 18 ))
then
    echo "Adult"
fi
```

### Arithmetic Operators

| Operator | Description           |
| -------- | --------------------- |
| `+`      | Addition              |
| `-`      | Subtraction           |
| `*`      | Multiplication        |
| `/`      | Division              |
| `%`      | Modulus               |
| `==`     | Equal                 |
| `!=`     | Not equal             |
| `>`      | Greater than          |
| `<`      | Less than             |
| `>=`     | Greater than or equal |
| `<=`     | Less than or equal    |

### Example: Divisible by 3

```bash
num=15

if (( num % 3 == 0 ))
then
    echo "Divisible by 3"
else
    echo "Not Divisible"
fi
```

### Increment Example

```bash
count=1

((count++))

echo "$count"
```

Output:

```
2
```


# Which One Should You Use?

* Use **`[ ... ]`** for portable shell scripts that may run in different shells.
* Use **`[[ ... ]]`** for modern Bash scripts, especially when working with strings and pattern matching.
* Use **`(( ... ))`** whenever you're performing arithmetic operations.

For most Bash automation scripts, a common combination is:

```bash
name="Nithish"
age=25

if [[ $name == "Nithish" ]] && (( age >= 18 ))
then
    echo "Welcome"
fi
```

This uses `[[ ... ]]` for string comparison and `(( ... ))` for arithmetic, which is considered a clean and readable Bash style.

