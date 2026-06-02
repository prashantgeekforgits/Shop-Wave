<?php

include 'db.php';

$json = file_get_contents(
    "https://api.escuelajs.co/api/v1/products"
);

$data = json_decode($json, true);

foreach($data as $product)
{
    $name = mysqli_real_escape_string(
        $conn,
        $product['title']
    );

    $description = mysqli_real_escape_string(
        $conn,
        $product['description']
    );

    $price = $product['price'];

    // Skip if product name already exists
    $check = mysqli_query(
        $conn,
        "SELECT product_id
         FROM products
         WHERE product_name = '$name'"
    );

    if(mysqli_num_rows($check) > 0)
    {
        continue;
    }

    // Unique slug
    $slug = strtolower(
        str_replace(
            ' ',
            '-',
            preg_replace(
                '/[^A-Za-z0-9 ]/',
                '',
                $product['title']
            )
        )
    );

    $slug .= '-api-' . uniqid();

    // Unique SKU
    $sku = 'API-' . uniqid();

    $sql = "
    INSERT INTO products
    (
        product_name,
        slug,
        description,
        sku,
        price
    )
    VALUES
    (
        '$name',
        '$slug',
        '$description',
        '$sku',
        '$price'
    )
    ";

    if(!mysqli_query($conn, $sql))
    {
        echo 'Product Error: '
             . mysqli_error($conn)
             . '<br>';
        continue;
    }

    $product_id = mysqli_insert_id($conn);

    // Insert main image
    if(
        isset($product['images']) &&
        count($product['images']) > 0
    )
    {
        $image = mysqli_real_escape_string(
            $conn,
            $product['images'][0]
        );

        $image_sql = "
        INSERT INTO product_images
        (
            product_id,
            image_url,
            is_main
        )
        VALUES
        (
            '$product_id',
            '$image',
            1
        )
        ";

        mysqli_query($conn, $image_sql);
    }
}


echo 'Products Imported Successfully';

?>