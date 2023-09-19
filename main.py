from kivy.app import App
from kivy.uix.widget import Widget
from kivy.graphics import Color, Rectangle

class MyApp(App):
    def build(self):
        # Membuat widget utama dengan latar belakang merah
        root = Widget()
        with root.canvas:
            Color(1, 0, 0, 1)  # Warna merah dalam format RGBA
            self.rect = Rectangle(pos=(0, 0), size=(800, 600))  # Ukuran jendela

        return root

if __name__ == '__main__':
    MyApp().run()
