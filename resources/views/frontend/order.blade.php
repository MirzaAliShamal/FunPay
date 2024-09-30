<?php 
use Carbon\Carbon;
?>
@extends('layouts.frontend.app')
@section('content')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@section('content')

<style>
#cvv_image {
    margin-top: -28px !important;
}

#new_icon {
    font-size: 25px
}

#para {
    margin-bottom: 0px !important;
    margin-left: 5px;
}

.error {
    color: red !important;
}

@media (max-width: 767px) {
    #cvv_image {
        margin-top: 6px !important;
    }

    #new_icon {
        font-size: 37px !important;
    }

    #para {
        margin-bottom: 4px !important;
        margin-left: 0px !important;
        line-height: 15px !important;
    }
}

/* Style for the card element */
.card-element {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}
</style>

<section id="content-body">
    <div class="search-fade"></div>
    <div id="content" class="content-lots content-lots-node">
        <div class="promo-cd">





            <div class="container">
                <div class="cd-forward">
                    <div class="counter-list counter-list-circles mt-5">
                        <form id="payment-form">
                            <input type="hidden" id="name" value="{{session('user_name')}}">
                            <input type="hidden" id="seller_id" value="{{$offer[0]['seller_id']}}">
                            <input type="hidden" id="amount" value="{{$offer[0]['price']}}">
                            <input type="hidden" id="buyer_id" value="{{session('user_id')}}">
                            <input type="hidden" id="offer_id" value="{{$offer[0]['id']}}">
                            <div class="form-group">
                                <center><img src="{{ asset('public/assets/frontend/img/1.png')}}" alt="payment">
                                    <div
                                        style="display:flex;justify-content:center; align-items:center;margin-top:10px">
                                        <i class="fa fa-lock" id="new_icon" aria-hidden="true"></i>
                                        <p id="para">Your payment is secure. Your card details won't be shared with
                                            sellers.</p>
                                    </div>
                                </center>
                            </div>
                            <div class="form-group">
                                <label for="card_number" class="col-form-label">Card Number:</label>
                                <div id="card-number" class="card-element"></div>
                                <div id="card-errors" role="alert"></div>
                            </div>
                            <div class="form-group">
                                <label for="cardholder_name" class="col-form-label">Name on Card:</label>
                                <input type="text" class="form-control" id="cardholder_name" name="cardholder_name"
                                    placeholder="Full Name">
                            </div>

                            <div class="form-group">
                                <label for="expiry_month" class="col-form-label">Expiry:</label>
                                <div id="card-expiry" class="card-element"></div>
                            </div>

                            <div class="form-group" style="margin-bottom:20px">

                                <label for="cvv" class="col-form-label">CVV:</label>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div id="card-cvv" class="card-element"></div>
                                    </div>
                                    <div class="col-md-6">
                                        <img width="65%" id="cvv_image"
                                            src="{{ asset('public/assets/frontend/img/cards.png')}}" alt="payment">
                                        <p>A 3-digit or 4-digit code on your credit card, separate from the card number
                                        </p>
                                    </div>

                                </div>

                            </div>

                            <div class="modal-footer">
                                <input type="hidden" name="clientSecret" id="clientSecret" value="{{$clientSecret}}">
                                <input type="hidden" name="paymenturl" id="paymenturl"
                                    value="{{route('initiatestripepayment')}}">
                                    <input type="hidden" name="success_url" id="success_url" value="{{route('homepage')}}">
                                <button type="submit" class="btn btn-primary">Pay Now</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<div class="wrapper-footer" style="position:relative;bottom:0px;text-align:center;width:100%">

    @endsection

    @section('script')
    <!-- Add any specific scripts here -->

    @section('script')

<script src="https://js.stripe.com/v3/"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script>
 var stripe = Stripe('pk_test_51LPO9AEwpm58rdJz0om1N1s2c8tSNnl2ZepLTYRoOx3sDGv5LSSVjilrHAuVVbGDQNWVXYgZwSHem1RPM83Ba1AW007EcHt10X');
  var elements = stripe.elements();

  var cardNumber = elements.create('cardNumber');
  cardNumber.mount('#card-number');
  
  var cardExpiry = elements.create('cardExpiry');
  cardExpiry.mount('#card-expiry');
  
  var cardCvv = elements.create('cardCvc');
  cardCvv.mount('#card-cvv');

  var form = document.getElementById('payment-form');
  const cardErrors = document.getElementById('card-errors');

  var cardHolderName = $('#cardholder_name').val();

   
  
//   cardNumber.on('change', function(event) {
//     if (event.complete) {
//         console.log(event.brand); // Card brand (Visa, Mastercard, etc.)
//         console.log(event.elementType); // Card element type (cardNumber)
//         console.log(event.value); // Card number value
       
//     }
// });


  form.addEventListener('submit', async  (event) => {
      event.preventDefault();
     
      var clientSecret = $('#clientSecret').val();
      var amount = $('#amount').val();
      var seller_id = $('#seller_id').val();
      var offer_id = $('#offer_id').val();
      var clientSecret = $('#clientSecret').val();
     
      var payment_url = $("#paymenturl").val();
      var success_url = $("#success_url").val();
     
        const { setupIntent, error } = await stripe.confirmCardSetup(
            clientSecret, {
                payment_method: {
                    card: cardNumber,
                    billing_details: cardHolderName
                }
            }
        );
    
        if (error) {
          
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: error.message,
              });
              return;
        } else {
            // var last4 = setupIntent.payment_method.card.last4;
            stripe.createPaymentMethod({
                type: 'card',
                card: cardNumber,
            }).then(function(result) {
                if (result.error) {
                    // Handle error
                    Swal.fire({
                      icon: 'error',
                      title: 'Oops...',
                      text: result.error.message,
                    });
                } else {
                    // Send payment method ID to your server
                    jQuery.ajaxSetup({
                      headers: {
                          'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
                      }
                  });
                  
                  
                  
                  $.ajax({
              
                      type: "GET",
                      url: payment_url,
                      data: {
                          payment_method_id: result.paymentMethod.id,
                          last4 : result.paymentMethod.card.last4,
                          amount : amount,
                          seller_id : seller_id,
                          offer_id : offer_id
                      },
                      // method: 'POST', //Post method,
                      dataType: 'json',
                      success: function(response) {
                          window.location.href = success_url;
                      }
                  
                  });
                }
            });
        }
      
  });


  $('#validationForm').validate({
    rules: {
        name: 'required',
        // last_name: 'required',
        // address: 'required',
        // city: 'required',
        // state: 'required',
        // audit_supervisor_input_2: 'required',
        // zip: 'required',
        // email: 'required',
        // company_input_2: 'required',
        // phone: 'required',
        
     
      },
      messages: {
        name: 'This field is required',
        // last_name: 'This field is required',
        // address: 'This field is required',
        // city: 'This field is required',
        // state: 'This field is required',
        // zip: 'This field is required',
        // email: 'This field is required',
        // phone: 'This field is required',
        
      },
      errorPlacement: function(error, element) {
        // Scroll to the error field
        
        $('html, body').animate({
          scrollTop: element.offset().top - 100 // Adjust the offset if needed
        }, 500);
  
        // Place the error message next to the field
        error.insertAfter(element);
      }
  });  
   
</script>
    @endsection