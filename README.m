<!DOCTYPE html>
<html lang="fa">
<head>
  <meta charset="UTF-8">
  <title>دفترچه یادداشت من</title>
  <style>
    body {
      font-family: Tahoma;
      background-color: #f0f0f0;
      margin: 0;
      padding: 0;
      direction: rtl;
    }
    header {
      background-color: #4caf50;
      color: white;
      padding: 15px;
      text-align: center;
      font-size: 20px;
    }
    .menu, .section {
      display: none;
      padding: 20px;
    }
    .menu {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 10px;
    }
    .card {
      background: white;
      border-radius: 15px;
      padding: 20px;
      text-align: center;
      cursor: pointer;
      box-shadow: 0 2px 8px rgba(0,0,0,0.2);
    }
    .back-button {
      margin-top: 20px;
      background-color: #4caf50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
    }
    input, button, select, textarea {
      margin: 10px 0;
      padding: 8px;
      width: 100%;
      font-size: 16px;
      box-sizing: border-box;
    }
    ul {
      list-style: none;
      padding: 0;
    }
    li {
      background: #fff;
      margin: 5px 0;
      padding: 10px;
      border-radius: 10px;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    li input[type="checkbox"] {
      margin-left: 10px;
    }
    .total {
      font-size: 18px;
      font-weight: bold;
      margin-top: 20px;
    }
  </style>
</head>
<body>

<header>دفترچه یادداشت من</header>

<div id="mainMenu" class="menu">
  <div class="card" onclick="openSection('birthdays')">تاریخ تولد رفقا</div>
  <div class="card" onclick="openSection('shopping')">لیست خرید</div>
  <div class="card" onclick="openSection('homework')">تکالیف دانشگاه</div>
  <div class="card" onclick="openSection('lyrics')">متن آهنگ</div>
  <div class="card" onclick="openSection('memories')">خاطرات عشقمون</div>
  <div class="card" onclick="openSection('dailyGoals')">هدف‌های روزانه</div>
  <div class="card" onclick="openSection('reminders')">یادآوری‌ها</div>
  <div class="card" onclick="openSection('expenses')">هزینه‌های روزانه</div>
  <div class="card" onclick="openSection('savings')">پس‌انداز</div>
</div>

<!-- بخش تاریخ تولد رفقا -->
<div id="birthdays" class="section">
  <h2>تاریخ تولد رفقا</h2>
  <input type="text" id="friendName" placeholder="نام و نام خانوادگی">
  <input type="date" id="friendBirthdate">
  <button onclick="addBirthday()">افزودن</button>
  <ul id="birthdayList"></ul>
  <button class="back-button" onclick="goBack()">بازگشت</button>
</div>

<!-- بخش لیست خرید -->
<div id="shopping" class="section">
  <h2>لیست خرید</h2>
  <input type="text" id="productName" placeholder="نام محصول">
  <input type="number" id="productPrice" placeholder="قیمت (تومان)">
  <button onclick="addShoppingItem()">افزودن</button>
  <ul id="shoppingList"></ul>
  <button class="back-button" onclick="goBack()">بازگشت</button>
</div>

<!-- بخش تکالیف دانشگاه -->
<div id="homework" class="section">
  <h2>تکالیف دانشگاه</h2>
  <input type="text" id="homeworkTitle" placeholder="عنوان تکلیف">
  <textarea id="homeworkDesc" placeholder="توضیح تکلیف" rows="3"></textarea>
  <button onclick="addHomework()">افزودن</button>
  <ul id="homeworkList"></ul>
  <button class="back-button" onclick="goBack()">بازگشت</button>
</div>

<!-- بخش متن آهنگ -->
<div id="lyrics" class="section">
  <h2>متن آهنگ</h2>
  <input type="text" id="lyricsInput" placeholder="بخشی از آهنگ">
  <button onclick="addItem('lyricsInput','lyricsList')">افزودن</button>
  <ul id="lyricsList"></ul>
  <button class="back-button" onclick="goBack()">بازگشت</button>
</div>

<!-- بخش خاطرات عشقمون -->
<div id="memories" class="section">
  <h2>خاطرات عشقمون</h2>
  <input type="text" id="memoriesInput" placeholder="یک خاطره شیرین">
  <button onclick="addItem('memoriesInput','memoriesList')">افزودن</button>
  <ul id="memoriesList"></ul>
  <button class="back-button" onclick="goBack()">بازگشت</button>
</div>

<!-- بخش هدف‌های روزانه -->
<div id="dailyGoals" class="section">
  <h2>هدف‌های روزانه</h2>
  <input type="text" id="goalInput" placeholder="هدف امروز">
  <button onclick="addGoal()">افزودن</button>
  <ul id="goalList"></ul>
  <button class="back-button" onclick="goBack()">بازگشت</button>
</div>

<!-- بخش یادآوری‌ها -->
<div id="reminders" class="section">
  <h2>یادآوری‌ها</h2>
  <input type="text" id="reminderInput" placeholder="یادآوری جدید">
  <button onclick="addReminder()">افزودن</button>
  <ul id="reminderList"></ul>
  <button class="back-button" onclick="goBack()">بازگشت</button>
</div>

<!-- بخش هزینه‌های روزانه -->
<div id="expenses" class="section">
  <h2>هزینه‌های روزانه</h2>
  <input type="date" id="expenseDate">
  <input type="text" id="expenseTitle" placeholder="عنوان هزینه">
  <input type="number" id="expenseAmount" placeholder="مبلغ (تومان)">
  <button onclick="addExpense()">افزودن</button>
  <ul id="expenseList"></ul>
  <button class="back-button" onclick="goBack()">بازگشت</button>
</div>

<!-- بخش پس‌انداز -->
<div id="savings" class="section">
  <h2>پس‌انداز</h2>
  <select id="savingType">
    <option value="daily">روزانه</option>
    <option value="weekly">هفتگی</option>
    <option value="monthly">ماهانه</option>
  </select>
  <input type="number" id="savingAmount" placeholder="مبلغ پس‌انداز">
  <input type="text" id="cardNumber" placeholder="شماره کارت">
  <button onclick="addSaving()">افزودن</button>
  <ul id="savingList"></ul>
  <div class="total">جمع کل پس‌انداز: <span id="totalSavings">0</span> تومان</div>
  <button class="back-button" onclick="goBack()">بازگشت</button>
</div>

<script>
  // تابع باز کردن بخش‌های مختلف
  function openSection(sectionId) {
    document.getElementById('mainMenu').style.display = 'none';
    document.querySelectorAll('.section').forEach(sec => sec.style.display = 'none');
    document.getElementById(sectionId).style.display = 'block';
  }

  // تابع بازگشت به منوی اصلی
  function goBack() {
    document.querySelectorAll('.section').forEach(sec => sec.style.display = 'none');
    document.getElementById('mainMenu').style.display = 'grid';
  }

  // افزودن تاریخ تولد
  function addBirthday() {
    const name = document.getElementById('friendName').value;
    const birthdate = document.getElementById('friendBirthdate').value;
    if (name && birthdate) {
      const li = document.createElement('li');
      li.textContent = `${name} - ${birthdate}`;
      document.getElementById('birthdayList').appendChild(li);
      document.getElementById('friendName').value = '';
      document.getElementById('friendBirthdate').value = '';
    }
  }

  // افزودن آیتم خرید
  function addShoppingItem() {
    const name = document.getElementById('productName').value;
    const price = document.getElementById('productPrice').value;
    if (name && price) {
      const li = document.createElement('li');
      const checkbox = document.createElement('input');
      checkbox.type = 'checkbox';
      li.textContent = `${name} | قیمت: ${price} تومان`;
      li.appendChild(checkbox);
      document.getElementById('shoppingList').appendChild(li);
      document.getElementById('productName').value = '';
      document.getElementById('productPrice').value = '';
    }
  }

  // افزودن تکالیف دانشگاه
  function addHomework() {
    const title = document.getElementById('homeworkTitle').value;
    const desc = document.getElementById('homeworkDesc').value;
    if (title && desc) {
      const li = document.createElement('li');
      li.textContent = `${title}: ${desc}`;
      document.getElementById('homeworkList').appendChild(li);
      document.getElementById('homeworkTitle').value = '';
      document.getElementById('homeworkDesc').value = '';
    }
  }

  // افزودن آیتم به لیست
  function addItem(inputId, listId) {
    const input = document.getElementById(inputId).value;
    if (input) {
      const li = document.createElement('li');
      li.textContent = input;
      document.getElementById(listId).appendChild(li);
      document.getElementById(inputId).value = '';
    }
  }

  // افزودن هدف روزانه
  function addGoal() {
    const goal = document.getElementById('goalInput').value;
    if (goal) {
      const li = document.createElement('li');
      li.textContent = goal;
      document.getElementById('goalList').appendChild(li);
      document.getElementById('goalInput').value = '';
    }
  }

  // افزودن یادآوری
  function addReminder() {
    const reminder = document.getElementById('reminderInput').value;
    if (reminder) {
      const li = document.createElement('li');
      li.textContent = reminder;
      document.getElementById('reminderList').appendChild(li);
      document.getElementById('reminderInput').value = '';
    }
  }

  // افزودن هزینه روزانه
  function addExpense() {
    const date = document.getElementById('expenseDate').value;
    const title = document.getElementById('expenseTitle').value;
    const amount = document.getElementById('expenseAmount').value;
    if (date && title && amount) {
      const li = document.createElement('li');
      li.textContent = `${date} - ${title}: ${amount} تومان`;
      document.getElementById('expenseList').appendChild(li);
      document.getElementById('expenseDate').value = '';
      document.getElementById('expenseTitle').value = '';
      document.getElementById('expenseAmount').value = '';
    }
  }

  // افزودن پس‌انداز
  function addSaving() {
    const type = document.getElementById('savingType').value;
    const amount = document.getElementById('savingAmount').value;
    const cardNumber = document.getElementById('cardNumber').value;
    if (amount && cardNumber) {
      const li = document.createElement('li');
      li.textContent = `${type}: ${amount} تومان`;
      document.getElementById('savingList').appendChild(li);
      document.getElementById('savingAmount').value = '';
      document.getElementById('cardNumber').value = '';
      
      // محاسبه جمع کل پس‌انداز
      let total = 0;
      document.querySelectorAll('#savingList li').forEach(item => {
        total += parseInt(item.textContent.split(":")[1]);
      });
      document.getElementById('totalSavings').textContent = total;
    }
  }
</script>

</body>
</html>
