image_index = 0;
image_speed = 0;

visible = false;

estado = "escondido";

timer = 0;
vel_anim = 5;

// Tempo escondido e tempo visível
tempo_escondido = room_speed * 10;
tempo_visivel = room_speed * 4;

// Falas aleatórias
falas = [
    "Are you even trying?",
    "Tick tock, genius.",
    "The bomb is laughing at you.",
    "Skill issue.",
    "Git gud.",
    "You're making me nervous.",
    "This is painful to watch.",
    "The bomb wants a better player.",
    "Do you always panic this much?",
    "Just don't explode.",
    "Too slow!",
    "Wrong wire?",
    "Panic harder.",
    "Wake up!",
    "Boom incoming!",
    "Think faster!",
    "Seriously?",
    "Are you lost?",
    "RUN!",
    "Good luck.",
    "Don't blink.",
    "You're doomed.",
    "Use your brain.",
    "Try harder.",
    "Hurry up!",
    "Oops...",
    "Still alive?",
    "Keep moving!",
    "No pressure.",
    "You're shaking.",
    "You got this.",
    "Probably.",
    "Focus!",
    "Too easy?",
    "Press something!",
    "I'm disappointed.",
    "You call that skill?",
    "Nice panic attack.",
    "The timer is winning.",
    "Wrong choice!",
    "You look scared.",
    "Keep calm... NOT!",
    "Boom goes brrr.",
    "Last chance!",
    "Don't embarrass yourself.",
    "Even the bomb is nervous.",
    "This isn't going well.",
    "Please don't explode.",
    "You can panic later.",
    "I'm judging you."
];


texto_atual = "";
ultima_fala = -1;