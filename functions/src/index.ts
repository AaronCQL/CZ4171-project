import * as functions from "firebase-functions";
import speech from "@google-cloud/speech";

const client = new speech.SpeechClient();

export const transcribe = functions.https.onRequest(async (req, res) => {
  const audioData: string | null = req.body.base64audio;
  if (!audioData) {
    res.status(400).json({
      error: "Missing 'base64audio' json body",
    });
    return;
  }

  // Detects speech in the audio file
  const [response] = await client.recognize({
    config: {
      encoding: "AMR_WB",
      sampleRateHertz: 16000,
      languageCode: "en-US",
    },
    audio: {
      content: audioData,
    },
  });
  const transcription: string | undefined = response.results
    ?.map(({ alternatives }) => alternatives?.[0].transcript)
    .map((line) => {
      if (!line) {
        return;
      }
      // capitalise first letter and add period at the end
      const trimmed = line.trim();
      return `${trimmed.charAt(0).toUpperCase()}${trimmed.slice(1)}.`;
    })
    .join(" ");
  console.log(`Transcription: "${transcription}"`);

  res.status(200).json({
    transcription: transcription,
  });
});
