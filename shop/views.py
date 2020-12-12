from django.shortcuts import render, redirect
from .models import Product, Feature
from django.contrib import messages
from django.core.mail import send_mail
from django.contrib.auth.models import User, auth


def index(request):

    products = Product.objects.all()
    features = Feature.objects.all()

    email = ''

    if request.method == 'POST':
        email = request.POST.get("subscribe", False)
        subject = "Subscription request received"

        comment = "Email: " + email + " just subscribed"
        send_mail(subject, comment, email, ['emmaseun95@gmail.com'])

        messages.info(request, 'You have subscribed to our mailing list, Thank you.')

    return render(request, 'index.html', {'products': products, 'features': features})


def contact(request):
    name = ''
    email = ''
    number = ''
    comment = ''

    if request.method == 'POST':
        name = request.POST.get("contact_name", False)
        email = request.POST.get("contact_email", False)
        number = request.POST.get("contact_number", False)
        comment = request.POST.get("contact_comment", False)

        if request.user.is_authenticated:
            subject = str(request.user) + "'s Comment"
        else:
            subject = "A Visitor's Comment"

        comment = "Name: " + name + "\nEmail: " + email + "\nPhone number: " + number + "\n\n\n" + comment
        send_mail(subject, comment, email, ['emmaseun95@gmail.com'])

        messages.info(request, 'Thank you, we have received your comment.')
    else:
        return render(request, 'contact.html')
    return redirect('../contact')


def about(request):
    return render(request, 'about.html')


def login(request):

    if request.method == 'POST':
        username = request.POST.get('username', False)
        password = request.POST.get('password', False)

        user = auth.authenticate(username=username, password=password)

        if user is not None:
            auth.login(request, user)
            return redirect('/')
        else:
            messages.info(request, 'Invalid Login Details')
            return redirect('login')
    else:
        return render(request, 'login.html')


def register(request):

    if request.method == 'POST':
        username = request.POST['username']
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        email = request.POST['email']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        if password1 == password2:
            if User.objects.filter(username=username).exists():
                messages.info(request, 'Username Taken, please try another')
                return redirect('register')
            elif User.objects.filter(email=email).exists():
                messages.info(request, "Email Taken, please try another")
                return redirect('register')
            else:
                user = User.objects.create_user(username=username, first_name=first_name, last_name=last_name,
                                                email=email, password=password1)
                user.save()
                return redirect('login')
        else:
            return redirect('register')
    else:
        return render(request, 'register.html')


def logout(request):
    auth.logout(request)
    return redirect('/')


def subscribe(request):
    email = ''

    if request.method == 'POST':
        email = request.POST.get("subscribe", False)
        subject = "Subscription request received"

        comment = "Email: " + email + " just subscribed"
        send_mail(subject, comment, email, ['emmaseun95@gmail.com'])

        messages.info(request, 'You have subscribed to our mailing list')
