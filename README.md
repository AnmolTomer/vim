# vim

Resources and Notes made while learning VIM.

## Notes From - The Vim Tutorial Part One - Basic Commands: Video [here](https://www.youtube.com/watch?v=ER5JYFKkYDg)

- **Why learn VIM ?**

- It has some pretty weird things to it, uses strange key bindings, a lot of stuff doesn't makes any sense. It is way different from any other text editors you have used before, why bother learning VIM. For people who run UNIX like operating systems such as Linux, it makes a lot of sense. VI or VIM is installed on every unix like OS out there. On servers often VIM is the only text editor installed on the system with a new install. Reason behind learning vim is it is such a productive and powerful tool.

- Using VIM we can edit large chunks of text in VIM with far fewer keystrokes, compared to any other text-editors. You can being to learn VIM by running vimtutor on your terminal. To install on debian based systems run `sudo apt-get install vim` for Arch run `sudo pacman -S vim`.

- `vimtutor` - Run this go over the stuff that's shown in tutorial and you will be learning quite a lot about VIM. The reason why in VIM we have keys h,j,k,l as navigation keys is because when VIM was created decades ago, its creator made this on the computers which were these old school computers which didn't have page up/down keys and other functionalities. That is something that stuck. We can use vimtutor to get upto speed with VIM, should be finished in half an hour or so.

---

## 1.1 --> NAVIGATION

- **To move the cursor, press the h,j,k,l keys as indicated.**

- k ^: The k key for up.
- < h: The h key is at the left and moves left.
- l >: The l key is at the right and moves right.
- j \ / : The j key looks like a down arrow.

### Checkout the cheatsheet [here](https://vim.rtorr.com/)

---

## 1.2 --> EXITING VIM

- NOTE: Before doing this press `<ESC>` key to make sure you are in Normal Mode.
- Type **:q!**: Exit without saving the changes made to the doc.

---

## 1.3 --> TEXT EDITING - DELETION

1. Move the cursor to the line below marked --->.

2. To fix the errors, move the cursor until it is on top of the character to be deleted.

3. Press the x key to delete the unwanted character.

---

## 1.4 --> TEXT EDITING - INSERTION

1. To make the first line the same as the second, move the cursor on top of the character BEFORE which the text is to be inserted.

2. Press i and type in the necessary additions.

3. As each error is fixed press <ESC> to return to Normal mode. Repeat steps 2 through 4 to correct the sentence.

---

## 1.5 --> TEXT EDITING - APPENDING

1. Press A and type in the necessary additions.

2. As the text has been appended press <ESC> to return to Normal mode.

---

## 1.6 --> TEXT EDITING - EDITING A FILE

- Use **:wq** to save a file and exit.

1. Exit this tutor as you did in lesson 1.2: `:q!` Or, if you have access to another terminal, do the following there.

2. At the shell prompt type this command: vim tutor `<ENTER>` 'vim' is the command to start the Vim editor, 'tutor' is the name of the file you wish to edit. Use a file that may be changed.

3. Insert and delete text as you learned in the previous lessons.

4. Save the file with changes and exit Vim with: :wq `<ENTER>`

5. If you have quit vimtutor in step 1 restart the vimtutor and move down to
   the following summary.

6. After reading the above steps and understanding them: do it.

---

## 1.7 --> LESSON 1 SUMMARY

1. The cursor is moved using either the arrow keys or the hjkl keys.
   h (left) j (down) k (up) l (right)

2. To start Vim from the shell prompt type: vim FILENAME `<ENTER>`

3. To exit Vim type: `<ESC>` `:q!` `<ENTER>` to trash all changes.
   OR type: `<ESC>` `:wq` `<ENTER>` to save the changes.

4. To delete the character at the cursor type: x

5. To insert or append text type:
   `i` type inserted text `<ESC>` insert before the cursor
   `A` type appended text `<ESC>` append after the line

NOTE: Pressing `<ESC>` will place you in Normal mode or will cancel
an unwanted and partially completed command.

---

## 2.1 --> DELETION COMMANDS

1. Make sure you are in Normal mode by hitting `<ESC>`.

2. Move the cursor to the word you want to delete, type `dw` to make the word disappear.

**NOTE:** The letter d will appear on the last line of the screen as you type it. Vim is waiting for you to type w . If you see another character than d you typed something wrong; press <ESC> and start over.

---

## 2.2 --> MORE DELETION COMMANDS

- Type `d$` to delete to the end of the line.

---

## 2.3 --> ON OPERATORS AND MOTIONS

- Where
- `d` - is the delete operator
- motion - is what the operator will operate on. (listed below).

A short list of motions:

- `w` - until the start of the next word, EXCLUDING its first character.
- `e` - to the end of the current word, INCLUDING the last character.
- `$` - to the end of the line, INCLUDING the last character.

- So typing de in normal mode will delete from the cursor to the end of the word.

## 2.4 --> USING A COUNT FOR A MOTION

**Typing a number before a motion repeats it that many times.**

1. Type `2w` to move the cursor two words forward.

2. Type `3e` to move the cursor to the end of the third word forward.

3. Type 0 (zero) to move to the start of the line.

---

## Lesson 2.5 --> USING A COUNT TO DELETE MORE

- Typing a number with an operator repeats it that many times. `d2w` deletes two words.

- In the combination of the delete operator and a motion mentioned above you insert a count before the motion to delete more:
  d number motion

---

## Lesson 2.6 --> OPERATING ON LINES

