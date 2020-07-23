# vim

Resources and Notes made while learning VIM.

## Notes From - The Vim Tutorial Part One - Basic Commands: Video [here](https://www.youtube.com/watch?v=ER5JYFKkYDg)

- Great playlist to configure NeoVim Step by Step: [Link](https://www.youtube.com/playlist?list=PLhoH5vyxr6QqPtKMp03pcJd_Vg8FZ0rtg)

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

## Lesson 3.4 --> MORE CHANGES USING c

> The change operator is used with the same motions as delete.

1.  The change operator works in the same way as delete. The format is:

         c    [number]   motion

2.  The motions are the same, such as w (word) and \$ (end of line).

---

## Lesson 3 --> SUMMARY

```vim

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

## Lesson 4.4 --> THE SUBSITUTE COMMAND

> Type :s/old/new/g to substitute 'new' for 'old'.

1. Type `:s/thee/the` <ENTER> . Note that this command only changes the first occurrence of "thee" in the line.

2. Now type `:s/thee/the/g` . Adding the g flag means to substitute globally in the line, change all occurrences of "thee" in the line.

3. To change every occurrence of a character string between two lines,
   - Type `:#,#s/old/new/g` where #,# are the line numbers of the range of lines where the substitution is to be done.
   - Type `:%s/old/new/g` to change every occurrence in the whole file.
   - Type `:%s/old/new/gc` to find every occurrence in the whole file, with a prompt whether to substitute or not.

---

## Lesson 4 --> SUMMARY

```vim
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

---

## Lesson 5.1 --> HOW TO EXECUTE AN EXTERNAL COMMAND

> Type `:!` followed by an external command to execute that command.

1. Type the familiar command `:` to set the cursor at the bottom of the screen. This allows you to enter a command-line command.

2. Now type the `!` (exclamation point) character. This allows you to execute any external shell command.

3. As an example type `ls` following the `!` and then hit `<ENTER>`. This will show you a listing of your directory, just as if you were at the shell prompt.

---

## Lesson 5.2 --> MORE ON WRITING FILES

> To save the changes made to the text, type `w fILENAME`.

1. Type `:!dir` or `:!ls` to get a listing of your directory.

2. Choose a filename that does not exist yet, such as TEST.

3. Now type: `:w` TEST (where TEST is the filename you chose.)

4. This saves the whole file (the Vim Tutor) under the name TEST.
   To verify this, type `:!dir` or `:!ls` again to see your directory.

NOTE: If you were to exit Vim and start it again with `vim TEST` , the file
would be an exact copy of the tutor when you saved it.

5. Now remove the file by typing (Windows): `:!del TEST`
   or (Unix): `:!rm TEST`

---

## Lesson 5.3 --> SELECTING TEXT TO WRITE

> To save part of the file, type v motion `:w FILENAME`

1. Move the cursor to this line.

2. Press v and move the cursor to the fifth item below. Notice that the
   text is highlighted.

3. Press the `:` character. At the bottom of the screen `:'<,'>` will appear.

4. Type w TEST , where TEST is a filename that does not exist yet. Verify
   that you see `:'<,'>w TEST` before you press `<ENTER>`.

5. Vim will write the selected lines to the file TEST. Use `:!dir` or `:!ls` to see it.

---

## Lesson 5.4 --> RETRIEVING AND MERGING FILES

> To insert the contents of a file, type `:r FILENAME`.

- To read the output of an external command, say output of !ls we can do `:r !ls`. This will place the output of command below the cursor.

## Lesson 5 --> SUMMARY

```vim

  1.  :!command  executes an external command.

      Some useful examples are:
         (Windows)        (Unix)
          :!dir            :!ls            -  shows a directory listing.
          :!del FILENAME   :!rm FILENAME   -  removes file FILENAME.

  2.  :w FILENAME  writes the current Vim file to disk with name FILENAME.

  3.  v  motion  :w FILENAME  saves the Visually selected lines in file
      FILENAME.

  4.  :r FILENAME  retrieves disk file FILENAME and puts it below the
      cursor position.

  5.  :r !dir  reads the output of the dir command and puts it below the
      cursor position.


```

## Lesson 6.1 --> THE OPEN COMMAND

1. Type the lowercase letter o to open up a line BELOW the cursor and place you in Insert mode.

2. Now type some text and press <ESC> to exit Insert mode.

3. To open up a line ABOVE the cursor, simply type a capital O , rather than a lowercase o. Try this on the line below.

---

## Lesson 6.2 --> THE APPEND COMMAND

> Type `a` to insert text AFTER the cursor.

1. Press e until the cursor is on the end of li .

2. Type an `a` (lowercase) to append text AFTER the cursor.

**NOTE**: a, i and A all go to the same Insert mode, the only difference is where the characters are inserted.

---

## Lesson 6.3--> ANOTHER WAY TO REPLACE

> Type a capital `R` to replace more than one character.

1. Move the cursor to the beginning of the first xxx .

2. Now press R and type the number below it in the second line, so that it replaces the xxx .

3. Press <ESC> to leave Replace mode. Notice that the rest of the line remains unmodified.

_NOTE: Replace mode is like Insert mode, but every typed character deletes an existing character._

---

## Lesson 6.4 --> COPY AND PASTE TEXT

1. Start Visual mode with v and move the cursor to just before "first".

2. Type y to yank (copy) the highlighted text.

3. Move the cursor to the end of the next line: j\$

4. Type p to put (paste) the text. Then type: a second <ESC> .

5. Use Visual mode to select " item.", yank it with y , move to the end of the next line with j\$ and put the text there with p .

NOTE: You can also use y as an operator; yw yanks one word.

---

## Lesson 6.5 --> SET OPTION

> Set an option so a search or substitute ignores case

1. Search for `ignore` by entering: `/ignore <ENTER>` Repeat several times by pressing n .

1. Set the `ic` (Ignore case) option by entering: `:set ic`

1. Now search for 'ignore' again by pressing `n`
   Notice that Ignore and IGNORE are now also found.

1. Set the 'hlsearch' and 'incsearch' options: `:set hls is`

1. Now type the search command again and see what happens `:/ignore <ENTER>`

1. To disable ignoring case enter: `:set noic`

NOTE: To remove the highlighting of matches enter: `:nohlsearch`
NOTE: If you want to ignore case for just one search command, use `\c` in the phrase `:/ignore\c` <ENTER>

---

## Lesson 6 --> SUMMARY

```vim
  1. Type  o  to open a line BELOW the cursor and start Insert mode.
     Type  O  to open a line ABOVE the cursor.

  2. Type  a  to insert text AFTER the cursor.
     Type  A  to insert text after the end of the line.

  3. The  e  command moves to the end of a word.

  4. The  y  operator yanks (copies) text,  p  puts (pastes) it.

  5. Typing a capital  R  enters Replace mode until  <ESC>  is pressed.

  6. Typing ":set xxx" sets the option "xxx".  Some options are:
        'ic' 'ignorecase'       ignore upper/lower case when searching
        'is' 'incsearch'        show partial matches for a search phrase
        'hls' 'hlsearch'        highlight all matching phrases
     You can either use the long or the short option name.

  7. Prepend "no" to switch an option off:   :set noic

```

## Lesson 7.1 --> Getting Help

> Vim has a comprehensive on-line help system. To get started, try one of these three:

- press the `<HELP>` key (if you have one)
- press the `<F1>` key (if you have one)
- type :help `<ENTER>`

Read the text in the help window to find out how the help works.
Type CTRL-W CTRL-W to jump from one window to another.
Type `:q <ENTER>` to close the help window.

You can find help on just about any subject, by giving an argument to the ":help" command. Try these (don't forget pressing `<ENTER>`):

        :help w
        :help c_CTRL-D
        :help insert-index
        :help user-manual

---

## Lesson 7.2 --> CREATE A STARTUP SCRIPT

> Enable Vim features

Vim has many more features than Vi, but most of them are disabled by
default. To start using more features you have to create a "vimrc" file.

1. Start editing the "vimrc" file. This depends on your system:
   `:e ~/.vimrc` for Unix
   `:e \$VIM/\_vimrc` for Windows

2. Now read the example "vimrc" file contents: `:r \$VIMRUNTIME/vimrc_example.vim`

3. Write the file with: `:w`

The next time you start Vim it will use syntax highlighting. You can add all your preferred settings to this "vimrc" file. For more information type `:help vimrc-intro`.

---

## Lesson 7.3: COMPLETION

> Command line completion with CTRL-D and `<TAB>`

1. Make sure Vim is not in compatible mode: `:set nocp`

2. Look what files exist in the directory: `:!ls` or `:!dir`

3. Type the start of a command: `:e`

4. Press CTRL-D and Vim will show a list of commands that start with "e".

5. Type `d<TAB>` and Vim will complete the command name to ":edit".

6. Now add a space and the start of an existing file name: :edit FIL

7. Press `<TAB>`. Vim will complete the name (if it is unique).

NOTE: Completion works for many commands. Just try pressing CTRL-D and `<TAB>`. It is especially useful for :help .

---

## Lesson 7 --> SUMMARY

```vim
1. Type  :help  or press <F1> or <HELP>  to open a help window.

2. Type  :help cmd  to find help on  cmd .

3. Type  CTRL-W CTRL-W  to jump to another window.

4. Type  :q  to close the help window.

5. Create a vimrc startup script to keep your preferred settings.

6. When typing a  :  command, press CTRL-D to see possible completions. Press <TAB> to use one completion.

```

- This concludes the Vim Tutor. It was intended to give a brief overview of the Vim editor, just enough to allow you to use the editor fairly easily. It is far from complete as Vim has many many more commands. Read the user manual next: `:help user-manual`.

- Now that you know your way around VIM, try editing and setting vimrc file. [This](https://www.youtube.com/watch?v=n9k9scbTuvQ) video is a good first start.

- Basic cut, copy, paste. [Here](https://vim.fandom.com/wiki/Copy,_cut_and_paste)

- Vim Autocomplete and other helpful features. [Here](https://pastebin.com/4AFNr7M3)
