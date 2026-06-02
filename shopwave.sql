-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2026 at 10:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"phpmyadmin\",\"table\":\"pma__pdf_pages\"},{\"db\":\"shopwave\",\"table\":\"users\"},{\"db\":\"shopwave\",\"table\":\"brands\"},{\"db\":\"shopwave\",\"table\":\"product_images\"},{\"db\":\"shopwave\",\"table\":\"products\"},{\"db\":\"shopwave\",\"table\":\"admins\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('shopwave', 'products', 'product_name');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'shopwave', 'product_images', '{\"CREATE_TIME\":\"2026-05-29 09:51:45\",\"col_order\":[0,1,2,3],\"col_visib\":[1,1,1,1]}', '2026-05-29 05:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-06-01 05:52:32', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `shopwave`
--
CREATE DATABASE IF NOT EXISTS `shopwave` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopwave`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('super_admin','manager','staff') DEFAULT 'staff',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `name`, `email`, `password_hash`, `role`, `created_at`) VALUES
(1, 'Super Admin', 'admin@gmail.com', 'admin123', 'super_admin', '2026-05-28 13:40:58'),
(2, 'Manager', 'manager@gmail.com', 'manager123', 'manager', '2026-05-28 13:40:58'),
(3, 'Staff User', 'staff@gmail.com', 'staff123', 'staff', '2026-05-28 13:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `logo_URL` varchar(255) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `logo_URL`, `is_main`) VALUES
(1, 'Samsung', 'images/brands/samsung.png', 1),
(2, 'Apple', 'images/brands/applelogo.jfif', 1),
(3, 'Dell', 'images/brands/dell.png', 1),
(4, 'HP', 'images/brands/hp.png', 1),
(5, 'Nike', 'images/brands/Nikelogo.webp', 1),
(6, 'Adidas', 'images/brands/adidaslogo.png', 1),
(7, 'Puma', 'images/brands/pumalogo.jpg', 1),
(8, 'Lenovo', 'images/brands/Lenovo.png', 1),
(9, 'H&M', 'images/brands/H&M.png', 1),
(10, 'onePlus', 'images/brands/oneplus.png', 1),
(11, 'Xiaomi', 'images/brands/xiaomi.png', 1),
(12, 'Realme', 'images/brands/realme.png', 1),
(13, 'LG', 'images/brands/LG.jfif', 1),
(14, 'oppo', 'images/brands/oppo.png', 1),
(15, 'Google', 'images/brands/googlelogo.jfif', 1),
(16, 'jack&jonas', 'images/brands/Jack_&_Jones.png', 1),
(17, 'Asus', 'images/brands/asuslogo.png', 1),
(18, 'Bear', 'images/brands/bearlogo.png', 1),
(19, 'Allen Solly', 'images/brands/allensoly.png', 1),
(20, 'Levis', 'images/brands/Levi\'s.png', 1),
(21, 'Wildcraft', 'images/brands/wildcraftlogo.png', 1),
(22, 'Zara', 'images/brands/zara.png', 1),
(23, 'whirlpool', 'images/brands/myapp.jpg', 1),
(24, 'Noise', 'images/brands/noiselogo.jfif', 1),
(25, 'Fastrack', 'images/brands/fastracklogo.jfif', 1),
(26, 'Reebok', 'images/brands/reeboklogo.png', 1),
(27, 'Sony', 'images/brands/sonylogo.png', 1),
(28, 'John publicatuons', 'images/brands/JP.png', 1),
(29, 'Boat', 'images/brands/boatlogo.jfif', 1),
(30, 'woodland', 'images/brands/woodland.jfif', 1),
(31, 'American Tourister', 'images/brands/ATlogo.jfif', 1),
(32, 'Seek', 'images/brands/seek-logo.jpg', 1),
(33, 'Essence', 'images/brands/Essence-logo.jpg', 1),
(34, 'Elegent', 'images/brands/elegent.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`cart_id`, `user_id`, `created_at`) VALUES
(1, 1, '2026-05-28 13:42:44'),
(2, 2, '2026-05-28 13:42:44'),
(3, 3, '2026-05-28 13:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `cart_item_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`cart_item_id`, `cart_id`, `product_id`, `variant_id`, `quantity`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 5, 4, 2),
(3, 2, 2, 3, 1),
(4, 3, 6, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `parent_category_id`) VALUES
(1, 'Electronics', 1),
(2, 'Fashion', 2),
(3, 'Mobiles', 1),
(4, 'Laptops', 1),
(5, 'Men Clothing', 2),
(6, 'Women Clothing', 2),
(7, 'Shoes', 2),
(8, 'Accessories', 2),
(9, 'Books', 3),
(10, 'sports & fitness', 4),
(11, 'Groceries', 5),
(12, 'Bags & Luggage', 6),
(13, 'Health care', 7),
(14, 'Toy and Games', 4),
(15, 'Footwear', 2),
(16, 'Kids Wear', 2),
(17, 'Home', 8);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `discount_type` enum('percentage','fixed') NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `minimum_amount` decimal(10,2) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used_count` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `code`, `discount_type`, `discount_value`, `minimum_amount`, `start_date`, `expiry_date`, `usage_limit`, `used_count`, `status`) VALUES
(1, 'WELCOME10', 'percentage', 10.00, 1000.00, '2026-01-01 00:00:00', '2026-12-31 00:00:00', 100, 5, 1),
(2, 'SAVE500', 'fixed', 500.00, 5000.00, '2026-01-01 00:00:00', '2026-12-31 00:00:00', 50, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `order_number` varchar(100) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) DEFAULT 0.00,
  `shipping_amount` decimal(10,2) DEFAULT 0.00,
  `tax_amount` decimal(10,2) DEFAULT 0.00,
  `grand_total` decimal(10,2) NOT NULL,
  `payment_status` enum('pending','paid','failed','refunded') DEFAULT 'pending',
  `order_status` enum('pending','confirmed','processing','shipped','delivered','cancelled','returned') DEFAULT 'pending',
  `ordered_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `address_id`, `coupon_id`, `order_number`, `subtotal`, `discount_amount`, `shipping_amount`, `tax_amount`, `grand_total`, `payment_status`, `order_status`, `ordered_at`) VALUES
