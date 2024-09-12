<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rules and Agreement Design</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        .form-container {
            /* padding: 30px; */
            background-color: #1b1b32; /* Background for the entire form */
            /* margin-bottom: 30px; */
            color: #ffffff; /* Light color for text */
            padding:100px;
        }

        .form-group {
            margin-bottom: 30px; /* Spacing between form groups */
            padding: 50px;
            background-color: #2E2E4E; /* Slightly different background for form groups */
            border-radius: 8px;
        }

        .form-group1 {
            /* margin-bottom: 30px; */
            padding: 50px;
            background-color: #2E2E4E; /* Slightly different background for form groups */
            border-radius: 8px;
        }

        .section-title {
            font-size: 1.4rem;
            font-weight: bold;
            margin-bottom: 15px;
            color: #f1c40f; /* Accent color for titles */
        }

        .input-row {
            display: flex;
            flex-wrap: wrap;
            gap: 20px; /* Space between columns */
            margin-bottom: 20px;
        }

        .input-group {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .input-group label {
            margin-bottom: 8px;
            font-weight: bold;
        }

        .input-group input,
        .input-group select {
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #2d2d3f; /* Slightly lighter background for inputs */
            color: #ffffff;
        }

        .input-group input::placeholder,
        .input-group select {
            color: #aaa; /* Placeholder color */
        }

        .phone-group {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
        }

        .phone-input {
            display: flex;
            align-items: center;
            gap: 10px;
            flex-wrap: wrap;
        }

        .btn-verify {
            padding: 10px 20px;
            background-color: #5a67d8; /* Button color */
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .upload-box {
            background-color: #2d2d3f;
            border: 2px dashed #444;
            padding: 20px;
            border-radius: 5px;
            text-align: center;
            margin-top: 10px;
            position: relative; /* Position relative for the file input */
        }

        .upload-box p {
            color: #aaa; /* Light color for text */
            margin-bottom: 10px;
        }

        .upload-box input[type="file"] {
            display: none; /* Hide the default file input */
        }

        .upload-box label {
            display: inline-block;
            padding: 10px 20px;
            /* background-color: #5a67d8;  */
            color: #ffffff;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
        }

        .upload-box input[type="file"] + label {
            display: block; /* Show label when file input is present */
        }


        @media (max-width: 768px) {
            .form-container {
                padding:0px !important;
            }
            .input-row {
                flex-direction: column;
            }

            .phone-input {
                flex-direction: column;
            }

            .btn-verify {
                width: 100%;
            }
        }

        
    </style>
</head>

<body>
    <div class="container-fluid form-container">
        <!-- Personal Information -->
        <div class="form-group personal-info">
            <h3 class="section-title">Personal Information</h3>
            <div class="input-row">
                <div class="input-group">
                    <label for="full-name">Full Name</label>
                    <input type="text" id="full-name" placeholder="Enter your full name">
                </div>
                <div class="input-group">
                    <label for="country">Country</label>
                    <select id="country">
                        <option>Select a country</option>
                        <!-- Add country options here -->
                    </select>
                </div>
            </div>
            <div class="input-row">
                <div class="input-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" placeholder="Enter your email address">
                </div>
                <div class="input-group">
                    <label for="messenger">Instant Messenger (Optional)</label>
                    <div class="messenger-group">
                        <select id="messenger">
                            <option>Select an option</option>
                            <!-- Add messenger options here -->
                        </select>
                        <input type="text" placeholder="Messenger link">
                    </div>
                </div>
            </div>
            <div class="input-group">
                <label for="dob">Date of Birth</label>
                <input type="text" id="dob" placeholder="DD/MM/YYYY">
            </div>
        </div>

        <!-- Contact Information -->
        <div class="form-group contact-info">
            <h3 class="section-title">Contact Information</h3>
            <div class="input-group phone-group">
                <label for="phone">Phone number</label>
                <div class="phone-input">
                    <select>
                        <option>+1</option>
                        <!-- Add country codes -->
                    </select>
                    <input type="text" id="phone" placeholder="Enter your mobile number">
                    <button class="btn-verify">Verify</button>
                </div>
            </div>
        </div>

        <!-- Upload Document -->
        <div class="form-group1 upload-document">
            <h3 class="section-title">Upload Document</h3>
            <p>Selfie with your ID Card <a href="#">View Photo Guide</a></p>
            <div class="upload-box">
                <p>Upload your files here</p>
                <input type="file" id="file-upload" multiple>
                <label for="file-upload">Choose Files</label>
            </div>
        </div>

    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
