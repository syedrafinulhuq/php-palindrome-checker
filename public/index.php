<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>PHP Palindrome Checker</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex flex-col items-center justify-center min-h-screen gap-6">

  <div class="bg-white p-10 rounded-xl shadow-md w-96">
    <h1 class="text-4xl font-bold text-center mb-6 text-blue-600 leading-relaxed">
      Palindrome Checker
    </h1>

    <form method="post" class="flex flex-col gap-6">
  
      <input type="text" name="word" placeholder="Enter a word"
             class="border rounded-lg p-3 text-lg focus:ring-2 focus:ring-blue-400 outline-none" required value="">

      <button type="submit" class="bg-blue-500 text-white py-3 rounded-lg hover:bg-blue-600 text-lg font-semibold">
        Check
      </button>
      
    </form>
  </div>

  <?php
    function isPalindrome($string){
      $string = strtolower(preg_replace("/[^A-Za-z0-9]/","",$string));
      return $string === strrev($string);
    }

    if ($_SERVER["REQUEST_METHOD"] === "POST") {
      $string = $_POST["word"];

      if (isPalindrome($string)) {
         echo "<p class='text-green-600 font-bold text-center text-xl leading-relaxed'>✅ '$string' is palindrome</p>";
      } else {
         echo "<p class='text-red-600 font-bold text-center text-xl leading-relaxed'>❌ '$string' is not palindrome</p>";
      }
    }
  ?>

</body>
</html>
