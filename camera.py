import cv2
import numpy as np

gs = 0
erode = 0
Hmin = 0
Smin = 0
Vmin = 0
Hmax = 179
Smax = 255
Vmax = 255
#img = cv2.imread('test.jpg')
cap = cv2.VideoCapture(0)
ret, img = cap.read()


def update(x):
    global gs, erode, Hmin, Smin, Vmin, Hmax, Smax, Vmax, img
    ret, img = cap.read()
    gs = cv2.getTrackbarPos('gs', 'image')
    Hmin = cv2.getTrackbarPos('Hmin', 'image')
    Smin = cv2.getTrackbarPos('Smin', 'image')
    Vmin = cv2.getTrackbarPos('Vmin', 'image')
    Hmax = cv2.getTrackbarPos('Hmax', 'image')
    Smax = cv2.getTrackbarPos('Smax', 'image')
    Vmax = cv2.getTrackbarPos('Vmax', 'image')

    gs_frame = cv2.GaussianBlur(img, (gs, gs), 1)
    hsv = cv2.cvtColor(gs_frame, cv2.COLOR_BGR2HSV)
    erode_hsv = cv2.erode(hsv, None, iterations=erode)
    inRange_hsv = cv2.inRange(erode_hsv, np.array([Hmin, Smin, Vmin]), np.array([Hmax, Smax, Vmax]))
    img = inRange_hsv


def img_test():
    global gs, erode, Hmin, Smin, Vmin, Hmax, Smax, Vmax, img
    # 创建窗口
    cv2.namedWindow('image', cv2.WINDOW_NORMAL)
    # 高斯滤波
    cv2.createTrackbar('gs', 'image', 0, 8, update)
    # 腐蚀
    cv2.createTrackbar('erode', 'image', 0, 8, update)
    # Hmin
    cv2.createTrackbar('Hmin', 'image', 0, 179, update)
    # Hmax
    cv2.createTrackbar('Hmax', 'image', 0, 179, update)
    # Smin
    cv2.createTrackbar('Smin', 'image', 0, 255, update)
    # Smax
    cv2.createTrackbar('Smax', 'image', 0, 255, update)
    # Vmin
    cv2.createTrackbar('Vmin', 'image', 0, 255, update)
    # Vmax
    cv2.createTrackbar('Vmax', 'image', 0, 255, update)
    # 默认值
    cv2.setTrackbarPos('gs', 'image', 0)
    cv2.setTrackbarPos('erode', 'image', 0)
    cv2.setTrackbarPos('Hmin', 'image', 0)
    cv2.setTrackbarPos('Smin', 'image', 0)
    cv2.setTrackbarPos('Vmin', 'image', 0)
    cv2.setTrackbarPos('Hmax', 'image', 179)
    cv2.setTrackbarPos('Smax', 'image', 255)
    cv2.setTrackbarPos('Vmax', 'image', 255)
    while (True):
        cv2.imshow('image', img)
        if cv2.waitKey(1) == 27:
            break
    cv2.destroyAllWindows()


if __name__ == '__main__':
    img_test()