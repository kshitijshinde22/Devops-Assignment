from django.shortcuts import render, redirect
from .models import Login
from .forms import RegisterForm
from django.contrib import messages

def login_view(request):
    if request.method == "POST":
        uname = request.POST.get("username")
        pwd = request.POST.get("password")
        user = Login.objects.filter(username=uname, password=pwd).first()
        if user:
            request.session['username'] = user.username
            return redirect('home')
        else:
            messages.error(request, "Invalid credentials")
    return render(request, "login.html")

def register_view(request):
    if request.method == "POST":
        form = RegisterForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
            if Login.objects.filter(username=username).exists():
                messages.error(request, "User already exists")
            else:
                Login.objects.create(username=username, password=password)
                messages.success(request, "Registered successfully. Please login.")
                return redirect('login')
    else:
        form = RegisterForm()
    return render(request, "register.html", {"form": form})

def home_view(request):
    username = request.session.get('username')
    if not username:
        return redirect('login')
    return render(request, "home.html", {"username": username})

def logout_view(request):
    request.session.flush()
    return redirect('login')
