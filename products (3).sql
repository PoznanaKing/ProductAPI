-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Sze 30. 08:45
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `shop`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `Id` varchar(36) COLLATE utf8_hungarian_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `CreatedTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`Id`, `Name`, `Price`, `CreatedTime`) VALUES
('02963b0f-947b-4ff7-bf09-b40f4a2f7175', 'Remy Red Berry Infusion', 2500, '2024-08-03'),
('07ccf66b-f2a3-44e7-b89b-4057998b31ef', 'Muffin Mix - Oatmeal', 1244, '2024-08-20'),
('0852f77f-de35-4328-8462-855c0b425c02', 'Wine - Magnotta - Red, Baco', 6023, '2024-04-12'),
('0a87a2bb-1fb8-47e4-800d-c898d9d93b88', 'Spice - Paprika', 5848, '2024-09-24'),
('0c23a5e7-423e-41a6-bcc6-3f2e2030f286', 'Long Island Ice Tea', 9010, '2024-08-11'),
('0d03e99e-7934-49ea-af6b-6055273fa162', 'Chicken - Whole Roasting', 9918, '2024-01-24'),
('0ed2621d-3f98-4bc7-9199-492fbe5ec79c', 'Appetizer - Cheese Bites', 5799, '2024-06-02'),
('0f09f8ec-8f4e-4a0c-9e6c-f6a9a6126074', 'Cookies - Amaretto', 5366, '2024-01-11'),
('10a48d66-4021-4d47-b064-e4103bdd9619', 'Arctic Char - Fillets', 1197, '2024-06-09'),
('11d1dcdd-d2b0-4634-aeae-d06f620465dc', 'Spinach - Packaged', 5561, '2023-10-12'),
('16edcc84-6da4-49ae-95d9-7aa7a1c0996b', 'Red Currant Jelly', 5695, '2023-11-29'),
('187a9cab-ab4f-4287-a0c7-9a1562716782', 'Plate Foam Laminated 9in Blk', 8699, '2024-06-15'),
('18d2c3b7-44dd-460f-89ff-91a813d2f2e6', 'Extract - Vanilla,artificial', 3547, '2024-01-02'),
('19e59419-7926-4110-891e-8b61a0ca08ec', 'Bread Foccacia Whole', 2579, '2024-07-10'),
('1bd8dc4b-5563-4d81-ac08-0ae561e4d52a', 'Steampan - Foil', 1295, '2024-07-04'),
('1d12efca-8351-4550-bc0d-2690d643c519', 'Cream - 10%', 5362, '2023-11-06'),
('1e77f1af-ef1a-43d2-ac6d-794d9a020509', 'Asparagus - Green, Fresh', 5713, '2023-10-31'),
('23b15891-3b2d-4376-b6d4-2f6d23d0d63c', 'Marsala - Sperone, Fine, D.o.c.', 5301, '2024-01-15'),
('245837d3-1c97-48c3-85f8-0a8e7b4b527c', 'Yogurt - Raspberry, 175 Gr', 4231, '2024-04-20'),
('24d17d38-de22-41d4-8851-5577e44945b0', 'Plastic Arrow Stir Stick', 3565, '2024-07-16'),
('26de908f-2735-47d5-86a3-ce04397b04d1', 'Mushroom - King Eryingii', 2386, '2023-12-24'),
('275b0d27-daf6-439f-ac88-d57f67a96c8a', 'Wine - Vidal Icewine Magnotta', 8501, '2024-01-09'),
('275e823b-e24e-4b8b-b4f6-2bb784d0ab78', 'Soup - Campbells Chili', 2384, '2023-12-13'),
('282940ef-f2ea-4178-81be-0742bbfdd02d', 'Coffee - 10oz Cup 92961', 8392, '2024-04-21'),
('28845c5f-beac-45d2-ab09-645633aecb10', 'Steel Wool', 3959, '2024-01-29'),
('2b1e054b-4e6a-43f3-b246-8c1ca0a0b933', 'Tia Maria', 4250, '2024-05-08'),
('2d29bd85-b6e3-44f6-a71f-a49b19f8c457', 'Cookies - Englishbay Oatmeal', 8972, '2024-05-07'),
('2eeb952a-a01c-412e-ba37-c449c149e7ac', 'Turkey - Breast, Smoked', 2854, '2024-07-10'),
('30e0a138-ad2e-4d9f-9854-8ac5b3210002', 'Puff Pastry - Sheets', 8854, '2024-04-04'),
('35c09ca3-40d9-4e64-96cf-545a0663ad3c', 'Pasta - Rotini, Colour, Dry', 4156, '2024-04-30'),
('36d796e5-0d4b-4542-8421-cc1439f3d16e', 'Tandoori Curry Paste', 1651, '2024-08-15'),
('3791cd48-489e-4fb7-b99e-0997df94ef67', 'Scallop - St. Jaques', 3202, '2023-12-28'),
('384cb64c-ebca-4c4e-abce-a4043caa7e7f', 'Yams', 5766, '2023-10-24'),
('41e05354-ce9d-4451-b6e0-a127233d511c', 'Nantucket Apple Juice', 5011, '2024-05-10'),
('41e8d539-ed36-4b33-9a70-714f2b147269', 'Beans - Wax', 8901, '2024-03-13'),
('4b7c8a16-2890-48ed-aec5-b320551b9cb9', 'Muffin Chocolate Individual Wrap', 5043, '2024-06-01'),
('4d96cd12-a9d8-4af1-994e-8bd57830a28b', 'Glucose', 2295, '2024-07-08'),
('4dd01fc3-4d15-4fda-87c0-3fb03ce259bf', 'Apricots Fresh', 4955, '2024-02-02'),
('56516caf-2af1-4784-a6ee-3d1deb8e46a4', 'Flounder - Fresh', 8184, '2024-03-09'),
('5869ee30-b771-4ffb-b71a-0c4b53525987', 'Wine - Acient Coast Caberne', 4868, '2023-12-23'),
('5aeefec6-5992-472e-b621-75cc88b5c6d8', 'Wine La Vielle Ferme Cote Du', 1512, '2024-04-02'),
('5b68f083-2347-4b84-93da-7db8f283407f', 'Bagel - 12 Grain Preslice', 8935, '2024-08-21'),
('5bc131f7-e296-4e30-8195-42b0f21057ea', 'Wine - Red, Pinot Noir, Chateau', 9967, '2024-08-09'),
('5ef4981b-b461-48f4-adf4-41dbf62f3966', 'Soap - Hand Soap', 1135, '2023-12-04'),
('603f59b6-e5af-47a7-b16a-5017b1626e6d', 'Sobe - Berry Energy', 697, '2023-11-19'),
('609f4a66-d143-4ee9-80bf-306259c0686a', 'Muffins - Assorted', 4716, '2024-04-17'),
('60abf559-9165-4f9e-886c-27b0a2853741', 'Wine - Merlot Vina Carmen', 5830, '2023-11-04'),
('60d3d735-b07e-4272-9948-7c76d2db45c1', 'Pasta - Cannelloni, Sheets, Fresh', 704, '2024-08-18'),
('613999a6-ef1b-4e3f-ad9d-c97eb881914e', 'Lamb - Whole, Frozen', 7541, '2024-07-22'),
('67b9d0ff-a042-4f2f-9fae-aff9e7c1d246', 'Butcher Twine 4r', 4864, '2023-11-14'),
('6895ed5b-70c3-4a78-9d68-b2985edeb843', 'Calypso - Pineapple Passion', 2851, '2024-02-11'),
('6bcc9f7b-4b64-454b-84f5-ed7d5ba94ed3', 'Coconut - Whole', 3822, '2023-10-16'),
('78b2a949-f2c1-4797-a146-853458a7d7f0', 'Pork Ham Prager', 4803, '2023-11-24'),
('7ba612a8-b5df-4740-9960-fa40562be001', 'Foam Tray S2', 5646, '2024-04-09'),
('7da2c821-70a8-493e-9887-aa9fec914733', 'Chocolate - Semi Sweet, Calets', 896, '2024-04-30'),
('82482250-daa8-469d-907b-a4343d9f5331', 'Truffle - Peelings', 5566, '2023-11-19'),
('84e5cd94-a5b7-469f-8fa8-0f2e1672cbbc', 'Chips Potato Salt Vinegar 43g', 2222, '2024-08-05'),
('857d398c-4c66-43a1-bf44-6ab1942b9f8d', 'Southern Comfort', 4236, '2024-02-03'),
('8693c359-d833-4866-b252-ddd8cdcc208f', 'Nestea - Ice Tea, Diet', 6602, '2024-09-27'),
('8808adff-26f6-474f-bfa7-02a77b4b5e53', 'Shrimp - Black Tiger 8 - 12', 5681, '2023-10-15'),
('8a78b18d-3763-4b70-9158-5b945a56492f', 'Gingerale - Schweppes, 355 Ml', 4808, '2024-04-05'),
('8f8df93b-fc1c-45d9-9e5e-eef4144bcbf3', 'Wine - Red, Pinot Noir, Chateau', 4760, '2024-04-16'),
('90c0a219-3ce6-46b8-a584-8c89b3d45f7e', 'Wine - Spumante Bambino White', 5481, '2024-06-20'),
('931fc84f-2214-491c-ab1d-dfa738b282b8', 'Bread - Sour Batard', 9612, '2024-06-04'),
('933d0407-e59d-4010-8d11-486a075a58a5', 'Oregano - Fresh', 2120, '2024-04-10'),
('986a16b4-6cad-4654-b889-a13c0d0ee4a4', 'Vinegar - White Wine', 3972, '2024-06-26'),
('9b3ce545-ab1e-417a-95fe-c2f1985b69c4', 'Graham Cracker Mix', 4266, '2024-01-21'),
('9e108159-2200-4e36-8b5f-d4f93165ef19', 'Pasta - Penne, Lisce, Dry', 6201, '2023-11-04'),
('9f0810c5-b95b-4fdd-8c1c-e0db4088b078', 'Squid U5 - Thailand', 7875, '2024-07-19'),
('a083b887-1912-4be2-8a7b-6fd08f56427e', 'Olives - Green, Pitted', 5268, '2024-09-21'),
('a25e383e-249f-4e32-a57e-869f538b19e5', 'Lamb - Leg, Bone In', 4236, '2024-01-24'),
('a4b1e9a9-5ae4-4b01-8016-d2b2de63b577', 'Crackers - Melba Toast', 8655, '2024-05-24'),
('a5bdeb77-799b-4f19-99ee-77931730e7bf', 'Bread - Raisin Walnut Pull', 1448, '2024-02-20'),
('a93f5be3-283a-45fc-b839-5c56e9625d09', 'Scallop - St. Jaques', 529, '2024-07-25'),
('abb00a17-1c56-441b-8bbf-21d714cadc73', 'Juice - Clamato, 341 Ml', 7845, '2024-06-18'),
('ad0f4b48-3025-437b-8d2f-26108c8fcc90', 'Wine - Vouvray Cuvee Domaine', 7137, '2024-01-15'),
('af891378-cc24-49a9-b50a-8d3768629f8e', 'Zucchini - Green', 6697, '2023-12-27'),
('afd702ab-796b-4437-8699-38f5385a03d6', 'Bread - French Stick', 9251, '2024-08-30'),
('b2686134-8ba7-46ef-82d0-e54d8f99cb1a', 'Rice - 7 Grain Blend', 2643, '2023-10-12'),
('b51124c8-d502-4e1f-98df-5b7f4fcfbda8', 'Cheese - Mozzarella, Shredded', 8402, '2023-12-24'),
('b9e46cb7-9d55-4fb0-afc2-4cb0b51832da', 'Juice - Apple, 341 Ml', 7567, '2024-08-05'),
('bd01a837-9552-4ae6-b1d9-f9eeda90ddf5', 'Beer - Moosehead', 9115, '2024-04-16'),
('be269b77-403d-4a31-8cbe-e41bf83f7926', 'Butter - Pod', 2796, '2024-08-15'),
('bf5d31c3-ae70-4084-83b2-7c737b84f7ed', 'Sauce - Bernaise, Mix', 9805, '2024-05-23'),
('c1f247de-616e-41f6-8ca6-3bb2ade9b914', 'Wine - Red, Black Opal Shiraz', 5818, '2024-08-22'),
('c47a7d0e-bce8-4931-89ee-3c210af52b59', 'Tortillas - Flour, 8', 3332, '2024-02-12'),
('c5433f7a-f5df-4369-bcb5-7855634e0bd4', 'Wine - White, French Cross', 8924, '2024-03-15'),
('c6bbfb63-4eb0-406f-a0b9-02f632482d7a', 'Tea - Lemon Green Tea', 6710, '2024-02-02'),
('c7f187aa-0e3f-4942-83a0-626342e97f32', 'Gelatine Powder', 7346, '2024-04-09'),
('cc6b72da-d2b1-493e-9bdc-c13c8f8ede36', 'Cheese - Goat With Herbs', 8456, '2024-05-07'),
('d24add23-8578-4b3a-a5ad-c6453a9f93f7', 'Oil - Coconut', 8714, '2024-06-15'),
('d4473a7c-bda3-4c0b-ac21-78abf9a3f0ef', 'Wine - Rhine Riesling Wolf Blass', 5230, '2023-11-25'),
('d7295d7c-7308-476c-8a10-e7ec421b5a42', 'Cookies - Englishbay Chochip', 8945, '2024-06-14'),
('e66ddace-da17-4f62-b763-efaace22ddcf', 'Bonito Flakes - Toku Katsuo', 7310, '2024-01-11'),
('e7e851f9-8399-4e05-ad88-9d47c55fa7d7', 'Bread - Frozen Basket Variety', 9938, '2023-11-11'),
('f18a6360-75c2-4398-85c3-e48e729d2b5e', 'Jameson - Irish Whiskey', 4498, '2024-08-15'),
('f3d21755-2060-4855-af8e-3b9cc5f197a9', 'Ice Cream - Fudge Bars', 2821, '2023-12-11'),
('f53b27a4-af78-4e57-9dc8-dfb88ec793c4', 'Food Colouring - Blue', 5114, '2023-10-18'),
('f85ae414-2fb6-4b9c-82a6-65de0e1fdfbb', 'Prunes - Pitted', 9433, '2024-02-09'),
('fdc9e687-a931-44d6-8359-839da8b0483f', 'Poppy Seed', 9045, '2024-01-05');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
