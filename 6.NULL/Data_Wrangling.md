# Data Wrangling
## Course Info

course link: [bilibili](https://www.bilibili.com/video/BV14E411J7n2?p=4)

transcript: [missing.csail](https://missing.csail.mit.edu/2020/data-wrangling/)

---
## Tools Worth Learning

- sed
- awk
- sort
- paste
- uniq
- bc

---
## Exercises & Solutions
> 1. Take this [short interactive regex tutorial](https://regexone.com/).

**S**: Done

> 2. Find the number of words (in /usr/share/dict/words) that contain at least three as and don’t have a 's ending. What are the three most common last two letters of those words? sed’s y command, or the tr program, may help you with case insensitivity. How many of those two-letter combinations are there? And for a challenge: which combinations do not occur?

**S**:
>   words that contain at least three `a`s and don't have a `'x` ending

**S1**:

```shell
cat /usr/share/dict/words | sed -E "y/A/a/" | grep -E '.*a{1,}.*a{1,}.*a{1,}.*' | grep -v ".*'s" | wc -l
```


> What are the three most common last two letters of those words?

**S2**:

```shell
cat /usr/share/dict/words | sed -E "y/A/a/" | grep -E '.*a{1,}.*a{1,}.*a{1,}.*' | grep -v ".*'s" | sed -E "s/.*(.{2})/\1/" | uniq -c | sort -nk1,1 -r | head -n3
```

> How many of those two-letter combinations are there?

**S3**:

```shell
cat words | sed -E "y/A/a/" | grep -E '.*a{1,}.*a{1,}.*a{1,}.*' | grep -v ".*'s" | sed -E "s/.*(.{2})/\1/" | uniq | wc -l

```

**Challenge**:
> Which combinations do not occur?

**S4**:

Generate all of the 2-combinations, and use `comm` to compare the two files.


> 3. To do in-place substitution it is quite tempting to do something like sed s/REGEX/SUBSTITUTION/ input.txt > input.txt. However this is a bad idea, why? Is this particular to sed? Use man sed to find out how to accomplish this.


**S**:
Use the `-i` command of `sed`.


> 4. Find your average, median, and max system boot time over the last ten boots. Use journalctl on Linux and log show on macOS, and look for log timestamps near the beginning and end of each boot. 


**S**:


```shell
journalctl | grep -E ".*Startup finished" | grep -E ".*Startup finished in [0-9]+ms." | sed -E 's/.*Startup finished in ([0-9]+)ms./\1/' | tail -n10 | /usr/bin/R --slave -e 'x <- scan(file="stdin", quiet=TRUE); summary(x)'
```


---

## Helpful Sites and References
1. [regexr](regexr.com)
2. [regexone: a learning site](regexone.com)
