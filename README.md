# aghul_parser

Морфологический парсер для агульского языка на основе HFST и lexd.

## Использование парсера

### 1. Получение файлов трансдьюсера

Запустите файл `Агульский_тесты.ipynb` и получите необходимые файлы трансдьюсера.

---

### 2. Компиляция трансдьюсера

Скомпилируйте трансдьюсер с помощью `Makefile`:

```bash
make
```

```bash
lexd aghul.lexd | hfst-txt2fst | hfst-invert | hfst-fst2fst -O -o aghul.analyzer.hfstol
```

---

### 3. Пример использования

Запуск морфологического анализа корпуса:

```bash
cat corpus_luka_uniq.txt | hfst-proc -C aghul.analyzer.hfstol
```

## Инструменты

* HFST (Helsinki Finite-State Toolkit)
* lexd
* Python

## Статус проекта

Парсер находится в стадии разработки и пока не покрывает все существующие парадигмы агульского языка.
