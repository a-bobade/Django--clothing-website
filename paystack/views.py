from django.contrib import messages
from django.shortcuts import render
from .models import CustomerInfo


def checkout(request):
    if request.user.is_authenticated:
        if request.method == 'POST':
            first_name = request.POST.get('first_name', False)
            last_name = request.POST.get('last_name', False)
            phone = request.POST.get('phone', False)
            email = request.POST.get('email', False)
            amount = request.POST.get('amount', False)

            user = CustomerInfo.objects.create(first_name=first_name, last_name=last_name, phone_number=phone,
                                               email=email, amount=amount)
            user.save()
            return render(request, 'payment.html', {'email': email, 'phone': phone, 'amount': amount})

        else:
            return render(request, 'checkout.html')
    else:
        messages.info(request, 'To Checkout, please Login first.')
        return render(request, 'login.html')
