import socket
import logging
import ctypes
import functools
import tkinter as tk
import tkinter.ttk as ttk
from . import smalltool1

logger = logging.getLogger(__name__)


def hdpi(root):
    # 告诉操作系统使用程序自身的dpi适配
    ctypes.windll.shcore.SetProcessDpiAwareness(1)
    # 获取屏幕的缩放因子
    ScaleFactor = ctypes.windll.shcore.GetScaleFactorForDevice(0)
    # 设置程序缩放
    root.tk.call('tk', 'scaling', ScaleFactor / 75)


def initgui(w: smalltool1.Toplevel1):
    h = socket.gethostname()
    w.remotehostvar.set('0.0.0.0')
    w.localhostvar.set(socket.gethostbyname(h))
    w.descriptvar.set('your msg')
    w.timeoutvar.set('0')
    # 激活cross listbox 多选
    w.Scrolledlistbox_portmaps.config(exportselection=0)
    w.Scrolledlistbox_devices.configure(exportselection=0)

    bind_logger_output(w.Scrolledtext_log)


class TextOutHandler(logging.Handler):
    """"""

    def __init__(self, *args, **kwargs):
        """"""
        if 'textbox' in kwargs:
            self.textbox: smalltool1.ScrolledText = kwargs.pop('textbox')
        if not self.textbox:
            logger.error('bind error: %s', self.__name__)

        super().__init__(*args, **kwargs)

    def emit(self, record: logging.LogRecord) -> None:
        """"""
        msg = self.format(record)
        self.textbox.configure(state=tk.NORMAL)
        self.textbox.insert(tk.END, msg)
        self.textbox.insert(tk.END, '\n')
        self.textbox.see(tk.END)
        self.textbox.configure(state=tk.DISABLED)


def bind_logger_output(textbox):
    log = logging.getLogger(__package__)
    hd = TextOutHandler(textbox=textbox)
    log.setLevel(logging.DEBUG)
    fmt = logging.Formatter('%(asctime)s [%(levelname)s]:\t%(message)s', datefmt=logging.Formatter.default_time_format)
    hd.setFormatter(fmt)
    log.addHandler(hd)
    std = logging.StreamHandler()
    std.setFormatter(fmt)
    log.addHandler(std)

    log.info('Welcome.')
    log.debug('UPnP Tool Created @6767')


def protector(func):
    """装饰器保护器"""

    @functools.wraps(func)
    def decorated(*args, **kwargs):
        try:
            return func(*args, **kwargs)
        except Exception as e:
            logger.exception('%s %s', type(e).__name__, e)

    return decorated