- Type `dd` to delete a whole line.

- Due to the frequency of whole line deletion, the designers of Vi decided it would be easier to simply type two d's to delete a line.

- `dd` deletes the line, `2dd` deletes two lines.

---

## Lesson 2.7 --> THE UNDO COMMAND

- Press `u` to undo the last commands, `U` to fix a whole line.

- Press `Ctrl+R` to redo the commands.

---

## **LESSON 2 --> SUMMARY**

```vim


                     Lesson 2 SUMMARY


  1. To delete from the cursor up to the next word type:    dw
  2. To delete from the cursor to the end of a line type:    d$
  3. To delete a whole line type:    dd

  4. To repeat a motion prepend it with a number:   2w
  5. The format for a change command is:
               operator   [number]   motion
     where:
       operator - is what to do, such as  d  for delete
       [number] - is an optional count to repeat the motion
       motion   - moves over the text to operate on, such as  w (word),
                  $ (to the end of line), etc.

  6. To move to the start of the line use a zero:  0

  7. To undo previous actions, type:           u  (lowercase u)
     To undo all the changes on a line, type:  U  (capital U)
     To undo the undo's, type:                 CTRL-R

```

---

## LESSON 3.1 --> THE PUT COMMAND

- Type `p` to put previously delted text after the cursor.

- We can type `dd` to delete the line and store it in a Vim register.

- Get the cursor above the line you want to put stuff in the register and hit `p` to put what you got in Vim register by doing dd.

---

## LESSON 3.2 --> THE REPLACE COMMAND

- Type `rn` to replace a character with n.

---

## LESSON 3.3 --> THE CHANGE OPERATOR

- Type `ce` to change until the end of thw word. `ce` deletes the word and places you in Insert mode.

---

## Lesson 3.4: MORE CHANGES USING c

> The change operator is used with the same motions as delete.

1.  The change operator works in the same way as delete. The format is:

         c    [number]   motion

2.  The motions are the same, such as w (word) and \$ (end of line).

---

```vim
                               Lesson 3 SUMMARY


1. To put back text that has just been deleted, type   p .  This puts the deleted text AFTER the cursor (if a line was deleted it will go on the line below the cursor).

2. To replace the character under the cursor, type   r   and then the character you want to have there.

3. The change operator allows you to change from the cursor to where the
     motion takes you.  eg. Type  ce  to change from the cursor to the end of
     the word,  c$  to change to the end of a line.

4. The format for change is:

         c   [number]   motion

- Now go on to the next lesson.

```

---

## Lesson 4.1 --> CURSOR LOCATION AND FILE STATUS

- Type `CTRL-g` to show your location in the file and the file status.
- Type `G` to move to the bottom of the file.
- `gg` to go to the top of the file.
- `488G` returns you to the line 488.

---

## Lesson 4.2 --> THE SEARCH COMMAND

> Type `/` followed by a phrase to search for the phrase.

1. In Normal mode type the `/` character. Notice that it and the cursor
   appear at the bottom of the screen as with the : command.

2. Now type 'errroor' `<ENTER>`. This is the word you want to search for.

3. To search for the same phrase again, simply type n . (N as in next occurence)
   To search for the same phrase in the opposite direction, type N .

4. To search for a phrase in the backward direction, use ? instead of / .

5. To go back to where you came from press CTRL-O (Keep Ctrl down while
   pressing the letter o). Repeat to go back further. CTRL-I goes forward.

---

## Lesson 4.3 --> MATCHING PARENTHESES SEARCH

> **Type % to find a matching ),], or }.**

1. Place the cursor on any (, [, or { in the line and now type the % character.

2. The cursor will move to the matching parenthesis or bracket.

3. Type % to move the cursor to the other matching bracket.

- **NOTE: This is very useful in debugging a program with unmatched parentheses!**

---

## Lesson 4.4: THE SUBSITUTE COMMAND

> Type :s/old/new/g to substitute 'new' for 'old'.

1. Type `:s/thee/the` <ENTER> . Note that this command only changes the first occurrence of "thee" in the line.

2. Now type `:s/thee/the/g` . Adding the g flag means to substitute globally in the line, change all occurrences of "thee" in the line.

3. To change every occurrence of a character string between two lines,
   - Type `:#,#s/old/new/g` where #,# are the line numbers of the range of lines where the substitution is to be done.
   - Type `:%s/old/new/g` to change every occurrence in the whole file.
   - Type `:%s/old/new/gc` to find every occurrence in the whole file, with a prompt whether to substitute or not.

---

```vim
                               Lesson 4 SUMMARY


  1. CTRL-G  displays your location in the file and the file status.
             G  moves to the end of the file.
     number  G  moves to that line number.
            gg  moves to the first line.

  2. Typing  /  followed by a phrase searches FORWARD for the phrase.
     Typing  ?  followed by a phrase searches BACKWARD for the phrase.
     After a search type  n  to find the next occurrence in the same direction
     or  N  to search in the opposite direction.
     CTRL-O takes you back to older positions, CTRL-I to newer positions.

  3. Typing  %  while the cursor is on a (,),[,],{, or } goes to its match.

  4. To substitute new for the first old in a line type    :s/old/new
     To substitute new for all 'old's on a line type       :s/old/new/g
     To substitute phrases between two line #'s type       :#,#s/old/new/g
     To substitute all occurrences in the file type        :%s/old/new/g
     To ask for confirmation each time add 'c'             :%s/old/new/gc

```
