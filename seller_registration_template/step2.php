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
        body {
            background-color: #1E1E2E;
            color: #fff;
            font-family: 'Arial', sans-serif;
        }

        .rules-container {
            padding: 20px;
            background-color: #2E2E4E;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
        }

        .rules-title {
            color: #ff616d;
            font-size: 1.2rem;
            font-weight: bold;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }

        .rules-title i {
            margin-right: 10px;
        }

        .rules-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 20px;
        }

        .rule-item {
            flex: 1 1 30%;
            background-color: #3B3B5E;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            position: relative;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .rule-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
        }

        .rule-item i {
            font-size: 2rem;
            color: #ffab40;
            margin-bottom: 10px;
        }

        .rule-item h5 {
            font-size: 1.1rem;
            margin-bottom: 10px;
            color: #f8d7ff;
        }

        .rule-item p {
            font-size: 0.9rem;
            color: #d1c4e9;
        }

        .checkbox-container {
            margin-bottom: 15px;
        }

        .checkbox-container input {
            margin-right: 10px;
        }

        .terms-container {
            margin-top: 20px;
            background-color: #3B3B5E;
            padding: 20px;
            border-radius: 10px;
        }

        .terms-container p {
            font-size: 0.9rem;
            color: #d1c4e9;
            margin-bottom: 10px;
        }

        .btn-next {
            padding: 10px 20px;
            color: #fff;
            background: linear-gradient(to right, #6a18c5, #e83e8c);
            border: none;
            border-radius: 20px;
            transition: background 0.3s ease;
            text-decoration: none;
            font-size: 1.1rem;
            float: right;
        }

        .btn-next:hover {
            background: linear-gradient(to right, #e83e8c, #6a18c5);
            text-decoration: none;
            color: #fff;
        }

        .btn-back {
            padding: 10px 20px;
            color: #fff;
            background-color: #666;
            border: none;
            border-radius: 20px;
            text-decoration: none;
            font-size: 1.1rem;
            float: left;
        }

        .btn-back:hover {
            background-color: #888;
            text-decoration: none;
            color: #fff;
        }

        @media (max-width: 768px) {
            .rule-item {
                flex: 1 1 100%;
            }
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="rules-container">
            <div class="rules-title">
                <i class="fas fa-exclamation-circle"></i>
                Please review and tick the rules below before proceeding further.
            </div>

            <div class="rules-grid">
                <div class="rule-item">
                    <i class="fas fa-comments"></i>
                    <h5>Communication</h5>
                    <p>ONLY communicate and deliver within ZeuxX Chat only.</p>
                </div>
                <div class="rule-item">
                    <i class="fas fa-handshake"></i>
                    <h5>Professionalism</h5>
                    <p>BE polite, professional, and deliver as described in your listing and on time.</p>
                </div>
                <div class="rule-item">
                    <i class="fas fa-tags"></i>
                    <h5>Correct Listing</h5>
                    <p>ONLY post this listing under the correct game and category.</p>
                </div>
                <div class="rule-item">
                    <i class="fas fa-ban"></i>
                    <h5>No Off-Platform Deals</h5>
                    <p>DO NOT offer or direct buyers to pay or deal out of ZeuxX platform.</p>
                </div>
                <div class="rule-item">
                    <i class="fas fa-exclamation-triangle"></i>
                    <h5>Prohibited Items</h5>
                    <p>DO NOT post any prohibited items like hacked accounts or glitching/poisoned items.</p>
                </div>
                <div class="rule-item">
                    <i class="fas fa-sync-alt"></i>
                    <h5>No Duplicate Listings</h5>
                    <p>DO NOT post trade only items or SPAM duplicated listing. Ensure they are fit for ZeuxX's listing policy.</p>
                </div>
            </div>
        </div>

        <div class="checkbox-container">
            <label><input type="checkbox"> I have read and agree to ZeuxX <a href="#">Terms of Use, Rules and Regulations</a></label>
        </div>
        <div class="checkbox-container">
            <label><input type="checkbox"> I agree and understand that if I violate any of ZeuxX's <a href="#">Terms of Use, Rules and Regulations</a>, my account may be suspended along with its balance and profit.</label>
        </div>

        <div class="terms-container mb-3">
            <p><i class="fas fa-check-circle text-success"></i> Seller’s identity and place of residence must match submitted identification documents.</p>
            <p><i class="fas fa-check-circle text-success"></i> No matter the source of goods, the registered seller is ultimately accountable for their delivered product. Sold accounts which are later found to be recovered/hacked after delivery is made, may result in the seller being suspended and funds withheld.</p>
            <p><i class="fas fa-check-circle text-success"></i> ZeuxX reserves the rights to reject any application that does not meet the platform’s needs and internal risk management criteria.</p>
        </div>

        <div class="clearfix mb-4">
            <a href="#" class="btn-back">Back</a>
            <a href="#" class="btn-next">Next</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
