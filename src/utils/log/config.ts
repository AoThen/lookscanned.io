export const logConfig = {
  pdfjs: {
    background: "#ff2600",
    color: "#fff",
    text: "📃 PDF.js",
  },
  webWorker: {
    background: "#E0E0E0",
    color: "#000",
    text: "⚙️ Web Worker",
  },
  magica: {
    background: "#2A3C93",
    color: "#fff",
    text: "✨ ImageMagick",
  },
};

export type logType = keyof typeof logConfig;