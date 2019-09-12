# Workshop Arte Generativa
In questo repository puoi trovare codice e risorse per i partecipanti ai corsi di Arte Generativa con [Processing](https://www.processing.org) tenuti da [codiceinutile](https://www.codiceinutile.org) nel 2019. Il workshop è indirizzato sia a chi ha già esperienze di programmazione sia a chi parte completamente da zero.

## Indice
* [Tools](#tools)
* [Getting Started](#getting-started)
    * [Lo schermo e i pixel](#lo-schermo-e-i-pixel)
    * [Commenti](#commenti)
* [Forme Geometriche](#forme-geometrice)
    * [Linee](#linee)
    * [Rettangoli e quadrati](#rettangoli-e-quadrati)
    * [Cerchi ed ellissi](#cerchi-ed-ellissi)
    * [Triangoli](#triangoli)
    * [Archi](#archi)
* [Colori](#colori)
    * [RGB](#rgb)
    * [Trasparenza](#trasparenza)
    * [HSB](#hsb)
* [Variabili built-in e mouse](#variabili-built-in-e-mouse)
    * [Eventi](#eventi)
* [Angoli, gradi e radianti](#angoli-gradi-e-radianti)

## Tools
La prima cosa da fare è scaricare Processing a [questo indirzzo](https://processing.org/download/). Processing è un linguaggio di programmazione *open source* e gratuito, disponibile per Windows, macOS e Linux.

## Getting Started
Tutti i programmi che realizzeremo avranno questo codice di partenza:
```processing
void setup() {

}

void draw() {

}
```
All'interno di `setup()` scriveremo il codice che verrà eseguito una volta solo all'avvio del nostro programma mentre il codice inserito in `draw()` verrà ripetuto in loop a 60 frame per secondo di default.

### Lo schermo e i pixel
Ricorda: lo schermo ragiona in **pixel** e il punto di riferimento (0, 0) è rappresentato dall'angolo in alto a sinistra dello schermo. La funzione `size()` determina la grandezza della nostra tela: utilizzeremo principalmente la risoluzione 1920x1080 che corrisponde a 16:9 full HD. In alternativa puoi usare la funzione `fullScreen()` che adatterà lo sketch alla risoluzione dello schermo del tuo computer.

Se utilizzi uno schermo ad alta risoluzione, come, ad esempio, un *retina display* consiglio di utilizzare la funzione: `pixelDensity(2)` che renderà i tuoi sketch più definiti.

Una versione più completa del codice di partenza potrebbe, dunque, essere:
```processing
void setup() {
    size(1920, 1080);
    pixelDensity(2);

}

void draw() {

}
```

### Commenti
All'interno del codice puoi scrivere dei commenti da utilizzare come note o come riferimento. Se sono commenti brevi di una sola riga, puoi scriverli così:
```processing
// Questo è un commento
```
Se, invece, sono commenti più lunghi:
```processing
/*
    Questo è un commento lungo
    che occupa più righe e in cui
    posso scrivere molte cose
*/
```

## Forme geometriche
### Linee
Per disegnare una linea servono quattro parametri: posizione x e y del primo punto e posizione x e y del secondo punto:
```processing
line(x1, y1, x2, y2);
```
### Rettangoli e quadrati
Per disegnare un rettangolo servono quattro parametri: posizione x e y sullo schermo, larghezza e altezza. Se queste ultime due coincidono, sarà, ovviamente, un quadrato. 
```processing
rect(x, y, width, height);
```
Di default la posizione x e y di riferimento si riferiscono all'angolo in alto a sinistra del rettangolo/quadrato. Se vuoi fare in modo che sia il centro devi aggiungere prima di disegnare il rettangolo:
```processing
rectMode(CENTER);
```
### Cerchi ed ellissi
Come per i quadrati e i rettangoli, per disegnare un cerchio avrai sempre bisogno di quattro parametri: x e y di riferimento e larghezza e altezza del cerchio. Se questi ultimi due parametri non coincidono, disegneremo un ellisse:
```processing
ellipse(x, y, width, height);
```
### Triangoli
La funzione `triangle()` necessita di sei variabili: le posizioni x e y di tutti i punti di riferimento:
```processing
triangle(x1, y1, x2, y2, x3, y3);
```
### Archi
Per disegnare un arco sullo schermo abbiamo la necessità di avere sei parametri: x e y del punto di riferimento (come per i [cerchi](#cerchi-ed-ellissi), la larghezza e l'altezza e l'angolo di inizio e fine dell'arco espresso in [**radianti**](#angoli-gradi-e-radianti).
```processing
arc(x, y, width, height, start, stop);
```

## Colori

### RGB
Processing di default lavora in RGB (Red, Green, Blue). Ciascun parametro può assumere un valore da 0 a 255. Dalla combinazione di questi parametri posso ottenere tutti i colori.

Ad esempio, per assegnare un colore allo sfondo posso scrivere:
```processing
background(255, 0, 0); 
```
In questo caso sarà di colore *rosso*.

Se i tre parametri RGB coincidono sarò in scala di grigio e, per comodità, posso inserire un parametro solo. Scrivere `background(127);` equivale a `background(127, 127, 127);` ma è più comodo e veloce.

**Attenzione:** se sei abituato/a a usare colori con valori esadecimali, puoi inserire anche quei valori al posto dell'RGB e Processing li convertirà automaticamente:
```processing
background(#FF0000);
```

### Trasparenza
Aggiungendo un quarto parametro posso lavorare con la trasparenza (chiamata anche *alpha* o *opacity*). Il valore è sempre compreso, di default, tra 0 e 255.

### HSB
È possibile modificare il sistema di default di Processing per utilizzare, ad esempio, il sistema HSB (Hue, Saturation e Brightness) rispetto all'RGB. È sufficiente inserire questo codice nel nostro programma:
```processing
colorMode(HSB);
```
Anche in questo caso i valori di default sono da 0 a 255 per tutti e tre i parametri.

### Fill e stroke
Alle forme che disegno posso assegnare un colore di riempimento `fill();` oppure per le linee o i bordi con `stroke();`. L'indicazione del colore deve essere inserita *sempre* prima di disegnare Per esempio:
```processing
fill(0, 255, 0);
stroke(255, 0, 0);
rect(10, 10, 50, 50);
```
Se voglio rimuovere il colore di riempimento uso `noFill()` mentre, per eliminare, quello del bordo `noStroke()`.

## Variabili built-in e mouse

Processing ci permette di usare alcune variabili built-in:
* `width`: la larghezza del nostro sketch
* `height`: l'altezza del nostro sketch
* `mouseX`: la posizione X del mouse (da usare in dentro la funzione **draw()**)
* `mouseY`: la posizione Y del mouse (da usare in dentro la funzione **draw()**)
* `pmouseX`: la posizione X del mouse nel frame precedente
* `pmouseY`: la posizione Y del mouse nel frame precedente

#### Esempio 1:
```processing
void setup() {
  size(1920, 1080);
  background(255);
}

void draw() {
  ellipse(mouseX, mouseY, 50, 50);
}
```

#### Esempio 2
```processing
void setup() {
  size(1920, 1080);
}

void draw() {
  background(255);
  ellipse(mouseX, mouseY, 50, 50);
}
```

### Eventi

Processing è in grado di riconoscere quando premiamo i tasti del mouse o sulla tastiera con le funzioni `mousePressed()` e `keyPressed()`.

#### Esempio
```processing
void setup() {
  size(500, 500);
}

void draw() {
  background(255);
}

void mousePressed() {
  background(255, 0, 0);
}

void keyPressed() {
  background(0, 255, 0);
}
```

## Angoli, gradi e radianti
Gradi e radianti sono due modi diversi di misurare gli angoli. Siamo abituati a misurare gli angoli in gradi ma Processing preferisce l'indicazione in radianti. Per fortuna esistono delle funzioni che ci aiutano a convertire i valori:

Da gradi a radianti
```processing
float deg = 45.0;
float rad = radians(deg);
println(deg + " degrees is " + rad + " radians");
```

Da radianti a gradi
```processing
float rad = PI/4;
float deg = degrees(rad);
println(rad + " radians is " + deg + " degrees");
```

In ogni caso la circonferenza completa (360°) corrisponde a **2π**, la metà (180°) a **π**, l'angolo retto (90°) da **π/2** e l'angolo di 270° da **3/2π**.