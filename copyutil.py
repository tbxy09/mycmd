#authon:veronica

import subprocess, re
import sys
reload(sys)
sys.setdefaultencoding('utf-8')

def copyutil(src_path='',dst_path=''):
     if src_path != '' and dst_path != '':
          output = subprocess.Popen(['xcopy',src_path,dst_path],
               stdout=subprocess.PIPE,
               stdin=subprocess.PIPE).communicate('N')
          print(unicode(output))
          # print(output[1])
          # p = subprocess.Popen(['xcopy',src_path,dst_path],
          #      stdout=subprocess.PIPE,
          #      stderr=subprocess.PIPE,
          #      stdin=subprocess.PIPE)
          # p_stdout,p_stderr = p.communicate('N')
          # if p.wait() != 0 or p_stdout:
          #      print(p_stdout)
     # if isinstance(output, unicode):
     #      output = output.encode('ascii', 'backslashreplace')
     #      print(output)
          return

# main
def main(argv=sys.argv):
     print('hello')
     print(len(argv))
     if len(argv) == 3:
          copyutil(argv[1],argv[2])
     else:
          print('Usage: copyutil src_path dst_path')
          sys.exit(1)
     return

if __name__ == '__main__':
     main()
