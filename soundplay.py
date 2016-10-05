#authon:veronica

import winsound
import sys
reload(sys)
sys.setdefaultencoding('utf-8')


# main
def main(argv=sys.argv):
     print('hello')
     print(len(argv))
     if len(argv) == 2:
          winsound.PlaySound(argv[1],winsound.SND_FILENAME)
     else:
          print('Usage: soundplay filename.wav')
          sys.exit(1)
     return

if __name__ == '__main__':
     main()
