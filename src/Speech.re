/* Simplest possible bindings for speech synthesis API */

type utterance;

[@mel.new]
external makeUtterance: string => utterance = "SpeechSynthesisUtterance";

external speak: utterance => unit = "speechSynthesis.speak";
