#! /usr/bin/python3

import os, sys, time, glob

class Animation():
    frames = []
    FrameNumber = 0
    heigth = None
    path = None

    def SetPath(self, path=os.environ.get('HOME')+'/.tux42/tux/*.txt'):
        self.path = path
        print(self.path)

    def init(self):
        line_count = 0
        files = []
        for d in glob.glob(self.path):
            print('['+d+']\n')
            files.append(d)
            file = open (d, 'r')
            for line in file:
                line_count += 1
            if self.heigth == None:
                self.heigth = line_count
        files.sort()
        for f in files:
            with open(f, 'r', encoding='utf-8') as f:
                self.frames.append(f.readlines())
                self.FrameNumber+=1

    def execute(self):
        while 1:
            for frame in self.frames:
                for i in range(os.get_terminal_size().lines - self.heigth):
                    print('\n')
                print("".join(frame))
                time.sleep(0.2)


def main():
    a = Animation()
    a.SetPath()
    a.init()
    a.execute()          

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        sys.exit()
