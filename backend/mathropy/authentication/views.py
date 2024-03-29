from django.shortcuts import render
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login success"
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login failed, deactivated account"
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login failed, wrong username or password"
        }, status=401)