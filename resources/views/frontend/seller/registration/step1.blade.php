<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Timeline Design with Icons</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #1E1E2E; /* Dark background color for contrast */
            color: #fff;
            font-family: 'Arial', sans-serif;
        }

        .timeline {
            position: relative;
            padding: 50px 0;
            max-width: 800px;
            margin: 0 auto; /* Center the timeline */
        }

        .timeline::before {
            content: '';
            position: absolute;
            top: 0;
            left: 30px;
            width: 4px;
            height: 100%;
            background: linear-gradient(to bottom, #6a18c5, #e83e8c);
            border-radius: 5px;
        }

        .timeline-item {
            position: relative;
            margin: 40px 0;
            padding-left: 80px; /* Adjust padding to align content to the left */
        }

        .timeline-item::before {
            content: attr(data-number); /* Dynamically set the number */
            position: absolute;
            top: 12px;
            left: 12px;
            width: 30px;
            height: 30px;
            background-color: #6a18c5;
            border: 4px solid #fff;
            border-radius: 50%;
            color: #fff;
            font-size: 1rem;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s ease;
        }

        .timeline-item:hover::before {
            background-color: #e83e8c;
        }

        .timeline-content {
            background-color: #2E2E4E; /* New background color for the content */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow for a 3D effect */
            position: relative;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .timeline-item:hover .timeline-content {
            transform: translateX(10px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4); /* Enhanced shadow on hover */
        }

        .timeline-content h5 {
            color: white; /* Softer heading color */
            font-size: 1.25rem;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }

        .timeline-content h5 .fas {
            margin-right: 10px; /* Spacing between icon and text */
            color: white; /* Icon color */
        }

        .timeline-content p {
            color: #d1c4e9;
            margin-bottom: 0;
        }

        .next-button-container {
            text-align: right; /* Align button to the right */
            margin-top: 20px;
            margin-bottom: 40px;
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
        }

        .btn-next:hover {
            background: linear-gradient(to right, #e83e8c, #6a18c5);
            text-decoration: none;
            color: #fff;
        }

        @media (max-width: 576px) {
            .timeline::before {
                left: 20px;
            }

            .timeline-item {
                padding-left: 60px;
            }

            .timeline-item::before {
                left: 10px;
            }

            .next-button-container {
                text-align: center; /* Center button on smaller screens */
            }
        }
    </style>
</head>

<body>
    <div class="container">
@if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif

        <div class="timeline">
            <div class="timeline-item" data-number="1">
                <div class="timeline-content">
                    <h5><i class="fas fa-user"></i> Seller (You)</h5>
                    <p>Posts sales listing</p>
                </div>
            </div>
            <div class="timeline-item" data-number="2">
                <div class="timeline-content">
                    <h5><i class="fas fa-shopping-cart"></i> Buyer</h5>
                    <p>Pay for item (via website)</p>
                </div>
            </div>
            <div class="timeline-item" data-number="3">
                <div class="timeline-content">
                    <h5><i class="fas fa-truck"></i> Seller (You)</h5>
                    <p>Delivers Item</p>
                </div>
            </div>
            <div class="timeline-item" data-number="4">
                <div class="timeline-content">
                    <h5><i class="fas fa-thumbs-up"></i> Buyer</h5>
                    <p>Verifies & Feedback</p>
                </div>
            </div>
            <div class="timeline-item" data-number="5">
                <div class="timeline-content">
                    <h5><i class="fas fa-money-check-alt"></i> ZeuxX</h5>
                    <p>Processes payouts every Monday & Thursday</p>
                </div>
            </div>
        </div>
        <!-- Next Button Container -->
        <div class="next-button-container">
            <a href="{{route('step.two')}}" class="btn-next">Next</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
