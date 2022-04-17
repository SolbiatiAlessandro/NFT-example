require('dotenv').config()
const pinataApiKey = process.env.PINATA_API_KEY;
const pinataApiSecret = process.env.PINATA_API_SECRET;
const axios = require('axios');
const fs = require('fs');
const formData = require('form-data');

const pinFileToIPFS = async() => {
	const url = `https://api.pinata.cloud/pinning/pinFileToIPFS`;
	const data = new formData();
	data.append("file", fs.createReadStream("./hello-world-nft.json"));
	const res = await axios.post(url, data, {
    maxContentLength: "Infinity",
    headers: {
      "Content-Type": `multipart/form-data; boundary=${data._boundary}`,
      pinata_api_key: pinataApiKey,
      pinata_secret_api_key: pinataApiSecret,
    },
  });
	console.log(res.data);
}

pinFileToIPFS();

