<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Two-Step Verification Code</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header img {
            max-width: 150px;
        }

        .content {
            font-size: 16px;
            color: #333333;
        }

        .verification-code {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            margin: 20px 0;
            padding: 10px;
            background-color: #eaf7ff;
            border: 1px solid #b3e5fc;
            border-radius: 8px;
        }

        .footer {
            margin-top: 30px;
            text-align: center;
            font-size: 14px;
            color: #777777;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="header">
            <img src="http://obe.riphah.edu.pk/public/assets/img/riphah-logo.png" alt="Company Logo">
        </div>
        <div class="content">
            <p>Dear Sir/Madam</p>
            <p>We hope this email finds you well.</p>
            <p>For enhanced security, a two-step verification process has been initiated for your account. Please use
                the verification code provided below to complete your login:</p>
            <div class="verification-code">
                {{ $verification_code['verification_code'] }}
            </div>
            <p>This code is valid for the next 10 minutes. For your protection, please do not share this code with
                anyone. If you did not request this verification, please contact our support team immediately.</p>
            <h3>Steps to Complete Verification:</h3>
            <ol>
                <li>Enter the above code on the verification page.</li>
                <li>Click to access your account.</li>
            </ol>
            <a
            href="{{ route('verification_code', ['unique_id' => $verification_code['unique_id'], 'id' => 1]) }}"
            style="padding: 10px 20px 10px 20px; background-color:#294e73;color: white;text-decoration: auto;">Continue
            </a>
            <p>If you encounter any issues or require assistance, feel free to reach out to our support team at
                <a href="mis.support@riphah.edu.pk"></a>
            </p>
            <p>Thank you for your cooperation and understanding.</p>
            <p>Best regards,</p>
            <p><strong>HR</strong><br>
                Riphah International University<br>
            </p>
        </div>
        <div class="footer">
            <p>Note: If this was not you,
                please notify us immediately.</p>
        </div>
    </div>
</body>

</html>
