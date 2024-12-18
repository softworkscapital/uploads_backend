const express = require("express"); // Import express
const multer = require("multer"); // Import multer
const cors = require("cors"); // Import cors
const path = require("path"); // Import path
const fs = require("fs"); // Import fs

const https = require('https');

const app = express(); // Create an instance of express
const PORT = process.env.PORT || 3001; // Set port

// Enable CORS for all origins
app.use(cors());

// Set up storage for multer
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    const uploadDir = "uploads"; // Directory to save images
    fs.mkdirSync(uploadDir, { recursive: true }); // Create directory if it doesn't exist
    cb(null, uploadDir); // Set destination
  },
  filename: (req, file, cb) => {
    cb(null, Date.now() + path.extname(file.originalname)); // Save file with timestamp
  },
});

// Initialize multer with the defined storage
const upload = multer({ storage: storage });

// Serve static files from the uploads directory
app.use("/uploads", express.static(path.join(__dirname, "uploads")));

app.use("/Documents", express.static(path.join(__dirname, "Documents")));

// Define a route for uploading images
app.post("/uploads", upload.single("image"), (req, res) => {
  if (!req.file) {
    return res.status(400).send("No file uploaded.");
  }
  const filePath = path.join("uploads", req.file.filename); // Get the file path
  res.json({ path: filePath }); // Return the file path as JSON
});

// Define a route for testing
app.get("/", (req, res) => {
  res.send("Documents"); // Response for the root URL
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});



const options = {
  cert: fs.readFileSync('/etc/letsencrypt/live/srv547457.hstgr.cloud/fullchain.pem'),
  key: fs.readFileSync('/etc/letsencrypt/live/srv547457.hstgr.cloud/privkey.pem')
};

https.createServer(options, app).listen(process.env.APPPORT || '3001', () => {
  console.log('app is listening to port' + process.env.APPPORT);
});


//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm