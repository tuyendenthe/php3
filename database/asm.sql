-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2024 at 04:31 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm`
--

-- --------------------------------------------------------

--
-- Table structure for table `directorys`
--

CREATE TABLE `directorys` (
  `id` bigint UNSIGNED NOT NULL,
  `nameDirectory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directorys`
--

INSERT INTO `directorys` (`id`, `nameDirectory`, `created_at`, `updated_at`) VALUES
(1, 'Bất Động Sản ', NULL, NULL),
(2, 'Người Lao Động ', NULL, NULL),
(3, 'Thế Giới ', NULL, NULL),
(4, 'Chính Trị', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_18_134921_tao_tab_post', 1),
(6, '2024_07_18_143209_tao_loai_tin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body1` text COLLATE utf8mb4_unicode_ci,
  `body2` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateCreated` date NOT NULL,
  `idTag` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idDirectory` int DEFAULT NULL,
  `narura` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body1`, `body2`, `img`, `dateCreated`, `idTag`, `created_at`, `updated_at`, `idDirectory`, `narura`) VALUES
(1, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 1, 1),
(2, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 2, 2),
(3, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 1, 2),
(4, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 4, 3),
(5, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 2, 3),
(6, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 3, 3),
(7, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 4, 3),
(8, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 2, 3),
(9, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 1, 3),
(10, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 2, 3),
(11, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 4, 3),
(12, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 3, 3),
(13, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 4, 3),
(14, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 3, 3),
(15, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 3, 3),
(16, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 2, 3),
(17, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 1, 3),
(18, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 4, 3),
(19, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 1, 3),
(20, 'Trần Văn Tuyền PH40779  ', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội.', 'Để bỏ dấu gạch chân của thẻ và thay đổi màu chữ thành màu đen bằng Bootstrap, bạn có thể sử dụng các lớp tiện ích của Bootstrap. Bootstrap cung cấp lớp text-decoration-none để loại bỏ dấu gạch chân và lớp text-dark để thay đổi màu chữ thành màu đen. Dưới đây là cách bạn có thể chỉnh sửa mã HTML của mình:Dưới đây là một ví dụ về cách tạo một footer cho trang tin tức có tên BaoLaCai.vn bằng cách sử dụng Bootstrap. Footer này sẽ bao gồm thông tin cơ bản như địa chỉ, liên hệ, liên kết nhanh, và các biểu tượng mạng xã hội. ', 'https://thpttranhungdao.edu.vn/wp-content/uploads/2022/11/Anh-Dep-Lam-Hinh-Nen.jpg', '2024-07-18', 1, '2024-07-18 07:30:07', '2024-07-18 07:30:07', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directorys`
--
ALTER TABLE `directorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directorys`
--
ALTER TABLE `directorys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
