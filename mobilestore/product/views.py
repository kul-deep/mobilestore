from django.shortcuts import render
from product.models import Phone
from django.contrib import messages

# Create your views here.
def productreg(request):
    if request.method=='POST':
        name = request.POST['name']
        brand = request.POST['brand']
        ram = request.POST['ram']
        storage = request.POST['storage']
        price = request.POST['price']
        stock = request.POST['stock']

        if int(stock) < 0:
            value = {
                "msg": "Please enter a valid stock."
            }
        else:
            value = {
                "msg" : "Phone details added successfully."
            }
            addPhone = Phone(name=name, brand=brand, ram=ram, storage=storage, price=price, stock=stock)
            addPhone.save()
        return render(request, 'index.html', value)
    else:
        return render(request, 'index.html')
def productretrieve(request):
    result=Phone.objects.all()
    return render(request,'phonedetails.html',{'res':result})
def productavailable(request):
    available=Phone.objects.filter(stock__gte=1)
    return render(request,'phoneavailable.html',{'avail':available})




