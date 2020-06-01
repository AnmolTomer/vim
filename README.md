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

2. At the shell prompt type this command: vim tutor <ENTER> 'vim' is the command to start the Vim editor, 'tutor' is the name of the file you wish to edit. Use a file that may be changed.

3. Insert and delete text as you learned in the previous lessons.

4. Save the file with changes and exit Vim with: :wq <ENTER>

5. If you have quit vimtutor in step 1 restart the vimtutor and move down to
   the following summary.

6. After reading the above steps and understanding them: do it.

---

## 1.7 --> LESSON 1 SUMMARY

1. The cursor is moved using either the arrow keys or the hjkl keys.
   h (left) j (down) k (up) l (right)

2. To start Vim from the shell prompt type: vim FILENAME <ENTER>

3. To exit Vim type: <ESC> :q! <ENTER> to trash all changes.
   OR type: <ESC> :wq <ENTER> to save the changes.

4. To delete the character at the cursor type: x

5. To insert or append text type:
   i type inserted text <ESC> insert before the cursor
   A type appended text <ESC> append after the line

NOTE: Pressing <ESC> will place you in Normal mode or will cancel
an unwanted and partially completed command.
