from tkinter import *
from tkinter import messagebox
def clickBtn():
    messagebox.showinfo('제목', '나 불렀어?')

window = Tk()
window.geometry('300x300')
label1 = Label(window, text='나 글자다', font=('궁서체', 20))
button1 = Button(window, text='나를 클릭해줘', command=clickBtn)

label1.pack()
button1.pack()
window.mainloop()
