# -*- coding: utf-8 -*-
import sys
import io
import codecs
reload(sys)

sys.setdefaultencoding('utf-8')
def isascii(s):
    try:
        unicode(s, 'ascii')
        return True
    except UnicodeError:
        return False
def isutf(s):
     try:
          unicode(s,'utf-8')
          return True
     except UnicodeError:
          return False
def isgbk(s):
     try:
          unicode(s,'gbk')
          return True
     except UnicodeError:
          return False
def isbig5(s):
     try:
          unicode(s,'big5')
          return True
     except UnicodeError:
          return False
               
def pycodec(input_s=''):
     print(sys.stdout.encoding)
     print(sys.stdin.encoding)
     if isinstance(input_s,str):
          print('input is a string')
          if isgbk(input_s):
               print(unicode(input_s,'gbk')+'   gbk')
          if isbig5(input_s):
               print(unicode(input_s,'big5')+'   big5')
          if isutf(input_s):
               print(unicode(input_s,'utf-8')+'   utf-8')
          if isascii(input_s):
               print(unicode(input_s,'ascii'))+'   ascii'
          print(unicode(input_s,sys.stdin.encoding)+'   '+sys.stdin.encoding)
     if isinstance(input_s,unicode):
          inputlist= list(input_s)
          for each in inputlist:
               print(each)
          print('input is unicode')
          # f = codecs.open('temp.txt', mode='w', buffering=-1,encoding='gbk')
          # print(input_s.encode('gbk'))
          # f = codecs.open('temp.txt', mode='w', buffering=-1,encoding='ascii')
          # print(input_s.encode('ascii','backslashreplace'))
          # f.write(input_s.encode('ascii','backslashreplace'))
          # f.close()
          # f = codecs.open('temp.txt', mode='w', buffering=-1,encoding='utf-8')
          # print(input_s.encode('utf-8'))
          # f.write(input_s.encode('utf-8'))
          # f.close()
          # print(input_s.encode(sys.getdefaultencoding()))
          for each in [[encoding,input_s.encode(encoding,'backslashreplace')] for encoding in ['utf-8','gbk','ascii',sys.stdin.encoding]]:
               # print(encode)
               print(each[0])
               print(each[1])
               f = codecs.open(each[0]+'.txt',mode='w',encoding=each[0])
               try:
                    f.write(each[1])
               except Exception:
                    print('write '+each[0]+' fail')
               f.close()

if __name__ == '__main__':
     if len(sys.argv)<2:
          print('please input the string for codec')
     else:
          # print(type(sys.argv[1]))
          pycodec(sys.argv[1])
          pycodec(unicode(sys.argv[1],sys.stdin.encoding))

