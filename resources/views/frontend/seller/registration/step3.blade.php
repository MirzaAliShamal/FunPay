<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }

        .form-container {
            background-color: #1b1b32;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
        }

        .form-group {
            margin-bottom: 30px;
            padding: 30px;
            background-color: #2E2E4E;
            border-radius: 8px;
        }

        .section-title {
            font-size: 1.4rem;
            font-weight: bold;
            margin-bottom: 15px;
            color: #f1c40f;
        }

        .input-row {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
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
        .input-group select,
        .input-group textarea {
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #2d2d3f;
            color: #ffffff;
        }

        .input-group input::placeholder,
        .input-group select {
            color: #aaa;
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
            background-color: #5a67d8;
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
            position: relative;
        }

        .upload-box p {
            color: #aaa;
            margin-bottom: 10px;
        }

        .upload-box input[type="file"] {
            display: none;
        }

        .upload-box label {
            display: inline-block;
            padding: 10px 20px;
            color: #ffffff;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
        }

        @media (max-width: 768px) {
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
        <form action="{{ route('sellers.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <!-- Personal Information -->
            <div class="form-group personal-info">
                <h3 class="section-title">Personal Information</h3>
                <div class="input-row">
                    <div class="input-group">
                        <label for="full-name">Full Name</label>
                        <input type="text" id="full-name" name="name" placeholder="Enter your full name" required value="{{ old('full_name') }}">
                        @error('full_name')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>

                </div>
                <div class="input-row">
                    <div class="input-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" placeholder="Enter your email address" required value="{{ old('email') }}">
                        @error('email')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="input-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="Enter your password" required>
                        @error('password')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>


                    <div class="input-group">
                        <label for="messenger">Instant Messenger (Optional)</label>
                        <div class="messenger-group">
                            <select id="messenger" name="messenger">
                                <option value="">Select an option</option>
                                <option value="Telegram" {{ old('messenger') == 'Telegram' ? 'selected' : '' }}>Telegram</option>
                                <option value="Discord" {{ old('messenger') == 'Discord' ? 'selected' : '' }}>Discord</option>
                                <option value="Skype" {{ old('messenger') == 'Skype' ? 'selected' : '' }}>Skype</option>
                            </select>
                            <input type="text" name="messenger_link" placeholder="Messenger link" value="{{ old('messenger_link') }}">
                        </div>
                    </div>
                </div>
                <div class="input-group">
                    <label for="dob">Date of Birth</label>
                    <input type="date" id="dob" name="dob" required value="{{ old('dob') }}">
                    @error('dob')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="input-group">
                    <label for="country">Country</label>
                    <select id="country" name="country" required>
                        <option value="">Select a country</option>
                        <option value="USA" {{ old('country') == 'USA' ? 'selected' : '' }}>USA</option>
                        <option value="Canada" {{ old('country') == 'Canada' ? 'selected' : '' }}>Canada</option>
                        <option value="UK" {{ old('country') == 'UK' ? 'selected' : '' }}>UK</option>
                        <!-- Add more country options here -->
                    </select>
                    @error('country')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                
            </div>

            <!-- Contact Information -->
            <div class="form-group contact-info">
                <h3 class="section-title">Contact Information</h3>
                <div class="input-group phone-group">
                    <label for="phone">Phone Number</label>
                    <div class="phone-input">
                        <select id="country-code" name="country_code" required>
                            <option value="+1" {{ old('country_code') == '+1' ? 'selected' : '' }}>+1</option>
                            <option value="+44" {{ old('country_code') == '+44' ? 'selected' : '' }}>+44</option>
                            <option value="+91" {{ old('country_code') == '+91' ? 'selected' : '' }}>+91</option>
                            <!-- Add more country codes -->
                        </select>
                        <input type="number" id="phone" name="phone_number" placeholder="Enter your mobile number" required value="{{ old('phone_number') }}">
                        @error('phone_number')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                        <button class="btn-verify" type="button">Verify</button>
                    </div>
                </div>
            </div>

            <!-- Upload Document -->
            <div class="form-group upload-document">
                <h3 class="section-title">Upload Document</h3>
                <div class="upload-box">
                    <p class="text-bold" style="font-size: 20px">Selfie with your ID Card:</p>
                    <input type="file" id="file-upload" name="selfie" required onchange="displayFileName(this, 'selfie-file-name')">
                    <label for="file-upload">Choose Files</label>
                    <span id="selfie-file-name" class="file-name"></span>
                    @error('selfie')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <div class="upload-box">
                    <p class="text-bold" style="font-size: 20px">ID Card (Front):</p>
                    <input type="file" id="id-card-front" name="id_card_front" required onchange="displayFileName(this, 'id-card-front-file-name')">
                    <label for="id-card-front">Choose File</label>
                    <span id="id-card-front-file-name" class="file-name"></span>
                    @error('id_card_front')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <div class="upload-box">
                    <p class="text-bold" style="font-size: 20px">ID Card (Back):</p>
                    <input type="file" id="id-card-back" name="id_card_back" required onchange="displayFileName(this, 'id-card-back-file-name')">
                    <label for="id-card-back">Choose File</label>
                    <span id="id-card-back-file-name" class="file-name"></span>
                    @error('id_card_back')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

            </div>

            <!-- Selling Information -->
            <div class="form-group selling-info">
                <h3 class="section-title">Selling Information</h3>
                <div class="input-group">
                    <label for="games-products">What games and product/service will you be selling?</label>
                    <textarea id="games-products" name="games_products" required>{{ old('games_products') }}</textarea>
                    @error('games_products')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <div class="input-group">
                    <label for="other-info">Other Information (Optional)</label>
                    <textarea id="other-info" name="other_info">{{ old('other_info') }}</textarea>
                </div>
                <div class="input-row">
                    <div class="input-group">
                        <label for="stock-source">How did you get your stock?</label>
                        <select id="stock-source" name="stock_source" required>
                            <option value="">Select an option</option>
                            <option value="I farm my own items" {{ old('stock_source') == 'I farm my own items' ? 'selected' : '' }}>I farm my own items</option>
                            <option value="I buy from elsewhere and resell here" {{ old('stock_source') == 'I buy from elsewhere and resell here' ? 'selected' : '' }}>I buy from elsewhere and resell here</option>
                        </select>
                        @error('stock_source')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="input-group">
                        <label for="selling-elsewhere">Are you currently selling elsewhere?</label>
                        <select id="selling-elsewhere" name="selling_elsewhere" >
                            <option value="">Select an option</option>
                            <option value="1" {{ old('selling_elsewhere') == '1' ? 'selected' : '' }}>Yes</option>
                            <option value="0" {{ old('selling_elsewhere') == '0' ? 'selected' : '' }}>No</option>
                        </select>
                        @error('selling_elsewhere')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>

                </div>
            </div>

            <button class="btn-verify" type="submit">Submit Registration</button>
        </form>

    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function displayFileName(input, spanId) {
            const fileName = input.files[0] ? input.files[0].name : 'No file chosen';
            document.getElementById(spanId).textContent = fileName;
        }
    </script>

</body>

</html>
