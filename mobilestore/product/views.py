from django.shortcuts import render
from product.models import Phone
from django.contrib import messages

# Create your views here.
def productreg(request):
    if request.method=='POST':
        # if request.POST.get('name') and request.POST.get('brand') and request.POST.get('ram') and request.POST.get('storage') and request.POST.get('price') and request.POST.get('stock'):
        #     saverecord=Phone()
        #     saverecord.name=request.POST.get('name')
        #     saverecord.brand=request.POST.get('brand')
        #     saverecord.ram=request.POST.get('ram')
        #     saverecord.storage=request.POST.get('storage')
        #     saverecord.price=request.POST.get('price')
        #     saverecord.stock=request.POST.get('stock')
        #     saverecord.save()
        #     messages.success(request, 'New Mobile Registration Detials Saved Successfully')
        name = request.POST['name']
        brand = request.POST['brand']
        ram = request.POST['ram']
        storage = request.POST['storage']
        price = request.POST['price']
        stock = request.POST['stock']
        addPhone = Phone(name=name, brand=brand, ram=ram, storage=storage, price=price, stock=stock)
        addPhone.save()
        return render(request, 'index.html')
    else:
        return render(request, 'index.html')




