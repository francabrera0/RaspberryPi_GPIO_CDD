import shutil

# Tamaño de cada dígito en caracteres
DIGIT_WIDTH = 5
DIGIT_HEIGHT = 5

# Representación ASCII art para los dígitos
digits = {
    '0': [
        ' 000 ',
        '0   0',
        '0   0',
        '0   0',
        ' 000 '
    ],
    '1': [
        ' 1 ',
        '11 ',
        ' 1 ',
        ' 1 ',
        '111'
    ],
    # Agrega más representaciones ASCII art para los números que necesites
}

def print_large_number(value):
    # Obtiene el ancho de la terminal actual
    terminal_width = shutil.get_terminal_size().columns

    # Calcula cuántas veces se debe repetir cada dígito horizontalmente para ocupar toda la pantalla
    repeat_factor = terminal_width // (DIGIT_WIDTH + 1)  # +1 para dejar un espacio entre los dígitos

    # Imprime el número grande
    for i in range(DIGIT_HEIGHT):
        line = ''
        for digit in value:
            line += digits[digit][i] + ' '  # Agrega un espacio entre los dígitos
        print(line * repeat_factor)

def read_gpio_value():
    # Lee el valor de la variable en /dev/gpio
    # Reemplaza este código con la lógica específica para leer el valor del GPIO

    # Solo para fines de ejemplo, generamos un valor aleatorio
    import random
    value = random.choice(['0', '1'])
    return value

def main():
    value = read_gpio_value()
    print_large_number(value)

if __name__ == '__main__':
    main()
