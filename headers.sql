-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 07 2022 г., 19:53
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `headers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `headers`
--

CREATE TABLE `headers` (
  `url` varchar(1000) NOT NULL,
  `user_agent` varchar(1000) NOT NULL,
  `cookie` text NOT NULL,
  `referer` varchar(1000) NOT NULL,
  `encoding` varchar(1000) NOT NULL,
  `proxy` varchar(1000) NOT NULL,
  `headers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `headers`
--

INSERT INTO `headers` (`url`, `user_agent`, `cookie`, `referer`, `encoding`, `proxy`, `headers`) VALUES
('https://www.booking.com/hotel/fi/ilona-apartment.ru.html?aid=304142&label=gen173nr-1DCAEoggI46AdIM1gEaEiIAQGYASG4ARfIAQzYAQPoAQGIAgGoAgO4AuLCy5kGwAIB0gIkM2ExN2M4NjEtNmQ4ZS00NTczLTkyMzItZmEzZjZmN2UxYjFh2AIE4AIB&sid=d8ef2b0f8af3aa31d84d53aec505d0cc&checkin=2022-09-28;checkout=2022-09-29;dest_id=-1372348;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;hpos=1;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;soh=1;sr_order=popularity;srepoch=1664372954;srpvid=9b8e612c5f6d0279;type=total;ucfs=1&#no_availability_msg', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 YaBrowser/21.3.3.234 Yowser/2.5 Safari/537.36', '_ym_uid=1625923435653358946; _pin_unauth=dWlkPVpEQTVPREppTXpBdE56UXdNUzAwWldOa0xUaGlObVF0WWpNd056VXhabU5pWXpVMw; _pxhd=YYK-76IW3cUTa9ytgv1GT2vJVFdqC8Ilbl7kIj92rOOZxlLT9JgxZQ%2F4Ut4QI%2F1AffDCBSPct4JN0t5t65wv9A%3D%3D%3AoMfEKSE%2FTZebWn5NWLLUQ2oPynDHGI8PRuugWpUbLMngrb36h2o2MFF5c4-Wd1aOTxvR93Vzl2EKZWjTuuYV5byFtovcvwR1Rb7lb5RT%2Fk8%3D; _ym_d=1650546324; bkng_sso_session=e30; _px_f394gi7Fvmc43dfg_user_id=MjkwZTNiMTAtZGRjZi0xMWVjLTkxMGMtNjE5MGY2ZGRhZTc1; FPID=FPID2.2.gv2pDUpX8fOd3nnQHsgTTRt%2FlDhepmwPb5a1iwDEFoY%3D.1625923434; _ga_A12345=GS1.1.1653670500.2.0.1653670500.0; cors_js=1; OptanonAlertBoxClosed=2022-07-13T17:50:11.534Z; _gcl_au=1.1.65598399.1658336646; _scid=df1bd154-3d10-4955-8cb9-fdb49c92b9e9; _pxhd=6VvMg05ROZVBaAlQwobq3i%2FNNYsQQ-DEtzDV5EfaMRjjj5eECLQ-mo5bJw1Vu72kQJEvYArMewDgaPJZY25f4Q%3D%3D%3A5XnW0HXHa1Qp-7E20dulMrz0RzcGrHQ4BqfaS1A1Ox75M-xkVb9T9ymomyV0FKkeIhPhNO1LIjiXRun6WzVUe%2FqTohDrSP6F6INLwEYNbBU%3D; bkng_frontend_sese_exp=0; pxcts=542797dd-3e59-11ed-84ff-686879646e74; _pxvid=542788a9-3e59-11ed-84ff-686879646e74; bkng_prue=1; g_state={\"i_p\":1666698096719,\"i_l\":4}; BJS=-; _gid=GA1.2.1781151268.1664372560; has_preloaded=1; bkng_sso_ses=eyJib29raW5nX2dsb2JhbCI6W3siYSI6MSwiaCI6IlpuQTJQYVpNSC82eENFdy8xK25UVE4yUXVacGhVM3VqUmxQUmNxbGRSN00ifV19; _pxff_tm=1; OptanonConsent=consentId=5f96937a-2216-408c-aef3-5f8bbe36eda2&datestamp=Wed+Sep+28+2022+16%3A49%3A41+GMT%2B0300+(%D0%92%D0%BE%D1%81%D1%82%D0%BE%D1%87%D0%BD%D0%B0%D1%8F+%D0%95%D0%B2%D1%80%D0%BE%D0%BF%D0%B0%2C+%D0%BB%D0%B5%D1%82%D0%BD%D0%B5%D0%B5+%D0%B2%D1%80%D0%B5%D0%BC%D1%8F)&version=6.22.0&interactionCount=1&isIABGlobal=false&hosts=&landingPath=NotLandingPage&groups=C0001%3A1%2CC0002%3A1%2CC0004%3A1&geolocation=FI%3B16&AwaitingReconsent=false&backfilledAt=1628602488823&backfilled_at=1657734612359&isGpcEnabled=0&implicitConsentCountry=GDPR&implicitConsentDate=1650546318186&backfilled_seed=1; _ga_FPD6YLJCJ7=GS1.1.1664372565.45.1.1664372989.0.0.0; _ga=GA1.1.97663631.1625923434; _uetsid=6efb86903f3311eda93df14ffb0b0d6e; _uetvid=12e4cc20e18211eba1db5194e496bea9; _px3=644c4799da31e28ead52b0b743b9f2879e6b0098588904490d8ade011bc2e94a:pv//1lJhoUQhATYM3iniKqtUkXZ1YCJCcTQRZLUrdP8cjXo7m0gqQuEcGySDHSYd7wjb8AqadIwrwqMNsi7cnA==:1000:IwpZvxQKSb2exb3yAf+6IjJEdpcJbXUnYZ5EfT0ZQd6GETeGqKKNHn+HWOeGsX1vSWKc9FOa/aL6ELRrdaGgvjfTbsf3jMsSee5QZ3ouHxmZnE6xkwhouk5SguxOkS6nTZ3OQfY+zi563LqAxw8w1WkiyOltGl08UjAybvwcN3PlNzLl5s0Chr2FXwoq9DTLiMJqw6WRlK73buIPJTKjrw==; _pxde=0f95379d186c82721c2851bc045c75829d53c9b5cd1773457906910d4bcfb980:eyJ0aW1lc3RhbXAiOjE2NjQzNzI5OTk1MzcsImZfa2IiOjAsImlwY19pZCI6W119; bkng=11UmFuZG9tSVYkc2RlIyh9YZN305pdDMb%2Bl5xE4mJnqUcSWhLsU46FJsdhJQBj5SX5ocS7K%2Bgsy%2Bj%2FmlJzP3W5M6wsHLl35rsRdRFfk9BQlOY4hsQK9UkBLeQKzftR7QBsX15eGStzvljlTXRCSC4QlVEndXyZ0eiy%2FkyXNlp17bSM7eHdFzgDUb9orQXP9ie4PcB%2FZuxcXxABnr8m24NG3w%3D%3D; lastSeen=0', '', 'gzip, deflate', '', 'Accept-Language: ru,en;q=0.9,fi;q=0.8,la;q=0.7\r\nHost: www.booking.com\r\nsec-ch-ua: \"Google Chrome\";v=\"105\", \"Not)A;Brand\";v=\"8\", \"Chromium\";v=\"105\"\r\nsec-ch-ua-mobile: ?0\r\nsec-ch-ua-platform: \"Windows\"\r\nSec-Fetch-Dest: document\r\nSec-Fetch-Mode: navigate\r\nSec-Fetch-Site: same-origin\r\nSec-Fetch-User: ?1\r\nUpgrade-Insecure-Requests: 1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
