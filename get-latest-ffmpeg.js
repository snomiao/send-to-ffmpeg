const download = require('download');
const extract = require('extract-zip');
const fs = require('fs/promises');
const { promisify } = require('util');

const urlLatestZip = "https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-full.7z"

const zipfile = "ffmpeg-latest-win64-static.zip"
const folder = "ffmpeg-latest-win64-static"

// if (await promisify(fs.exists)(folder)) {
//     console.log('folder already exists');
//     return 'keep';
// }
// await process.cwd('../dist/')

console.log('download...');
await download(urlLatestZip, folder);
console.log('extract...');
await extract(zipfile, { dir: folder })
console.log('clean...');
await fs.unlink(zipfile)
console.log('done...');