(1, 1, 1, 1, 'ORD1001', 74400.00, 7440.00, 100.00, 1200.00, 68260.00, 'paid', 'delivered', '2026-05-28 13:43:22'),
(2, 2, 2, 2, 'ORD1002', 83000.00, 500.00, 150.00, 1500.00, 84150.00, 'paid', 'shipped', '2026-05-28 13:43:22'),
(3, 3, 3, NULL, 'ORD1003', 3999.00, 0.00, 50.00, 100.00, 4149.00, 'pending', 'processing', '2026-05-28 13:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `variant_id`, `product_name`, `quantity`, `price`, `total_price`) VALUES
(1, 1, 1, 1, 'Samsung Galaxy S24', 1, 72000.00, 72000.00),
(2, 1, 5, 4, 'Nike Sports T-Shirt', 2, 1200.00, 2400.00),
(3, 2, 2, 3, 'iPhone 15', 1, 83000.00, 83000.00),
(4, 3, 6, 5, 'Adidas Running Shoes', 1, 3999.00, 3999.00);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method` enum('cod','credit_card','debit_card','upi','paypal','stripe') DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_status` enum('pending','completed','failed','refunded') DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `order_id`, `payment_method`, `transaction_id`, `amount`, `payment_status`, `paid_at`) VALUES
(1, 1, 'upi', 'TXN123456', 68260.00, 'completed', '2026-05-28 13:43:42'),
(2, 2, 'credit_card', 'TXN987654', 84150.00, 'completed', '2026-05-28 13:43:42'),
(3, 3, 'cod', 'COD0003', 4149.00, 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(200) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sku` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT 0,
  `weight` decimal(10,2) DEFAULT NULL,
  `status` enum('active','inactive','out_of_stock') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `brand_id`, `product_name`, `slug`, `description`, `sku`, `price`, `discount_price`, `stock_quantity`, `weight`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Samsung Galaxy S24', 'samsung-galaxy-s24', 'Samsung flagship smartphone', 'SAM-S24', 75000.00, 72000.00, 50, 0.20, 'active', '2026-05-28 13:41:15', '2026-05-28 13:41:15'),
(2, 3, 2, 'iPhone 15', 'iphone-15', 'Apple premium smartphone', 'APL-IP15', 85000.00, 83000.00, 30, 0.18, 'active', '2026-05-28 13:41:15', '2026-05-28 13:41:15'),
(3, 4, 3, 'Dell Inspiron 15', 'dell-inspiron-15', 'Dell laptop with Intel i5', 'DEL-INSP15', 62000.00, 60000.00, 25, 2.00, 'active', '2026-05-28 13:41:15', '2026-05-28 13:41:15'),
(4, 4, 4, 'HP Pavilion Gaming', 'hp-pavilion-gaming', 'Gaming laptop by HP', 'HP-GAME', 78000.00, 75000.00, 20, 2.30, 'active', '2026-05-28 13:41:15', '2026-05-28 13:41:15'),
(5, 5, 5, 'Nike Sports T-Shirt', 'nike-sports-tshirt', 'Comfortable cotton t-shirt', 'NIKE-TS', 1500.00, 1200.00, 100, 0.30, 'active', '2026-05-28 13:41:15', '2026-05-28 13:41:15'),
(6, 7, 6, 'Adidas Running Shoes', 'adidas-running-shoes', 'Running shoes for men', 'ADI-RUN', 4500.00, 3999.00, 60, 0.80, 'active', '2026-05-28 13:41:15', '2026-05-28 13:41:15'),
(7, 5, 9, 'H&M Washed Jeans', 'H&M-Jeans', 'Stylish Washed Jeans', 'H&M-co', 4000.00, 3275.00, 20, 0.75, 'active', '2026-05-28 14:10:32', '2026-05-29 15:04:44'),
(8, 5, 9, 'H&M Leather Jacket', 'H&M-Jacket', 'Leather Suede Jacket', 'H&M-cor', 6000.00, 5999.00, 25, 1.20, 'active', '2026-05-28 14:10:32', '2026-05-29 15:04:44'),
(9, 3, 10, 'OnePlus 13', 'oneplus-13', 'Fast and smooth flagship phone.', 'OP-13', 25000.00, 24999.00, 12, 0.30, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(10, 3, 11, 'Redmi Note 15 Pro', 'redmi-note-15-pro', 'Feature-rich budget smartphone.', 'Xiaomi-15-pro', 20000.00, 19999.00, 80, 0.35, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(11, 7, 7, 'Puma Football shoes', 'puma-football-shoes', 'Comfortable spike shoes', 'NIK-FS', 3500.00, 3499.00, 24, 0.70, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(12, 8, 29, 'Boat Rockerz bluetooth', 'boat-rockerz-blutooth', 'Bluetooth over-ear headphones.', 'BT-RBL', 1200.00, 1200.00, 32, 0.10, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(13, 4, 8, 'Lenovo IdeaPad Slim 5', 'lenovo-ideapad-slim-5', 'Lightweight productivity laptop.', 'LEN-IPS5', 45000.00, 44999.00, 30, 1.50, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(14, 4, 17, 'Asus VivoBook 15', 'asus-vivobook-15', 'Stylish everyday laptop.', 'ASUS-VB15', 65000.00, 64999.00, 24, 1.20, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(15, 8, 2, 'Apple AirPods Pro', 'apple-airpods-pro', 'Wireless noise-cancelling earbuds.', 'APP-APP', 8000.00, 7899.00, 22, 1.10, 'active', '2026-05-28 14:10:32', '2026-06-01 18:19:21'),
(16, 8, 29, 'Boat Rockerz 550', 'boat-rockerz-550', 'Bluetooth over-ear neckband', 'BT-R550', 2000.00, 1799.00, 45, 0.10, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(17, 8, 24, 'JBL Flip 7', 'jbl-flip-7', 'Portable Bluetooth speaker.', 'JBL-F7', 1500.00, 1299.00, 56, 0.08, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(18, 8, 27, 'Sony WH-1000XM6', 'sony-wh1000xm6', 'Premium wireless headphones.', 'SONY-WHXM6', 3000.00, 2899.00, 34, 0.09, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(19, 7, 5, 'Nike Sneakers', 'nike-sneakers', 'Comfortable sportsshoes', 'NIK-SNKS', 4000.00, 3499.00, 21, 0.40, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(20, 5, 20, 'Levis Slim Fit Jeans', 'levis-slim-fit-jeans', 'Classic slim-fit denim jeans.', 'LEVI-Jeans', 5500.00, 5499.00, 20, 0.34, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(21, 5, 19, 'Allen Solly Formal Shirt', 'allen-solly-formal-shirt', 'Elegant formal shirt.', 'AS-S', 5000.00, 4999.00, 14, 0.20, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(22, 12, 21, 'Wildcraft Backpack', 'wildcraft-backpack', 'Spacious travel backpack.', 'WC-BP', 3000.00, 2999.00, 12, 0.45, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(23, 12, 31, 'American Tourister Trolley Bag', 'american-tourister-trolley-bag', 'Durable travel luggage.', 'AT-TB', 4500.00, 4499.00, 18, 0.80, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(24, 7, 30, 'Woodland Casual Shoes', 'woodland-casual-shoes', 'Durable casual footwear.', 'WL-CS', 2400.00, 2099.00, 24, 0.45, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(25, 10, 26, 'Reebok Cricket Bat', 'reebok-cricket-bat', 'Kashmiri-willow Tennis Bat', 'RBK-CB', 1400.00, 1399.00, 20, 0.90, 'active', '2026-05-28 14:10:32', '2026-06-01 18:19:21'),
(26, 9, 24, 'The Alchemist', 'the-alchemist', 'Book for deep readers', 'JP-THEAL', 500.00, 345.00, 11, 0.38, 'active', '2026-05-28 14:10:32', '2026-05-30 09:37:22'),
(27, 5, 18, 'Shirt Bear house', 'shirt-bear-house', 'Comfortable check-Shirt', 'BEAR-S', 2000.00, 1499.00, 10, 0.20, 'active', '2026-05-28 14:10:32', '2026-05-28 14:10:32'),
(328, 2, 33, 'Essence Mascara Lash Princess', 'essence-mascara-lash-princess-1', 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.', 'ESNSE-MLSP', 549.00, 399.00, 30, 0.08, 'active', '2026-05-29 20:15:46', '2026-06-01 18:09:27'),
(329, 2, 33, 'Eyeshadow Palette with Mirror', 'eyeshadow-palette-with-mirror-2', 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it\'s convenient for on-the-go makeup application.', 'ESPW-P', 299.00, 249.00, 20, 0.01, 'active', '2026-05-29 20:15:46', '2026-06-02 02:37:49'),
(330, 2, 33, 'Powder Canister', 'powder-canister-3', 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', 'SKU-3', 299.00, 248.00, 20, 0.01, 'active', '2026-05-29 20:15:46', '2026-06-02 02:37:49'),
(331, 2, 33, 'Red Lipstick', 'red-lipstick-4', 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', 'RL-4', 199.00, 149.00, 20, 0.01, 'active', '2026-05-29 20:15:46', '2026-06-02 02:37:49'),
(332, 2, 33, 'Red Nail Polish', 'red-nail-polish-5', 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', 'RI-4', 99.00, 99.00, 20, 0.20, 'active', '2026-05-29 20:15:46', '2026-06-02 02:37:49'),
(333, 5, 4, 'Calvin Klein CK One', 'calvin-klein-ck-one-6', 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.', 'SKU-6', 49.99, NULL, 0, NULL, 'active', '2026-05-29 20:15:46', '2026-06-02 02:37:49'),
(334, 7, 4, 'Chanel Coco Noir Eau De', 'chanel-coco-noir-eau-de-7', 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.', 'SKU-7', 129.99, NULL, 0, NULL, 'active', '2026-05-29 20:15:46', '2026-06-02 02:37:49'),
(342, 1, 1, 'Classic Red Jogger Sweatpants', 'classic-red-jogger-sweatpants-8', 'Experience ultimate comfort with our red jogger sweatpants, perfect for both workout sessions and lounging around the house. Made with soft, durable fabric, these joggers feature a snug waistband, adjustable drawstring, and practical side pockets for functionality. Their tapered design and elastic cuffs offer a modern fit that keeps you looking stylish on the go.', 'SKU-8', 98.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:17', '2026-05-29 20:22:17'),
(343, 1, 1, 'Classic Navy Blue Baseball Cap', 'classic-navy-blue-baseball-cap-9', 'Step out in style with this sleek navy blue baseball cap. Crafted from durable material, it features a smooth, structured design and an adjustable strap for the perfect fit. Protect your eyes from the sun and complement your casual looks with this versatile and timeless accessory.', 'SKU-9', 61.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:18', '2026-05-29 20:22:18'),
(344, 1, 1, 'Classic Blue Baseball Cap', 'classic-blue-baseball-cap-10', 'Top off your casual look with our Classic Blue Baseball Cap, made from high-quality materials for lasting comfort. Featuring a timeless six-panel design with a pre-curved visor, this adjustable cap offers both style and practicality for everyday wear.', 'SKU-10', 86.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:18', '2026-05-29 20:22:18'),
(345, 1, 1, 'Classic Red Baseball Cap', 'classic-red-baseball-cap-11', 'Elevate your casual wardrobe with this timeless red baseball cap. Crafted from durable fabric, it features a comfortable fit with an adjustable strap at the back, ensuring one size fits all. Perfect for sunny days or adding a sporty touch to your outfit.', 'SKU-11', 35.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:19', '2026-05-29 20:22:19'),
(346, 1, 1, 'Classic Black Baseball Cap', 'classic-black-baseball-cap-12', 'Elevate your casual wear with this timeless black baseball cap. Made with high-quality, breathable fabric, it features an adjustable strap for the perfect fit. Whether you’re out for a jog or just running errands, this cap adds a touch of style to any outfit.', 'SKU-12', 58.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:19', '2026-05-29 20:22:19'),
(347, 1, 1, 'Classic Olive Chino Shorts', 'classic-olive-chino-shorts-13', 'Elevate your casual wardrobe with these classic olive chino shorts. Designed for comfort and versatility, they feature a smooth waistband, practical pockets, and a tailored fit that makes them perfect for both relaxed weekends and smart-casual occasions. The durable fabric ensures they hold up throughout your daily activities while maintaining a stylish look.', 'SKU-13', 84.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:19', '2026-05-29 20:22:19'),
(348, 1, 1, 'Classic High-Waisted Athletic Shorts', 'classic-highwaisted-athletic-shorts-14', 'Stay comfortable and stylish with our Classic High-Waisted Athletic Shorts. Designed for optimal movement and versatility, these shorts are a must-have for your workout wardrobe. Featuring a figure-flattering high waist, breathable fabric, and a secure fit that ensures they stay in place during any activity, these shorts are perfect for the gym, running, or even just casual wear.', 'SKU-14', 43.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:19', '2026-05-29 20:22:19'),
(349, 1, 1, 'Classic White Crew Neck T-Shirt', 'classic-white-crew-neck-tshirt-15', 'Elevate your basics with this versatile white crew neck tee. Made from a soft, breathable cotton blend, it offers both comfort and durability. Its sleek, timeless design ensures it pairs well with virtually any outfit. Ideal for layering or wearing on its own, this t-shirt is a must-have staple for every wardrobe.', 'SKU-15', 39.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:19', '2026-05-29 20:22:19'),
(350, 1, 1, 'Classic White Tee - Timeless Style and Comfort', 'classic-white-tee--timeless-style-and-comfort-16', 'Elevate your everyday wardrobe with our Classic White Tee. Crafted from premium soft cotton material, this versatile t-shirt combines comfort with durability, perfect for daily wear. Featuring a relaxed, unisex fit that flatters every body type, it\'s a staple piece for any casual ensemble. Easy to care for and machine washable, this white tee retains its shape and softness wash after wash. Pair it with your favorite jeans or layer it under a jacket for a smart look.', 'SKU-16', 73.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:19', '2026-05-29 20:22:19'),
(351, 1, 1, 'Classic Black T-Shirt', 'classic-black-tshirt-17', 'Elevate your everyday style with our Classic Black T-Shirt. This staple piece is crafted from soft, breathable cotton for all-day comfort. Its versatile design features a classic crew neck and short sleeves, making it perfect for layering or wearing on its own. Durable and easy to care for, it\'s sure to become a favorite in your wardrobe.', 'SKU-17', 35.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:20', '2026-05-29 20:22:20'),
(352, 1, 1, 'Sleek White & Orange Wireless Gaming Controller', 'sleek-white--orange-wireless-gaming-controller-18', 'Elevate your gaming experience with this state-of-the-art wireless controller, featuring a crisp white base with vibrant orange accents. Designed for precision play, the ergonomic shape and responsive buttons provide maximum comfort and control for endless hours of gameplay. Compatible with multiple gaming platforms, this controller is a must-have for any serious gamer looking to enhance their setup.', 'SKU-18', 69.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:21', '2026-05-29 20:22:21'),
(353, 1, 1, 'Sleek Wireless Headphone & Inked Earbud Set', 'sleek-wireless-headphone--inked-earbud-set-19', 'Experience the fusion of style and sound with this sophisticated audio set featuring a pair of sleek, white wireless headphones offering crystal-clear sound quality and over-ear comfort. The set also includes a set of durable earbuds, perfect for an on-the-go lifestyle. Elevate your music enjoyment with this versatile duo, designed to cater to all your listening needs.', 'SKU-19', 44.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:21', '2026-05-29 20:22:21'),
(354, 1, 1, 'Sleek Comfort-Fit Over-Ear Headphones', 'sleek-comfortfit-overear-headphones-20', 'Experience superior sound quality with our Sleek Comfort-Fit Over-Ear Headphones, designed for prolonged use with cushioned ear cups and an adjustable, padded headband. Ideal for immersive listening, whether you\'re at home, in the office, or on the move. Their durable construction and timeless design provide both aesthetically pleasing looks and long-lasting performance.', 'SKU-20', 28.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:21', '2026-05-29 20:22:21'),
(355, 1, 1, 'Efficient 2-Slice Toaster', 'efficient-2slice-toaster-21', 'Enhance your morning routine with our sleek 2-slice toaster, featuring adjustable browning controls and a removable crumb tray for easy cleaning. This compact and stylish appliance is perfect for any kitchen, ensuring your toast is always golden brown and delicious.', 'SKU-21', 48.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:21', '2026-05-29 20:22:21'),
(356, 1, 1, 'Sleek Wireless Computer Mouse', 'sleek-wireless-computer-mouse-22', 'Experience smooth and precise navigation with this modern wireless mouse, featuring a glossy finish and a comfortable ergonomic design. Its responsive tracking and easy-to-use interface make it the perfect accessory for any desktop or laptop setup. The stylish blue hue adds a splash of color to your workspace, while its compact size ensures it fits neatly in your bag for on-the-go productivity.', 'SKU-22', 10.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:22', '2026-05-29 20:22:22'),
(357, 1, 1, 'Sleek Modern Laptop with Ambient Lighting', 'sleek-modern-laptop-with-ambient-lighting-23', 'Experience next-level computing with our ultra-slim laptop, featuring a stunning display illuminated by ambient lighting. This high-performance machine is perfect for both work and play, delivering powerful processing in a sleek, portable design. The vibrant colors add a touch of personality to your tech collection, making it as stylish as it is functional.', 'SKU-23', 43.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:22', '2026-05-29 20:22:22'),
(358, 1, 1, 'Sleek Modern Laptop for Professionals', 'sleek-modern-laptop-for-professionals-24', 'Experience cutting-edge technology and elegant design with our latest laptop model. Perfect for professionals on-the-go, this high-performance laptop boasts a powerful processor, ample storage, and a long-lasting battery life, all encased in a lightweight, slim frame for ultimate portability. Shop now to elevate your work and play.', 'SKU-24', 97.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:22', '2026-05-29 20:22:22'),
(359, 1, 1, 'Stylish Red & Silver Over-Ear Headphones', 'stylish-red--silver-overear-headphones-25', 'Immerse yourself in superior sound quality with these sleek red and silver over-ear headphones. Designed for comfort and style, the headphones feature cushioned ear cups, an adjustable padded headband, and a detachable red cable for easy storage and portability. Perfect for music lovers and audiophiles who value both appearance and audio fidelity.', 'SKU-25', 39.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:22', '2026-05-29 20:22:22'),
(360, 1, 1, 'Sleek Mirror Finish Phone Case', 'sleek-mirror-finish-phone-case-26', 'Enhance your smartphone\'s look with this ultra-sleek mirror finish phone case. Designed to offer style with protection, the case features a reflective surface that adds a touch of elegance while keeping your device safe from scratches and impacts. Perfect for those who love a minimalist and modern aesthetic.', 'SKU-26', 27.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:22', '2026-05-29 20:22:22'),
(361, 1, 1, 'Sleek Smartwatch with Vibrant Display', 'sleek-smartwatch-with-vibrant-display-27', 'Experience modern timekeeping with our high-tech smartwatch, featuring a vivid touch screen display, customizable watch faces, and a comfortable blue silicone strap. This smartwatch keeps you connected with notifications and fitness tracking while showcasing exceptional style and versatility.', 'SKU-27', 16.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:22', '2026-05-29 20:22:22'),
(362, 1, 1, 'Sleek Modern Leather Sofa', 'sleek-modern-leather-sofa-28', 'Enhance the elegance of your living space with our Sleek Modern Leather Sofa. Designed with a minimalist aesthetic, it features clean lines and a luxurious leather finish. The robust metal legs provide stability and support, while the plush cushions ensure comfort. Perfect for contemporary homes or office waiting areas, this sofa is a statement piece that combines style with practicality.', 'SKU-28', 53.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(363, 1, 1, 'Mid-Century Modern Wooden Dining Table', 'midcentury-modern-wooden-dining-table-29', 'Elevate your dining room with this sleek Mid-Century Modern dining table, featuring an elegant walnut finish and tapered legs for a timeless aesthetic. Its sturdy wood construction and minimalist design make it a versatile piece that fits with a variety of decor styles. Perfect for intimate dinners or as a stylish spot for your morning coffee.', 'SKU-29', 24.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(364, 1, 1, 'Elegant Golden-Base Stone Top Dining Table', 'elegant-goldenbase-stone-top-dining-table-30', 'Elevate your dining space with this luxurious table, featuring a sturdy golden metal base with an intricate rod design that provides both stability and chic elegance. The smooth stone top in a sleek round shape offers a robust surface for your dining pleasure. Perfect for both everyday meals and special occasions, this table easily complements any modern or glam decor.', 'SKU-30', 66.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(365, 1, 1, 'Modern Elegance Teal Armchair', 'modern-elegance-teal-armchair-31', 'Elevate your living space with this beautifully crafted armchair, featuring a sleek wooden frame that complements its vibrant teal upholstery. Ideal for adding a pop of color and contemporary style to any room, this chair provides both superb comfort and sophisticated design. Perfect for reading, relaxing, or creating a cozy conversation nook.', 'SKU-31', 25.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(366, 1, 1, 'Elegant Solid Wood Dining Table', 'elegant-solid-wood-dining-table-32', 'Enhance your dining space with this sleek, contemporary dining table, crafted from high-quality solid wood with a warm finish. Its sturdy construction and minimalist design make it a perfect addition for any home looking for a touch of elegance. Accommodates up to six guests comfortably and includes a striking fruit bowl centerpiece. The overhead lighting is not included.', 'SKU-32', 67.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(367, 1, 1, 'Modern Minimalist Workstation Setup', 'modern-minimalist-workstation-setup-33', 'Elevate your home office with our Modern Minimalist Workstation Setup, featuring a sleek wooden desk topped with an elegant computer, stylish adjustable wooden desk lamp, and complimentary accessories for a clean, productive workspace. This setup is perfect for professionals seeking a contemporary look that combines functionality with design.', 'SKU-33', 49.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(368, 1, 1, 'Modern Ergonomic Office Chair', 'modern-ergonomic-office-chair-34', 'Elevate your office space with this sleek and comfortable Modern Ergonomic Office Chair. Designed to provide optimal support throughout the workday, it features an adjustable height mechanism, smooth-rolling casters for easy mobility, and a cushioned seat for extended comfort. The clean lines and minimalist white design make it a versatile addition to any contemporary workspace.', 'SKU-34', 71.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(369, 1, 1, 'Futuristic Holographic Soccer Cleats', 'futuristic-holographic-soccer-cleats-35', 'Step onto the field and stand out from the crowd with these eye-catching holographic soccer cleats. Designed for the modern player, these cleats feature a sleek silhouette, lightweight construction for maximum agility, and durable studs for optimal traction. The shimmering holographic finish reflects a rainbow of colors as you move, ensuring that you\'ll be noticed for both your skills and style. Perfect for the fashion-forward athlete who wants to make a statement.', 'SKU-35', 39.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(370, 1, 1, 'Rainbow Glitter High Heels', 'rainbow-glitter-high-heels-36', 'Step into the spotlight with these eye-catching rainbow glitter high heels. Designed to dazzle, each shoe boasts a kaleidoscope of shimmering colors that catch and reflect light with every step. Perfect for special occasions or a night out, these stunners are sure to turn heads and elevate any ensemble.', 'SKU-36', 39.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(371, 1, 1, 'Chic Summer Denim Espadrille Sandals', 'chic-summer-denim-espadrille-sandals-37', 'Step into summer with style in our denim espadrille sandals. Featuring a braided jute sole for a classic touch and adjustable denim straps for a snug fit, these sandals offer both comfort and a fashionable edge. The easy slip-on design ensures convenience for beach days or casual outings.', 'SKU-37', 33.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(372, 1, 1, 'Vibrant Runners: Bold Orange & Blue Sneakers', 'vibrant-runners-bold-orange--blue-sneakers-38', 'Step into style with these eye-catching sneakers featuring a striking combination of orange and blue hues. Designed for both comfort and fashion, these shoes come with flexible soles and cushioned insoles, perfect for active individuals who don\'t compromise on style. The reflective silver accents add a touch of modernity, making them a standout accessory for your workout or casual wear.', 'SKU-38', 27.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(373, 1, 1, 'Vibrant Pink Classic Sneakers', 'vibrant-pink-classic-sneakers-39', 'Step into style with our Vibrant Pink Classic Sneakers! These eye-catching shoes feature a bold pink hue with iconic white detailing, offering a sleek, timeless design. Constructed with durable materials and a comfortable fit, they are perfect for those seeking a pop of color in their everyday footwear. Grab a pair today and add some vibrancy to your step!', 'SKU-39', 84.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(374, 1, 1, 'Futuristic Silver and Gold High-Top Sneaker', 'futuristic-silver-and-gold-hightop-sneaker-40', 'Step into the future with this eye-catching high-top sneaker, designed for those who dare to stand out. The sneaker features a sleek silver body with striking gold accents, offering a modern twist on classic footwear. Its high-top design provides support and style, making it the perfect addition to any avant-garde fashion collection. Grab a pair today and elevate your shoe game!', 'SKU-40', 68.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(375, 1, 1, 'Futuristic Chic High-Heel Boots', 'futuristic-chic-highheel-boots-41', 'Elevate your style with our cutting-edge high-heel boots that blend bold design with avant-garde aesthetics. These boots feature a unique color-block heel, a sleek silhouette, and a versatile light grey finish that pairs easily with any cutting-edge outfit. Crafted for the fashion-forward individual, these boots are sure to make a statement.', 'SKU-41', 36.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(376, 1, 1, 'Elegant Patent Leather Peep-Toe Pumps with Gold-Tone Heel', 'elegant-patent-leather-peeptoe-pumps-with-goldtone-heel-42', 'Step into sophistication with these chic peep-toe pumps, showcasing a lustrous patent leather finish and an eye-catching gold-tone block heel. The ornate buckle detail adds a touch of glamour, perfect for elevating your evening attire or complementing a polished daytime look.', 'SKU-42', 53.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(377, 1, 1, 'Elegant Purple Leather Loafers', 'elegant-purple-leather-loafers-43', 'Step into sophistication with our Elegant Purple Leather Loafers, perfect for making a bold statement. Crafted from high-quality leather with a vibrant purple finish, these shoes feature a classic loafer silhouette that\'s been updated with a contemporary twist. The comfortable slip-on design and durable soles ensure both style and functionality for the modern man.', 'SKU-43', 17.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(378, 1, 1, 'Classic Blue Suede Casual Shoes', 'classic-blue-suede-casual-shoes-44', 'Step into comfort with our Classic Blue Suede Casual Shoes, perfect for everyday wear. These shoes feature a stylish blue suede upper, durable rubber soles for superior traction, and classic lace-up fronts for a snug fit. The sleek design pairs well with both jeans and chinos, making them a versatile addition to any wardrobe.', 'SKU-44', 39.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(379, 1, 1, 'Sleek Futuristic Electric Bicycle', 'sleek-futuristic-electric-bicycle-45', 'This modern electric bicycle combines style and efficiency with its unique design and top-notch performance features. Equipped with a durable frame, enhanced battery life, and integrated tech capabilities, it\'s perfect for the eco-conscious commuter looking to navigate the city with ease.', 'SKU-45', 22.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(380, 1, 1, 'Sleek All-Terrain Go-Kart', 'sleek-allterrain-gokart-46', 'Experience the thrill of outdoor adventures with our Sleek All-Terrain Go-Kart, featuring a durable frame, comfortable racing seat, and robust, large-tread tires perfect for handling a variety of terrains. Designed for fun-seekers of all ages, this go-kart is an ideal choice for backyard racing or exploring local trails.', 'SKU-46', 37.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(381, 1, 1, 'Radiant Citrus Eau de Parfum', 'radiant-citrus-eau-de-parfum-47', 'Indulge in the essence of summer with this vibrant citrus-scented Eau de Parfum. Encased in a sleek glass bottle with a bold orange cap, this fragrance embodies freshness and elegance. Perfect for daily wear, it\'s an olfactory delight that leaves a lasting, zesty impression.', 'SKU-47', 73.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(382, 1, 1, 'Sleek Olive Green Hardshell Carry-On Luggage', 'sleek-olive-green-hardshell-carryon-luggage-48', 'Travel in style with our durable hardshell carry-on, perfect for weekend getaways and business trips. This sleek olive green suitcase features smooth gliding wheels for easy airport navigation, a sturdy telescopic handle, and a secure zippered compartment to keep your belongings safe. Its compact size meets most airline overhead bin requirements, ensuring a hassle-free flying experience.', 'SKU-48', 48.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(383, 1, 1, 'Chic Transparent Fashion Handbag', 'chic-transparent-fashion-handbag-49', 'Elevate your style with our Chic Transparent Fashion Handbag, perfect for showcasing your essentials with a clear, modern edge. This trendy accessory features durable acrylic construction, luxe gold-tone hardware, and an elegant chain strap. Its compact size ensures you can carry your day-to-day items with ease and sophistication.', 'SKU-49', 61.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(384, 1, 1, 'Trendy Pink-Tinted Sunglasses', 'trendy-pinktinted-sunglasses-50', 'Step up your style game with these fashionable black-framed, pink-tinted sunglasses. Perfect for making a statement while protecting your eyes from the glare. Their bold color and contemporary design make these shades a must-have accessory for any trendsetter looking to add a pop of color to their ensemble.', 'SKU-50', 38.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(385, 17, 34, 'Elegant Glass Tumbler Set', 'elegant-glass-tumbler-set-51', 'Enhance your drinkware collection with our sophisticated set of glass tumblers, perfect for serving your favorite beverages. This versatile set includes both clear and subtly tinted glasses, lending a modern touch to any table setting. Crafted with quality materials, these durable tumblers are designed to withstand daily use while maintaining their elegant appeal.', 'EGT-51', 149.00, 99.00, 80, 0.35, 'active', '2026-05-29 20:22:23', '2026-06-01 18:12:30'),
(386, 3, 2, 'Iphone 17', 'iphone-17-52', 'Smartphone', 'IP-17', 94999.00, 89999.00, 20, 0.40, 'active', '2026-05-29 20:22:23', '2026-06-01 18:16:28'),
(387, 3, 2, 'Iphone17', 'iphone17-54', 'Smartphone', 'IP-17-54', 99999.00, 93999.00, 20, 0.35, 'active', '2026-05-29 20:22:23', '2026-06-01 18:16:28'),
(388, 3, 2, 'Iphone16', 'iphone16-55', 'Smartphone', 'IP-16', 89999.00, 79999.00, 25, 0.40, 'active', '2026-05-29 20:22:23', '2026-06-01 18:16:28'),
(389, 1, 1, 'Tv lg', 'tv-lg-56', 'smart tv', 'SKU-56', 58.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(390, 1, 1, 'garrafa termica', 'garrafa-termica-58', 'garrafa para agua gelada ou quente', 'SKU-58', 30.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(391, 1, 1, 'Tv', 'tv-67', 'Smart', 'SKU-67', 58.00, NULL, 0, NULL, 'active', '2026-05-29 20:22:23', '2026-05-29 20:22:23'),
(392, NULL, NULL, 'Majestic Mountain Graphic T-Shirt', 'majestic-mountain-graphic-tshirt-api-6a19f7840e055', 'Elevate your wardrobe with this stylish black t-shirt featuring a striking monochrome mountain range graphic. Perfect for those who love the outdoors or want to add a touch of nature-inspired design to their look, this tee is crafted from soft, breathable fabric ensuring all-day comfort. Ideal for casual outings or as a unique gift, this t-shirt is a versatile addition to any collection.', 'API-6a19f7840e058', 44.00, NULL, 0, NULL, 'active', '2026-05-29 20:31:00', '2026-05-29 20:31:00'),
(393, NULL, NULL, 'Classic Red Pullover Hoodie', 'classic-red-pullover-hoodie-api-6a19f7840efc3', 'Elevate your casual wardrobe with our Classic Red Pullover Hoodie. Crafted with a soft cotton blend for ultimate comfort, this vibrant red hoodie features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs for a snug fit. The timeless design ensures easy pairing with jeans or joggers for a relaxed yet stylish look, making it a versatile addition to your everyday attire.', 'API-6a19f7840efc6', 10.00, NULL, 0, NULL, 'active', '2026-05-29 20:31:00', '2026-05-29 20:31:00'),
(394, NULL, NULL, 'Classic Heather Gray Hoodie', 'classic-heather-gray-hoodie-api-6a19f7840f8ab', 'Stay cozy and stylish with our Classic Heather Gray Hoodie. Crafted from soft, durable fabric, it features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs. Perfect for a casual day out or a relaxing evening in, this hoodie is a versatile addition to any wardrobe.', 'API-6a19f7840f8ae', 69.00, NULL, 0, NULL, 'active', '2026-05-29 20:31:00', '2026-05-29 20:31:00'),
(395, NULL, NULL, 'Classic Grey Hooded Sweatshirt', 'classic-grey-hooded-sweatshirt-api-6a19f78410225', 'Elevate your casual wear with our Classic Grey Hooded Sweatshirt. Made from a soft cotton blend, this hoodie features a front kangaroo pocket, an adjustable drawstring hood, and ribbed cuffs for a snug fit. Perfect for those chilly evenings or lazy weekends, it pairs effortlessly with your favorite jeans or joggers.', 'API-6a19f78410227', 90.00, NULL, 0, NULL, 'active', '2026-05-29 20:31:00', '2026-05-29 20:31:00'),
(396, NULL, NULL, 'Classic Black Hooded Sweatshirt', 'classic-black-hooded-sweatshirt-api-6a19f78411225', 'Elevate your casual wardrobe with our Classic Black Hooded Sweatshirt. Made from high-quality, soft fabric that ensures comfort and durability, this hoodie features a spacious kangaroo pocket and an adjustable drawstring hood. Its versatile design makes it perfect for a relaxed day at home or a casual outing.', 'API-6a19f78411228', 79.00, NULL, 0, NULL, 'active', '2026-05-29 20:31:00', '2026-05-29 20:31:00'),
(397, NULL, NULL, 'Classic Comfort Fit Joggers', 'classic-comfort-fit-joggers-api-6a19f784121fe', 'Discover the perfect blend of style and comfort with our Classic Comfort Fit Joggers. These versatile black joggers feature a soft elastic waistband with an adjustable drawstring, two side pockets, and ribbed ankle cuffs for a secure fit. Made from a lightweight and durable fabric, they are ideal for both active days and relaxed lounging.', 'API-6a19f78412201', 25.00, NULL, 0, NULL, 'active', '2026-05-29 20:31:00', '2026-05-29 20:31:00'),
(398, NULL, NULL, 'Classic Comfort Drawstring Joggers', 'classic-comfort-drawstring-joggers-api-6a19f78413237', 'Experience the perfect blend of comfort and style with our Classic Comfort Drawstring Joggers. Designed for a relaxed fit, these joggers feature a soft, stretchable fabric, convenient side pockets, and an adjustable drawstring waist with elegant gold-tipped detailing. Ideal for lounging or running errands, these pants will quickly become your go-to for effortless, casual wear.', 'API-6a19f7841323a', 79.00, NULL, 0, NULL, 'active', '2026-05-29 20:31:00', '2026-05-29 20:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `attribute_id` int(11) NOT NULL,
  `attribute_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`attribute_id`, `attribute_name`) VALUES
