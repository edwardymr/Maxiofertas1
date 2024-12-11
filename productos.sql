-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-12-2024 a las 00:09:36
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `Categoria` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `Categoria`, `precio`, `imagen`) VALUES
(64, 'Tinte Palette 7-764 Rubio chocolate cobrizo', 'cuidado_personal', 11900.00, 'imagenes/cuidado_personal/PALETTE_TUBO_7_764_RUBIO_CHOCOLATE_COBRIZO_11900.png'),
(22, 'Centrum Advance 30 Tabs', 'vitaminas', 31500.00, 'imagenes/vitaminas/CENTRUM_ADVANCE_X_30_TABS _31500.jpg'),
(23, 'Emulsión de Scott Cereza 180 ml', 'vitaminas', 15700.00, 'imagenes/vitaminas/EMULSION_SCOTT X_180_ML_CEREZA_15700.jpg'),
(24, 'Gestavit DHA (sobre)', 'vitaminas', 27000.00, 'imagenes/vitaminas/GESTAVIT_DHA_27000.jpg'),
(25, 'Redoxon Total Frasco de 10 Und', 'vitaminas', 18900.00, 'imagenes/vitaminas/redoxon_18900.jpg'),
(26, 'Saw Palmetto 320 mg', 'vitaminas', 56000.00, 'imagenes/vitaminas/SAW_PALMETTO_56000.webp'),
(27, 'Sylbin Suplemento Dietario', 'vitaminas', 2000.00, 'imagenes/vitaminas/SILYBIN_X_60_SOFTGELS_HEALTHY_AMERICA_2000.webp'),
(28, 'Tiamina 300 mg (Sobre)', 'vitaminas', 2500.00, 'imagenes/vitaminas/TIAMINA_300_MG_2500.jpg'),
(29, 'Vitamina C inyectable (Ampolla)', 'vitaminas', 8500.00, 'imagenes/vitaminas/vitamina_c_ecar_8500.jpg'),
(30, 'Base Vogue Mate Natural Avellana 30 g', 'belleza', 17500.00, 'imagenes/belleza/BASE_VOGUE_MATE_AVELLANA_X_30_ML_17500.webp'),
(31, 'Bigen polvo Negro suave 57', 'belleza', 21500.00, 'imagenes/belleza/BIGEN_POLVO_57_NEGRO_SUAVE_NATURAL_21500.png'),
(32, 'Bigen polvo Chocolate 45', 'belleza', 21500.00, 'imagenes/belleza/BIGEN_POLVO_CHOCOLATE_X_6_GR_21500.jpg'),
(33, 'Chapstick Cereza', 'belleza', 14500.00, 'imagenes/belleza/CHAPSTICK_CEREZA_14500.webp'),
(34, 'Chapstick Hidratación total', 'belleza', 16500.00, 'imagenes/belleza/CHAPSTICK_HIDRATACION_TOTAL_16500.jpg'),
(35, 'Corrector Vogue Mate Natural', 'belleza', 9900.00, 'imagenes/belleza/CORRECTOR_VOGUE_MATE_NATURAL_9900.png'),
(36, 'Nivea crema corporal Q10 Plus', 'belleza', 23500.00, 'imagenes/belleza/NIVEA_CREMA_CORPORAL_REAFIRMANTE_Q10_PLUS_23500.webp'),
(37, 'Nivea crema facial 5 en 1', 'belleza', 14500.00, 'imagenes/belleza/NIVEA_CREMA_FACIAL_5_EN_1_X_50_ML_14500.jpg'),
(38, 'Pestañina Colossal 7X', 'belleza', 30900.00, 'imagenes/belleza/PESTAÑINA_COLOSSAL_7_X_MAS_VOLUMEN_30900.jpg'),
(39, 'Pestañina Infinity efecto alargador', 'belleza', 21000.00, 'imagenes/belleza/PESTAÑINA_INFINITY_EFECTO_ALARGADOR_19000.webp'),
(40, 'Pestañina Mega Full size Esika', 'belleza', 21000.00, 'imagenes/belleza/PESTAÑINA_MEGA_FULL_SIZE_21000.jpg'),
(41, 'Pestañina Vogue Full Extensión', 'belleza', 13900.00, 'imagenes/belleza/PESTAÑINA_VOGUE_FULL_EXTENSION_XL_13900.jpg'),
(42, 'Crema Acid Mantle Baby 30 g', 'bebes', 18900.00, 'imagenes/bebes/ACID_MANTLE_CREMA_BABY_X _30_GR_18900.jpg'),
(43, 'Colonia Arrurú Duo Pack ( Crema )', 'bebes', 43500.00, 'imagenes/bebes/COLONIA_ARRURRU_AZUL_X_400_ML_CREMA_220_ML_43500.webp'),
(44, 'Colonia Arrurú rosada', 'bebes', 6900.00, 'imagenes/bebes/COLONIA_ARRURRU_ROSADA_X_30_ML_6900.jpg'),
(45, 'Enterogermina bebible', 'bebes', 7500.00, 'imagenes/bebes/ENTEROGERMINA_X _10_VIALES_BEBIBLES_7500.jpg'),
(46, 'Pañitos húmedos Pequeñin Almendra', 'bebes', 12500.00, 'imagenes/bebes/PANITOS_HUMEDOS_PEQUEÑIN_ALMENDRA_X_100_UND_12500.webp'),
(47, 'Pañal Winny Etapa 2 mas Toallitas húmedas', 'bebes', 28500.00, 'imagenes/bebes/PAÑAL_WINNY_ET_2_X_30_UNDS_T_HUMEDAS_X_20_UNDS_28500.jpg'),
(48, 'Pañal Winny Etapa 3 mas Toallitas húmedas', 'bebes', 36800.00, 'imagenes/bebes/PAÑAL_WINNY_ET_3_X_30_UNDS_GRATIS_10_TOALLITAS_HUMEDAS_36800.jpg'),
(49, 'Pañal Winny Etapa 4', 'bebes', 44500.00, 'imagenes/bebes/PAÑAL_WINNY_ULTRATRIM_ETAPA_4_PAQ_44500.jpg'),
(50, 'Pañal Winny Etapa 5', 'bebes', 46200.00, 'imagenes/bebes/PAÑAL_WINNY_ULTRATRIM_ETAPA_5_PAQ_46200.jpg'),
(51, 'Shampoo Jhonson & Jhonson Baby Original 400 ml', 'bebes', 20600.00, 'imagenes/bebes/SHAMPOO_JyJ_BABY_ORIGINAL_400_ML_20600.webp'),
(52, 'Shampoo Jhonson & Jhonson Fuerza y Vitamina 400 ml', 'bebes', 21600.00, 'imagenes/bebes/SHAMPOO_JyJ_FUERZA_Y_VITAMINA_X_400_ML_21600.png'),
(53, 'Toallitas Húmedas Pequeñín 100 und', 'bebes', 12500.00, 'imagenes/bebes/TOALLITAS_HUMEDAS_PEQUEÑIN_KARITE_PAGUE_70_LLEVE_100_UND_12500.jpg'),
(54, 'Allegra 180 mg', 'cuidado_personal', 700.00, 'imagenes/cuidado_personal/ALLEGRA_180_MG_7000.jpg'),
(55, 'Desodorante Balance Clinical Care 50 gr', 'cuidado_personal', 23500.00, 'imagenes/cuidado_personal/BALANCE_CLINICAL_CARE_X_50_GR_23500.png'),
(56, 'Buscapina Fem', 'cuidado_personal', 2000.00, 'imagenes/cuidado_personal/BUSCAPINA_FEM_X_90_COMP_2000.jpg'),
(57, 'Colgate Luminous White Carbón Activado 75 ml', 'cuidado_personal', 14500.00, 'imagenes/cuidado_personal/COLGATE_LUMINOUS_WHITE_CARBON_ACT_X_75_ML_14500.webp'),
(58, 'Corega Ultra Crema sin sabor 20 gr', 'cuidado_personal', 24500.00, 'imagenes/cuidado_personal/COREGA_ULTRA_EN_CREMA_SIN_SABOR_X_20_GR_24500.jpg'),
(59, 'Colgate Sensitive Pro Alivio', 'cuidado_personal', 16500.00, 'imagenes/cuidado_personal/CREMA_DENTAL_COLGATE_SENSITIVE_PRO_ALIVIO_X_50_GR_16500.jpg'),
(60, 'Crema Ponds B3 Anti Manchas Piel seca (sobre)', 'cuidado_personal', 2000.00, 'imagenes/cuidado_personal/CREMA_PONDS_CLARANT_B3_ANTI_MANCHAS_PIEL_SECA_X_SOBRE_2000.jpg'),
(61, 'Depilex Avena Piel sensible', 'cuidado_personal', 20900.00, 'imagenes/cuidado_personal/DEPILEX_CREMA_DEPILATORIA_AVENA_PIEL_SENSIBLE_COLAPSIBLE_20900.png'),
(62, 'Desodorante Lady Speed Stick Floral RollOn 30 ml', 'cuidado_personal', 3900.00, 'imagenes/cuidado_personal/DTE_MINI_LADY_SPEED_STICK_FLORAL_FRESH_X_30_ML_ROLLON_3900.jpg'),
(63, 'Tinte Palette 7-1 Rubio medio cenizo', 'cuidado_personal', 12500.00, 'imagenes/cuidado_personal/PALETTE_7_1_RUBIO_MEDIO_CENIZO_12500.webp'),
(21, 'Cebion Vitamina C (Sobre)', 'vitaminas', 6500.00, 'imagenes/vitaminas/cebion_6500.jpg'),
(20, 'Bénet polvo sin azucar 400 g', 'vitaminas', 49800.00, 'imagenes/vitaminas/BENET_VAINILLA_SIN_AZ_X_400_GR_49800.jpg'),
(19, 'Bénet Kids polvo 240 g', 'vitaminas', 39500.00, 'imagenes/vitaminas/BENET_KIDS_ALIMENTO_POLVO_X_240_GR_39500.png'),
(18, 'Bénet bebida con proteína Frutos rojos 250 ml', 'vitaminas', 8500.00, 'imagenes/vitaminas/BENET_ACTIVE_FRUTOS _OJOS_X_250_ML_8500.webp'),
(17, 'Noxpirin cápsula (Unidad)', 'salud_y_medicamentos', 1500.00, 'imagenes/salud_y_medicamentos/noxpirin_capsula_1500.webp'),
(16, 'Noraver gripa bebida noche (Sobre)', 'salud_y_medicamentos', 3200.00, 'imagenes/salud_y_medicamentos/noraver_gripa_bebida_noche_3200.webp'),
(15, 'Naproxeno 500 mg (Unidad)', 'salud_y_medicamentos', 600.00, 'imagenes/salud_y_medicamentos/naproxeno_500_laproff_600.jpg'),
(14, 'Metformina 850 mg (Sobre)', 'salud_y_medicamentos', 7900.00, 'imagenes/salud_y_medicamentos/metformina_7900.jpg'),
(13, 'Ibuprofeno 800 mg (Sobre)', 'salud_y_medicamentos', 3500.00, 'imagenes/salud_y_medicamentos/ibuprofeno_coaspharma_3500.jpg'),
(12, 'Ibuprofeno 200 mg - Metocarbamol 500 mg (Unidad)', 'salud_y_medicamentos', 1200.00, 'imagenes/salud_y_medicamentos/ibuprofeno_mas_metocarbamol_1200.jpg'),
(11, 'Hidroxido de Aluminio', 'salud_y_medicamentos', 15900.00, 'imagenes/salud_y_medicamentos/hidroxido_15900.jpg'),
(9, 'Dolex Gripa (Unidad)', 'salud_y_medicamentos', 1700.00, 'imagenes/salud_y_medicamentos/dolex_gripa_1700.webp'),
(10, 'Gastro Full Max (Sachet)', 'salud_y_medicamentos', 2000.00, 'imagenes/salud_y_medicamentos/gastrofull_sachet_2000.jpg'),
(8, 'Descongel Gripa cápsula (Unidad)', 'salud_y_medicamentos', 1600.00, 'imagenes/salud_y_medicamentos/descongel_1600.jpg'),
(7, 'Congestex cápsula (Unidad)', 'salud_y_medicamentos', 1600.00, 'imagenes/salud_y_medicamentos/congestex_1600.jpg'),
(6, 'Acetaminofen 500 mg - Genfar (Sobre)', 'salud_y_medicamentos', 1500.00, 'imagenes/salud_y_medicamentos/acetaminofen_genfar_1500.webp'),
(5, 'Supravid sabor naranja 240 ml', 'productos_destacados', 45500.00, 'imagenes/imagenes_pagina_de_inicio/supravid_45500.png'),
(4, 'Protector Solar Tanga mas Gel refrescante', 'productos_destacados', 52900.00, 'imagenes/imagenes_pagina_de_inicio/protector_tanga_mas_gel_52900.webp'),
(3, 'Leche Klim 3+ 500 g', 'productos_destacados', 31500.00, 'imagenes/imagenes_pagina_de_inicio/leche klim_3_31500.jpg'),
(2, 'Electrolit Mora Azul', 'productos_destacados', 8900.00, 'imagenes/imagenes_pagina_de_inicio/electrolit_8900.png'),
(1, 'Anemidox Cápsulas - Merck', 'productos_destacados', 40000.00, 'imagenes/imagenes_pagina_de_inicio/anemidox_40000.webp'),
(65, 'Desodorante Speed Stick Xtreme Night 30 gr', 'cuidado_personal', 4000.00, 'imagenes/cuidado_personal/SPEED_STICK_XTREME_NIGHT_X_30_GR_4000.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
