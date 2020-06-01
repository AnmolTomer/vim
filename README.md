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
- d - is the delete operator
- motion - is what the operator will operate on. (listed below).

A short list of motions:

- `w` - until the start of the next word, EXCLUDING its first character.
- `e` - to the end of the current word, INCLUDING the last character.
- `$` - to the end of the line, INCLUDING the last character.

- So typing de in normal mode will delete from the cursor to the end of the word.

## 2.4 --> USING A COUNT FOR A MOTION

**Typing a number before a motion repeats it that many times.**

1. Type 2w to move the cursor two words forward.

2. Type 3e to move the cursor to the end of the third word forward.

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

- Press u to undo the last commands, U to fix a whole line.

- Press Ctrl+R to redo the commands.

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

- Type rn to replace a character with n.

---

## LESSON 3.3 --> THE CHANGE OPERATOR

- Type ce to change until the end of thw word. ce deletes the word and places you in Insert mode.

---

## Lesson 3.4: MORE CHANGES USING c

- The change operator is used with the same motions as delete.

1.  The change operator works in the same way as delete. The format is:

         c    [number]   motion

2.  The motions are the same, such as w (word) and \$ (end of line).

---

```
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