(1, 'Color'),
(2, 'Size'),
(3, 'RAM'),
(4, 'Storage');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `value_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`value_id`, `attribute_id`, `value`) VALUES
(1, 1, 'Black'),
(2, 1, 'White'),
(3, 1, 'Blue'),
(4, 2, 'S'),
(5, 2, 'M'),
(6, 2, 'L'),
(7, 3, '8GB'),
(8, 3, '16GB'),
(9, 4, '128GB'),
(10, 4, '256GB');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_main` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`image_id`, `product_id`, `image_url`, `is_main`) VALUES
(1, 1, 'images/s24-main.jpg', 1),
(2, 1, 'images/s24-back.jpg', 0),
(3, 2, 'images/iphone15-main.jpg', 1),
(4, 3, 'images/dell-main.jpg', 1),
(5, 4, 'images/hp-main.jpg', 1),
(6, 5, 'images/nike-shirt.jpg', 1),
(7, 6, 'images/adidas-shoes.jpg', 1),
(8, 7, 'images/H&M-Jeans.jpg', 1),
(9, 8, 'images/leather.webp', 1),
(10, 9, 'images/oneplus13.jpg', 1),
(11, 10, 'images/Redmi note 15 Pro.jpg', 1),
(12, 11, 'images/PumaFootballshoes.jpg', 1),
(13, 12, 'images/BoatRockerzbluetooth.jpg', 1),
(14, 13, 'images/LenovoIdeaPadSlim5.jpg', 1),
(15, 14, 'images/Asus.jpg', 1),
(16, 15, 'images/apple.jfif', 1),
(17, 16, 'images/boatR.jfif', 1),
(18, 17, 'images/JBL.jfif', 1),
(19, 18, 'images/sony.jfif', 1),
(20, 19, 'images/nikesneakers.jfif', 1),
(21, 20, 'images/Levi.jfif', 1),
(22, 21, 'images/AS.jfif', 1),
(23, 22, 'images/wildcraft.webp', 1),
(24, 23, 'images/American.jfif', 1),
(25, 24, 'images/WL.jfif', 1),
(26, 25, 'images/reebokBat.jpg', 1),
(27, 26, 'images/book.jfif', 1),
(28, 27, 'images/Bear.webp', 1),
(326, 328, 'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp', 1),
(327, 329, 'https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/thumbnail.webp', 1),
(328, 330, 'https://cdn.dummyjson.com/product-images/beauty/powder-canister/thumbnail.webp', 1),
(329, 331, 'https://cdn.dummyjson.com/product-images/beauty/red-lipstick/thumbnail.webp', 1),
(330, 332, 'https://cdn.dummyjson.com/product-images/beauty/red-nail-polish/thumbnail.webp', 1),
(331, 333, 'https://cdn.dummyjson.com/product-images/fragrances/calvin-klein-ck-one/thumbnail.webp', 1),
(332, 334, 'https://cdn.dummyjson.com/product-images/fragrances/chanel-coco-noir-eau-de/thumbnail.webp', 1),
(333, 342, 'https://i.imgur.com/9LFjwpI.jpeg', 1),
(334, 343, 'https://i.imgur.com/R3iobJA.jpeg', 1),
(335, 344, 'https://i.imgur.com/wXuQ7bm.jpeg', 1),
(336, 345, 'https://i.imgur.com/cBuLvBi.jpeg', 1),
(337, 346, 'https://i.imgur.com/KeqG6r4.jpeg', 1),
(338, 347, 'https://i.imgur.com/UsFIvYs.jpeg', 1),
(339, 348, 'https://i.imgur.com/eGOUveI.jpeg', 1),
(340, 349, 'https://i.imgur.com/axsyGpD.jpeg', 1),
(341, 350, 'https://i.imgur.com/Y54Bt8J.jpeg', 1),
(342, 351, 'https://i.imgur.com/9DqEOV5.jpeg', 1),
(343, 352, 'https://i.imgur.com/ZANVnHE.jpeg', 1),
(344, 353, 'https://i.imgur.com/yVeIeDa.jpeg', 1),
(345, 354, 'https://i.imgur.com/SolkFEB.jpeg', 1),
(346, 355, 'https://i.imgur.com/keVCVIa.jpeg', 1),
(347, 356, 'https://i.imgur.com/w3Y8NwQ.jpeg', 1),
(348, 357, 'https://i.imgur.com/OKn1KFI.jpeg', 1),
(349, 358, 'https://i.imgur.com/ItHcq7o.jpeg', 1),
(350, 359, 'https://i.imgur.com/YaSqa06.jpeg', 1),
(351, 360, 'https://i.imgur.com/yb9UQKL.jpeg', 1),
(352, 361, 'https://i.imgur.com/LGk9Jn2.jpeg', 1),
(353, 362, 'https://i.imgur.com/Qphac99.jpeg', 1),
(354, 363, 'https://i.imgur.com/DMQHGA0.jpeg', 1),
(355, 364, 'https://i.imgur.com/NWIJKUj.jpeg', 1),
(356, 365, 'https://i.imgur.com/6wkyyIN.jpeg', 1),
(357, 366, 'https://i.imgur.com/4lTaHfF.jpeg', 1),
(358, 367, 'https://i.imgur.com/3oXNBst.jpeg', 1),
(359, 368, 'https://i.imgur.com/3dU0m72.jpeg', 1),
(360, 369, 'https://i.imgur.com/qNOjJje.jpeg', 1),
(361, 370, 'https://i.imgur.com/62gGzeF.jpeg', 1),
(362, 371, 'https://i.imgur.com/9qrmE1b.jpeg', 1),
(363, 372, 'https://i.imgur.com/hKcMNJs.jpeg', 1),
(364, 373, 'https://i.imgur.com/mcW42Gi.jpeg', 1),
(365, 374, 'https://i.imgur.com/npLfCGq.jpeg', 1),
(366, 375, 'https://i.imgur.com/HqYqLnW.jpeg', 1),
(367, 376, 'https://i.imgur.com/AzAY4Ed.jpeg', 1),
(368, 377, 'https://i.imgur.com/Au8J9sX.jpeg', 1),
(369, 378, 'https://i.imgur.com/sC0ztOB.jpeg', 1),
(370, 379, 'https://i.imgur.com/BG8J0Fj.jpg', 1),
(371, 380, 'https://i.imgur.com/Ex5x3IU.jpg', 1),
(372, 381, 'https://i.imgur.com/xPDwUb3.jpg', 1),
(373, 382, 'https://i.imgur.com/jVfoZnP.jpg', 1),
(374, 383, 'https://i.imgur.com/Lqaqz59.jpg', 1),
(375, 384, 'https://i.imgur.com/0qQBkxX.jpg', 1),
(376, 385, 'https://i.imgur.com/TF0pXdL.jpg', 1),
(377, 386, 'https://m.media-amazon.com/images/I/51k0qRQFcuL._AC_SX679_.jpg', 1),
(378, 387, 'https://m.media-amazon.com/images/I/51k0qRQFcuL._AC_SX679_.jpg', 1),
(379, 388, 'https://m.media-amazon.com/images/I/51k0qRQFcuL._AC_SX679_.jpg', 1),
(380, 389, 'https://www.lg.com/content/dam/channel/wcms/br/images/tv/qned73/1-1600-qned73.jpg/jcr:content/renditions/thum-1600x1062.jpeg?w=800', 1),
(381, 390, 'images/bottless.webp', 1),
(382, 391, 'images/Tv-67cool.webp', 1),
(383, 392, 'https://i.imgur.com/QkIa5tT.jpeg', 1),
(384, 393, 'https://i.imgur.com/1twoaDy.jpeg', 1),
(385, 394, 'https://i.imgur.com/cHddUCu.jpeg', 1),
(386, 395, 'https://i.imgur.com/R2PN9Wq.jpeg', 1),
(387, 396, 'https://i.imgur.com/cSytoSD.jpeg', 1),
(388, 397, 'https://i.imgur.com/ZKGofuB.jpeg', 1),
(389, 398, 'https://i.imgur.com/mp3rUty.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `variant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`variant_id`, `product_id`, `sku`, `price`, `stock_quantity`) VALUES
(1, 1, 'SAM-BLK-128', 72000.00, 15),
(2, 1, 'SAM-WHT-256', 76000.00, 10),
(3, 2, 'IP15-BLK-128', 83000.00, 8),
(4, 5, 'NIK-TS-M-BLK', 1200.00, 50),
(5, 6, 'ADI-RUN-9', 3999.00, 20);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `product_id`, `rating`, `review`, `created_at`) VALUES
(1, 1, 1, 5, 'Excellent camera and battery life', '2026-05-28 13:43:58'),
(2, 2, 2, 4, 'Very smooth performance', '2026-05-28 13:43:58'),
(3, 3, 6, 5, 'Very comfortable running shoes', '2026-05-28 13:43:58'),
(4, 1, 5, 5, 'Soft fabric and nice fitting', '2026-05-28 13:43:58'),
(5, 1, 14, 4, '', '2026-05-30 18:09:28'),
(6, 1, 10, 4, '', '2026-06-01 15:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `courier_name` varchar(100) DEFAULT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `shipping_status` enum('pending','shipped','in_transit','delivered') DEFAULT 'pending',
  `shipped_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `order_id`, `courier_name`, `tracking_number`, `shipping_status`, `shipped_at`, `delivered_at`) VALUES
(1, 1, 'Delhivery', 'DLV123456', 'delivered', '2026-05-28 13:43:50', '2026-05-28 13:43:50'),
(2, 2, 'BlueDart', 'BD987654', 'in_transit', '2026-05-28 13:43:50', NULL),
(3, 3, 'Ekart', 'EK0003', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rates`
--

CREATE TABLE `shipping_rates` (
  `shipping_id` int(11) NOT NULL,
  `state_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_slovenian_ci NOT NULL,
  `shipping_charge` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_rates`
--

INSERT INTO `shipping_rates` (`shipping_id`, `state_name`, `shipping_charge`) VALUES
(2, 'Gujrat', 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` enum('active','inactive','blocked') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password_hash`, `phone`, `status`, `created_at`) VALUES
(1, 'Rahul', 'Sharma', 'rahul@gmail.com', 'rahul123', '9876543210', 'active', '2026-05-28 13:40:42'),
(2, 'Priya', 'Verma', 'priya@gmail.com', 'priya123', '9876543211', 'active', '2026-05-28 13:40:42'),
(3, 'Amit', 'Kumar', 'amit@gmail.com', 'amit123', '9876543212', 'active', '2026-05-28 13:40:42'),
(4, 'Sneha', 'Singh', 'sneha@gmail.com', 'sneha123', '9876543213', 'inactive', '2026-05-28 13:40:42'),
(5, 'Prashant', 'Sharma', 'sharmaprashant6982@gmail.com', 'bmlmu2014', '', 'active', '2026-05-30 14:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`address_id`, `user_id`, `full_name`, `phone`, `address_line1`, `address_line2`, `city`, `state`, `postal_code`, `country`, `is_default`) VALUES
(1, 1, 'Rahul Sharma', '9876543210', 'Road No 5', 'Kankarbagh', 'Patna', 'Bihar', '800020', 'India', 1),
(2, 2, 'Priya Verma', '9876543211', 'MG Road', 'Near Metro Station', 'Delhi', 'Delhi', '110001', 'India', 1),
(3, 3, 'Amit Kumar', '9876543212', 'Boring Road', 'Near Mall', 'Patna', 'Bihar', '800001', 'India', 1),
(4, 5, 'Prashant Sharma', '9102850930', 'House no 106 dharuhera sector 6 near children park', 'sahara pg ', 'Rewari', 'Haryana', '123106', 'India', 1);

-- --------------------------------------------------------

--
-- Table structure for table `variant_attribute_map`
--

CREATE TABLE `variant_attribute_map` (
  `id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `variant_attribute_map`
--

INSERT INTO `variant_attribute_map` (`id`, `variant_id`, `attribute_id`, `value_id`) VALUES
(17, 1, 1, 1),
(18, 1, 4, 9),
(19, 2, 1, 2),
(20, 2, 4, 10),
(21, 3, 1, 1),
(22, 3, 4, 9),
(23, 4, 1, 1),
(24, 4, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `user_id`, `product_id`, `created_at`) VALUES
(1, 1, 2, '2026-05-28 13:43:05'),
(2, 1, 3, '2026-05-28 13:43:05'),
(3, 2, 1, '2026-05-28 13:43:05'),
(4, 3, 5, '2026-05-28 13:43:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`cart_item_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `variant_id` (`variant_id`),
  ADD KEY `idx_cart_items_cart` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_category_id` (`parent_category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_number` (`order_number`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `idx_orders_user` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `variant_id` (`variant_id`),
  ADD KEY `idx_order_items_order` (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `idx_products_category` (`category_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`variant_id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `variant_attribute_map`
--
ALTER TABLE `variant_attribute_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variant_id` (`variant_id`),
  ADD KEY `attribute_id` (`attribute_id`),
  ADD KEY `value_id` (`value_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `cart_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `variant_attribute_map`
--
ALTER TABLE `variant_attribute_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_ibfk_3` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`variant_id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `user_addresses` (`address_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`coupon_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`variant_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE SET NULL;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `product_attributes` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `variant_attribute_map`
--
ALTER TABLE `variant_attribute_map`
  ADD CONSTRAINT `variant_attribute_map_ibfk_1` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`variant_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variant_attribute_map_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `product_attributes` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variant_attribute_map_ibfk_3` FOREIGN KEY (`value_id`) REFERENCES `product_attribute_values` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
