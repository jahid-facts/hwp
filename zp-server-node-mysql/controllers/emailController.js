const nodemailer = require("nodemailer");

exports.sendEmail = async (req, res) => {
  const transporter = nodemailer.createTransport({
    host: "smtp.gmail.com",
    port: 587,
    secure: false,
    auth: {
      user: "jahid.contact.0@gmail.com", // Replace with your Gmail address
      pass: "jvcllimexbmhzsjb", // Replace with your Gmail password
    },
  });

  async function main() {
    const htmlContent = `
      <html>
        <head>
          <style>
            body {
              font-family: Arial, sans-serif;
            }
            .container {
              max-width: 600px;
              margin: 0 auto;
              padding: 20px;
              border: 1px solid #ccc;
              border-radius: 5px;
            }
            .header {
              background-color: #f0f0f0;
              padding: 10px;
              border-bottom: 1px solid #ccc;
            }
            .content {
              padding: 20px 0;
            }
          </style>
        </head>
        <body>
          <div class="container">
            <div class="header">
              <h2>Kishoreganj Police</h2>
            </div>
            <div class="content">
              <p>${req.body.message}</p>
            </div>
          </div>
        </body>
      </html>
    `;

    const info = await transporter.sendMail({
      from: "", // Replace with your desired sender name and email
      to: req.body.office, // List of receivers
      cc: req.body.email, // CC
      subject: req.body.subject, // Subject line
      html: htmlContent, // HTML body
    });

    console.log("Message sent: %s", info.messageId);
    res.status(200).send("Email sent successfully");
  }

  main().catch((error) => {
    console.error(error);
    res.status(500).send("Error sending email");
  });
};
