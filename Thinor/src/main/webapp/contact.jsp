<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>The Clothing Store</title>
</head>
<body>
    <jsp:include page="misc/nav.jsp"></jsp:include>

    <header>
        <h1>The Clothing Store</h1>
    </header>

    <main>
        <section class="info">
            <h2>Contact Us</h2>
            <p>If you have any questions, feedback, or inquiries, please feel free to contact us. We're here to assist you with any clothing-related matters.</p>

            <form action="contact_submit.jsp" method="post">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="query">Query:</label>
                <textarea id="query" name="query" rows="4" required></textarea>
                
                <button type="submit">Submit</button>
            </form>
        </section>
    </main>
</body>
</html>
