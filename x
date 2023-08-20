import pygame

class MainMenu:
    def __init__(self):
        self.state = "main"  # Початковий стан меню

    def handle_events(self, events):
        for event in events:
            if event.type == pygame.QUIT:
                pygame.quit()
                exit()
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_ESCAPE:
                    pygame.quit()
                    exit()
                # Додайте обробку інших клавіш

    def display(self, surface):
        surface.fill((0, 0, 0))  # Очищення екрану
        if self.state == "main":
            # Відображення кнопок для головного меню

# Ініціалізація Pygame
pygame.init()
window_size = (800, 600)
window = pygame.display.set_mode(window_size)
pygame.display.set_caption("Головне меню")

menu = MainMenu()

# Основний цикл
while True:
    events = pygame.event.get()
    menu.handle_events(events)
    menu.display(window)
    pygame.display.flip()

pygame.quit()
