-- ============================================================
-- GROCERY ITEMS DATABASE - BRAZIL
-- Country: Brazil
-- Description: Grocery inventory database with authentic
--              Brazilian brands and products.
-- Brands: Pilão, Yoki, Bauducco, Guaraná Antigua, Sadia,
--         Perdigão, Camil, Garoto, 3 Corações, Brahma, Skol,
--         Itambacuri, Cachaça 51, União, Tia Rosa, Feteruca,
--         Copal, Rubicão, Friboi, Vigor, Kibon, D'Onofrio,
--         Agrestina, Gavi, Neve, Adoc, Maizena, Toro,
--         Bovril, Nestlé, Tia Jú, Nata
-- ============================================================

DROP TABLE IF EXISTS grocery_items;

CREATE TABLE grocery_items (
    item_id          INT           NOT NULL AUTO_INCREMENT,
    item_name        VARCHAR(150)  NOT NULL,
    brand_name       VARCHAR(100)  NOT NULL,
    category         VARCHAR(80)   NOT NULL,
    price_brl        DECIMAL(10,2) NOT NULL,
    unit_of_measure  VARCHAR(20)   NOT NULL DEFAULT 'un',
    stock_quantity   INT           NOT NULL DEFAULT 0,
    expiration_date  DATE,
    origin_state     VARCHAR(50)   NOT NULL,
    is_organic       BOOLEAN       DEFAULT FALSE,
    barcode          VARCHAR(20)   UNIQUE,
    supplier_name    VARCHAR(100)  NOT NULL,
    PRIMARY KEY (item_id)
);

-- === COFFEE ===
INSERT INTO grocery_items (item_name, brand_name, category, price_brl, unit_of_measure, stock_quantity, expiration_date, origin_state, is_organic, barcode, supplier_name) VALUES
('Café Pilão Moido Torrado', 'Pilão', 'Café', 22.90, '500g', 150, '2025-08-15', 'Minas Gerais', FALSE, '789100000001', 'Cafés Minas Gerais Ltda'),
('Café Pilão em Grãos Inteiros', 'Pilão', 'Café', 28.90, '500g', 80, '2025-09-20', 'Minas Gerais', FALSE, '789100000002', 'Cafés Minas Gerais Ltda'),
('Café Pilão Cappuccino Instantâneo', 'Pilão', 'Café', 15.50, '200g', 120, '2025-07-30', 'Minas Gerais', FALSE, '789100000003', 'Cafés Minas Gerais Ltda'),
('Café Pilão Mocha Cappuccino', 'Pilão', 'Café', 18.70, '200g', 90, '2025-08-25', 'Minas Gerais', FALSE, '789100000004', 'Cafés Minas Gerais Ltda'),
('Café Pilão com Leite em Pó', 'Pilão', 'Café', 21.30, '250g', 110, '2025-09-10', 'Minas Gerais', FALSE, '789100000005', 'Cafés Minas Gerais Ltda'),
('Café Pilão Descafeinado', 'Pilão', 'Café', 19.90, '200g', 75, '2025-08-05', 'Minas Gerais', FALSE, '789100000006', 'Cafés Minas Gerais Ltda'),
('Café Pilão Tradicional Torrado', 'Pilão', 'Café', 25.90, '500g', 60, '2025-08-20', 'Minas Gerais', FALSE, '789100000007', 'Cafés Minas Gerais Ltda'),
('Café Pilão Coador de Papel', 'Pilão', 'Café', 8.90, '100 unidades', 140, '2026-06-15', 'Minas Gerais', FALSE, '789100000008', 'Cafés Minas Gerais Ltda'),
('Café Pilão Cápsulas Compatíveis', 'Pilão', 'Café', 29.90, '10 unidades', 100, '2025-09-15', 'Minas Gerais', FALSE, '789100000009', 'Cafés Minas Gerais Ltda'),
('Café 3 Corações Moido Torrado', '3 Corações', 'Café', 18.90, '500g', 200, '2025-07-30', 'Minas Gerais', FALSE, '789111100001', 'Cafés 3 Corações Ltda'),
('Café 3 Corações em Grãos', '3 Corações', 'Café', 24.90, '500g', 100, '2025-08-25', 'Minas Gerais', FALSE, '789111100002', 'Cafés 3 Corações Ltda'),
('Leite de Coração 3 Corações', '3 Corações', 'Leite', 9.50, '1L', 180, '2025-06-15', 'Minas Gerais', FALSE, '789111100003', 'Laticínios 3 Corações Ltda'),
('Café 3 Corações Latte Instantâneo', '3 Corações', 'Café', 16.80, '200g', 130, '2025-08-12', 'Minas Gerais', FALSE, '789111100004', 'Cafés 3 Corações Ltda'),
('Leite Fervido 3 Corações', '3 Corações', 'Leite', 7.90, '500ml', 160, '2025-05-20', 'Minas Gerais', FALSE, '789111100005', 'Laticínios 3 Corações Ltda'),
('Café 3 Corações Cápsulas', '3 Corações', 'Café', 32.90, '10 unidades', 85, '2025-09-20', 'Minas Gerais', FALSE, '789111100006', 'Cafés 3 Corações Ltda'),
('Café Rubicão Moido', 'Rubicão', 'Café', 15.90, '500g', 110, '2025-08-10', 'Minas Gerais', FALSE, '789500111001', 'Cafés Rubicão Ltda'),
('Café Rubicão Intenso', 'Rubicão', 'Café', 17.90, '500g', 95, '2025-08-15', 'Minas Gerais', FALSE, '789500111002', 'Cafés Rubicão Ltda'),
('Café Rubicão Orgânico', 'Rubicão', 'Café', 24.90, '500g', 60, '2025-08-30', 'Minas Gerais', TRUE, '789500111003', 'Cafés Rubicão Ltda'),
('Café Rubicão em Grãos Torrado', 'Rubicão', 'Café', 26.90, '500g', 70, '2025-09-01', 'Minas Gerais', FALSE, '789500111004', 'Cafés Rubicão Ltda'),
('Café Copal Moido', 'Copal', 'Café', 16.90, '500g', 140, '2025-08-15', 'Minas Gerais', FALSE, '789400111001', 'Cafés Copal Ltda'),
('Café Copal em Grãos', 'Copal', 'Café', 21.90, '500g', 85, '2025-08-20', 'Minas Gerais', FALSE, '789400111002', 'Cafés Copal Ltda'),
('Café Agrestina Moido', 'Agrestina', 'Café', 14.90, '500g', 100, '2025-08-20', 'Minas Gerais', FALSE, '789600111001', 'Cafés Agrestina Ltda'),
('Café Agrestina em Grãos', 'Agrestina', 'Café', 19.90, '500g', 80, '2025-09-05', 'Minas Gerais', FALSE, '789600111002', 'Cafés Agrestina Ltda');

-- === MEATS & PROCESSED MEATS ===
INSERT INTO grocery_items (item_name, brand_name, category, price_brl, unit_of_measure, stock_quantity, expiration_date, origin_state, is_organic, barcode, supplier_name) VALUES
('Peito de Frango Sadia', 'Sadia', 'Carnes', 22.90, '1kg', 80, '2025-07-15', 'São Paulo', FALSE, '789666600101', 'Frigorífico Sadia SA'),
('Coxa de Frango Sadia', 'Sadia', 'Carnes', 18.90, '1kg', 100, '2025-07-15', 'São Paulo', FALSE, '789666600102', 'Frigorífico Sadia SA'),
('Carne Moída Sadia', 'Sadia', 'Carnes', 32.90, '1kg', 60, '2025-07-10', 'São Paulo', FALSE, '789666600103', 'Frigorífico Sadia SA'),
('Linguiça Calabresa Sadia', 'Sadia', 'Embutidos', 28.90, '1kg', 75, '2025-08-20', 'São Paulo', FALSE, '789666600201', 'Frigorífico Sadia SA'),
('Frango Inteiro Sadia Congelado', 'Sadia', 'Carnes', 16.90, '1.2kg', 45, '2026-01-30', 'São Paulo', FALSE, '789666600104', 'Frigorífico Sadia SA'),
('Bisteca de Carne Sadia', 'Sadia', 'Carnes', 26.90, '1kg', 55, '2025-07-20', 'São Paulo', FALSE, '789666600105', 'Frigorífico Sadia SA'),
('Peru Sadia Perna', 'Sadia', 'Carnes', 19.90, '1kg', 65, '2025-07-15', 'São Paulo', FALSE, '789666600106', 'Frigorífico Sadia SA'),
('Omelete Sadia Tradicional', 'Sadia', 'Embutidos', 12.90, '200g', 90, '2025-08-15', 'São Paulo', FALSE, '789666600202', 'Frigorífico Sadia SA'),
('Peito de Peru Sadia em Cubos', 'Sadia', 'Carnes', 24.90, '1kg', 35, '2025-07-25', 'São Paulo', FALSE, '789666600107', 'Frigorífico Sadia SA'),
('Linguiça Toscãnina Sadia', 'Sadia', 'Embutidos', 31.90, '1kg', 70, '2025-08-10', 'São Paulo', FALSE, '789666600203', 'Frigorífico Sadia SA'),
('Carne Friboi Picanha', 'Friboi', 'Carnes', 52.90, '1kg', 45, '2025-07-20', 'Mato Grosso do Sul', FALSE, '7891001110101', 'Sul Alimentos Ltda'),
('Carne Friboi Alcatra', 'Friboi', 'Carnes', 46.90, '1kg', 60, '2025-07-20', 'Mato Grosso do Sul', FALSE, '7891001110102', 'Sul Alimentos Ltda'),
('Carne Friboi Acém', 'Friboi', 'Carnes', 42.90, '1kg', 70, '2025-07-20', 'Mato Grosso do Sul', FALSE, '7891001110103', 'Sul Alimentos Ltda'),
('Linguiça Friboi', 'Friboi', 'Embutidos', 32.90, '1kg', 85, '2025-08-15', 'Mato Grosso do Sul', FALSE, '7891001110201', 'Sul Alimentos Ltda'),
('Hambúrguer Friboi', 'Friboi', 'Embutidos', 38.90, '1kg', 55, '2025-07-25', 'Mato Grosso do Sul', FALSE, '7891001110202', 'Sul Alimentos Ltda'),
('Carne Friboi Coxa de Frango', 'Friboi', 'Carnes', 22.90, '1kg', 90, '2025-07-15', 'Mato Grosso do Sul', FALSE, '7891001110104', 'Sul Alimentos Ltda'),
('Frango Friboi Perdigão', 'Friboi', 'Carnes', 28.90, '1kg', 75, '2025-07-15', 'Mato Grosso do Sul', FALSE, '7891001110105', 'Sul Alimentos Ltda'),
('Linguiça Perdigão Toscãnica', 'Perdigão', 'Embutidos', 29.90, '1kg', 120, '2025-09-15', 'São Paulo', FALSE, '789777700101', 'Agrícola Perdigão SA'),
('Salame Perdigão Espanhol', 'Perdigão', 'Embutidos', 36.90, '500g', 85, '2025-09-10', 'São Paulo', FALSE, '789777700102', 'Agrícola Perdigão SA'),
('Hambúrguer Perdigão Especial', 'Perdigão', 'Embutidos', 24.90, '1kg', 110, '2025-07-25', 'São Paulo', FALSE, '789777700103', 'Agrícola Perdigão SA'),
('Peito de Peru Perdigão Defumado', 'Perdigão', 'Carnes', 38.90, '1kg', 60, '2025-08-15', 'São Paulo', FALSE, '789777700201', 'Agrícola Perdigão SA'),
('Linguiça Perdigão Pimenta', 'Perdigão', 'Embutidos', 31.90, '1kg', 95, '2025-09-10', 'São Paulo', FALSE, '789777700104', 'Agrícola Perdigão SA'),
('Bisteca Perdigão Premium', 'Perdigão', 'Carnes', 42.90, '1kg', 50, '2025-07-20', 'São Paulo', FALSE, '789777700202', 'Agrícola Perdigão SA'),
('Omelete Perdigão com Queijo', 'Perdigão', 'Embutidos', 15.90, '200g', 75, '2025-08-10', 'São Paulo', FALSE, '789777700203', 'Agrícola Perdigão SA'),
('Farofa Torcida Sadia', 'Sadia', 'Farinhas', 9.90, '500g', 140, '2025-09-15', 'São Paulo', FALSE, '789666600301', 'Frigorífico Sadia SA'),
('Farofa Especial Perdigão', 'Perdigão', 'Farinhas', 11.90, '500g', 95, '2025-09-20', 'São Paulo', FALSE, '789777700301', 'Agrícola Perdigão SA');

-- === BEANS, RICE, LEGUMES, NUTS ===
INSERT INTO grocery_items (item_name, brand_name, category, price_brl, unit_of_measure, stock_quantity, expiration_date, origin_state, is_organic, barcode, supplier_name) VALUES
('Feijão Camil Preto', 'Camil', 'Feijão', 12.90, '1kg', 250, '2025-12-30', 'Rio Grande do Sul', FALSE, '789222200001', 'Cereal Sul Ltda'),
('Arroz Camil Parboilizado', 'Camil', 'Arroz', 8.90, '1kg', 300, '2025-11-15', 'Rio Grande do Sul', FALSE, '789222200002', 'Cereal Sul Ltda'),
('Amendoim Camil Torrado', 'Camil', 'Oleaginosas', 15.90, '500g', 90, '2025-07-20', 'Rio Grande do Sul', FALSE, '789222200003', 'Cereal Sul Ltda'),
('Açaí Camil Congelado', 'Camil', 'Frutas', 22.90, '500g', 70, '2025-09-10', 'Acre', FALSE, '789222200004', 'Frutas Amazônicas Ltda'),
('Feijão Camil Carioca', 'Camil', 'Feijão', 11.90, '1kg', 220, '2025-12-25', 'Rio Grande do Sul', FALSE, '789222200005', 'Cereal Sul Ltda'),
('Arroz Camil Integral', 'Camil', 'Arroz', 14.90, '1kg', 140, '2025-11-30', 'Rio Grande do Sul', TRUE, '789222200006', 'Cereal Sul Ltda'),
('Amendoim Camil Natural', 'Camil', 'Oleaginosas', 13.90, '500g', 85, '2025-08-15', 'Rio Grande do Sul', TRUE, '789222200007', 'Cereal Sul Ltda'),
('Milho Camil em Grãos', 'Camil', 'Leguminosas', 7.50, '400g', 110, '2025-10-20', 'Rio Grande do Sul', FALSE, '789222200008', 'Cereal Sul Ltda'),
('Feijão Camil Preto Torradão', 'Camil', 'Feijão', 13.90, '1kg', 180, '2025-12-30', 'Rio Grande do Sul', FALSE, '789222200009', 'Cereal Sul Ltda'),
('Arroz Camil Tipo Grãos', 'Camil', 'Arroz', 9.90, '1kg', 165, '2025-11-30', 'Rio Grande do Sul', FALSE, '789222200010', 'Cereal Sul Ltda'),
('Feijão de Soja Yoki', 'Yoki', 'Leguminosas', 10.90, '1kg', 160, '2025-11-30', 'São Paulo', FALSE, '789333300001', 'Yoki Alimentos Ltda'),
('Macarrão Yoki Especial', 'Yoki', 'Massas', 6.90, '500g', 230, '2025-09-15', 'São Paulo', FALSE, '789333300002', 'Yoki Alimentos Ltda'),
('Farinha Yoki de Soja', 'Yoki', 'Farinhas', 13.50, '1kg', 95, '2025-08-20', 'São Paulo', FALSE, '789333300003', 'Yoki Alimentos Ltda'),
('Molho de Soja Yoki Tradicional', 'Yoki', 'Molhos', 8.90, '350ml', 180, '2025-07-15', 'São Paulo', FALSE, '789333300004', 'Yoki Alimentos Ltda'),
('Ervilhas Yoki em Conserva', 'Yoki', 'Conservas', 5.90, '400g', 140, '2026-03-10', 'São Paulo', FALSE, '789333300005', 'Yoki Alimentos Ltda'),
('Milho Yoki em Conserva', 'Yoki', 'Conservas', 5.50, '400g', 155, '2026-03-10', 'São Paulo', FALSE, '789333300006', 'Yoki Alimentos Ltda'),
('Tempero Yoki Caldo de Carne', 'Yoki', 'Temperos', 4.90, '50g', 300, '2026-01-30', 'São Paulo', FALSE, '789333300007', 'Yoki Alimentos Ltda'),
('Arroz Yoki com Flocos de Soja', 'Yoki', 'Arroz', 7.90, '1kg', 120, '2025-12-15', 'São Paulo', FALSE, '789333300008', 'Yoki Alimentos Ltda'),
('Farinha de Soja Yoki Integral', 'Yoki', 'Farinhas', 15.90, '1kg', 85, '2025-08-20', 'São Paulo', TRUE, '789333300009', 'Yoki Alimentos Ltda'),
('Macarrão Yoki Piquenique', 'Yoki', 'Massas', 7.50, '500g', 110, '2025-09-15', 'São Paulo', FALSE, '789333300010', 'Yoki Alimentos Ltda'),
('Açaí Orgânico Camil', 'Camil', 'Frutas', 32.90, '500g', 35, '2025-09-15', 'Acre', TRUE, '789222200011', 'Frutas Amazônicas Ltda'),
('Cupuaçu Camil Congelado', 'Camil', 'Frutas', 18.90, '500g', 45, '2025-09-20', 'Acre', FALSE, '789222200012', 'Frutas Amazônicas Ltda'),
('Graças Camil', 'Camil', 'Oleaginosas', 22.90, '500g', 65, '2025-07-20', 'Rio Grande do Sul', FALSE, '789222200013', 'Cereal Sul Ltda');

-- === BEVERAGES: SOFT DRINKS, WATER, BEER ===
INSERT INTO grocery_items (item_name, brand_name, category, price_brl, unit_of_measure, stock_quantity, expiration_date, origin_state, is_organic, barcode, supplier_name) VALUES
('Refrigerante Guaraná Antigua Original', 'Guaraná Antigua', 'Bebidas', 6.90, '350ml', 400, '2025-12-15', 'São Paulo', FALSE, '789555500001', 'Bebidas Antarticas SA'),
('Guaraná Antigua Zero', 'Guaraná Antigua', 'Bebidas', 6.50, '350ml', 350, '2025-12-15', 'São Paulo', FALSE, '789555500002', 'Bebidas Antarticas SA'),
('Guaraná Antigua Laranja', 'Guaraná Antigua', 'Bebidas', 7.20, '350ml', 200, '2025-12-25', 'São Paulo', FALSE, '789555500003', 'Bebidas Antarticas SA'),
('Guaraná Antigua Cola', 'Guaraná Antigua', 'Bebidas', 7.50, '350ml', 180, '2025-12-20', 'São Paulo', FALSE, '789555500004', 'Bebidas Antarticas SA'),
('Guaraná Antigua 2L Original', 'Guaraná Antigua', 'Bebidas', 12.90, '2L', 120, '2025-12-15', 'São Paulo', FALSE, '789555500005', 'Bebidas Antarticas SA'),
('Guaraná Antigua Tangerina', 'Guaraná Antigua', 'Bebidas', 7.50, '350ml', 140, '2025-12-20', 'São Paulo', FALSE, '789555500006', 'Bebidas Antarticas SA'),
('Água Mineral Itambacuri Natural', 'Itambacuri', 'Água', 3.50, '500ml', 350, '2025-12-31', 'Minas Gerais', FALSE, '789500000001', 'Águas Itambacuri Ltda'),
('Água Mineral Itambacuri com Gás', 'Itambacuri', 'Água', 4.20, '500ml', 200, '2025-12-31', 'Minas Gerais', FALSE, '789500000002', 'Águas Itambacuri Ltda'),
('Água de Coco Itambacuri', 'Itambacuri', 'Água', 7.90, '500ml', 180, '2025-08-15', 'Bahia', FALSE, '789500000003', 'Águas Itambacuri Ltda'),
('Água Mineral Itambacuri 1.5L', 'Itambacuri', 'Água', 5.90, '1.5L', 160, '2025-12-31', 'Minas Gerais', FALSE, '789500000004', 'Águas Itambacuri Ltda'),
('Cerveja Brahma Pilsen', 'Brahma', 'Cervejas', 7.90, '330ml', 250, '2025-09-30', 'São Paulo', FALSE, '789200000001', 'Cervejaria Brahma SA'),
('Cerveja Brahma Bock', 'Brahma', 'Cervejas', 12.90, '330ml', 80, '2025-09-30', 'São Paulo', FALSE, '789200000002', 'Cervejaria Brahma SA'),
('Cerveja Brahma Stout', 'Brahma', 'Cervejas', 15.90, '330ml', 60, '2025-09-30', 'São Paulo', FALSE, '789200000003', 'Cervejaria Brahma SA'),
('Cerveja Brahma Wheat', 'Brahma', 'Cervejas', 11.90, '330ml', 95, '2025-09-30', 'São Paulo', FALSE, '789200000004', 'Cervejaria Brahma SA'),
('Cerveja Brahma 600ml Lata', 'Brahma', 'Cervejas', 9.90, '600ml', 180, '2025-09-30', 'São Paulo', FALSE, '789200000005', 'Cervejaria Brahma SA'),
('Cerveja Skol Pilsen', 'Skol', 'Cervejas', 6.90, '330ml', 300, '2025-09-30', 'São Paulo', FALSE, '789300000001', 'Cervejaria Skol SA'),
('Cerveja Skol Beat', 'Skol', 'Cervejas', 8.50, '330ml', 150, '2025-09-30', 'São Paulo', FALSE, '789300000002', 'Cervejaria Skol SA'),
('Cerveja Skol 600ml Lata', 'Skol', 'Cervejas', 8.90, '600ml', 200, '2025-09-30', 'São Paulo', FALSE, '789300000003', 'Cervejaria Skol SA'),
('Skol Spritz', 'Skol', 'Cervejas', 12.90, '330ml', 100, '2025-09-30', 'São Paulo', FALSE, '789300000004', 'Cervejaria Skol SA'),
('Cerveja Antarctica Pilsen', 'Antarctica', 'Cervejas', 7.50, '330ml', 220, '2025-09-30', 'São Paulo', FALSE, '789400000001', 'Ambev SA'),
('Cerveja Antarctica Light', 'Antarctica', 'Cervejas', 8.90, '330ml', 180, '2025-09-30', 'São Paulo', FALSE, '789400000002', 'Ambev SA'),
('Cerveja Devassa', 'Devassa', 'Cervejas', 6.90, '330ml', 150, '2025-09-30', 'Rio de Janeiro', FALSE, '789400000003', 'Ambev SA'),
('Cerveja Brahma Light', 'Brahma', 'Cervejas', 8.50, '330ml', 100, '2025-09-30', 'São Paulo', FALSE, '789400000004', 'Ambev SA'),
('Cerveja Gavião Pilsen', 'Gavi', 'Cervejas', 5.90, '330ml', 160, '2025-09-30', 'Rio Grande do Sul', FALSE, '789700111001', 'Cervejaria Gavi SA'),
('Cerveja Gavião Weiss', 'Gavi', 'Cervejas', 7.50, '330ml', 90, '2025-09-30', 'Rio Grande do Sul', FALSE, '789700111002', 'Cervejaria Gavi SA'),
('Cachaça 51 Tradicional', 'Cachaça 51', 'Cachaça', 42.90, '1L', 90, '2030-12-31', 'Minas Gerais', FALSE, '789600000001', 'Engenho 51 Ltda'),
('Cachaça 51 Açúcar de Confeza', 'Cachaça 51', 'Cachaça', 48.90, '1L', 60, '2030-12-31', 'Minas Gerais', FALSE, '789600000002', 'Engenho 51 Ltda'),
('Cachaça 51 Anejo', 'Cachaça 51', 'Cachaça', 79.90, '1L', 45, '2030-12-31', 'Minas Gerais', FALSE, '789600000003', 'Engenho 51 Ltda'),
('Cachaça Pitú Ouro', 'Pitú', 'Cachaça', 65.90, '1L', 55, '2030-12-31', 'Bahia', FALSE, '789600000004', 'Engenho Pitú Ltda'),
('Cerveja Artesanal Colorado Demo', 'Colorado', 'Cervejas', 22.90, '600ml', 55, '2025-10-15', 'Rio Grande do Sul', FALSE, '789200001001', 'Cervejaria Colorado Ltda'),
('Cerveja Artesanal Baden Dortmunder', 'Baden', 'Cervejas', 28.90, '600ml', 40, '2025-10-15', 'Rio Grande do Sul', FALSE, '789200001002', 'Cervejaria Baden Ltda'),
('Vinho Tinto Miolo', 'Miolo', 'Vinhos', 45.90, '750ml', 35, '2026-12-31', 'Rio Grande do Sul', FALSE, '789300001001', 'Vinícola Miolo Ltda'),
('Vinho Branco Miolo', 'Miolo', 'Vinhos', 42.90, '750ml', 45, '2026-12-31', 'Rio Grande do Sul', FALSE, '789300001002', 'Vinícola Miolo Ltda');

-- === DAIRY & CHEESE ===
INSERT INTO grocery_items (item_name, brand_name, category, price_brl, unit_of_measure, stock_quantity, expiration_date, origin_state, is_organic, barcode, supplier_name) VALUES
('Iogurte Vigor Natural', 'Vigor', 'Laticínios', 5.90, '500g', 180, '2025-07-15', 'São Paulo', FALSE, '789900000001', 'Laticínios Vigor Ltda'),
('Iogurte Vigor Morango', 'Vigor', 'Laticínios', 6.90, '500g', 150, '2025-07-15', 'São Paulo', FALSE, '789900000002', 'Laticínios Vigor Ltda'),
('Iogurte Vigor Sem Lactose', 'Vigor', 'Laticínios', 8.90, '500g', 90, '2025-07-15', 'São Paulo', FALSE, '789900000003', 'Laticínios Vigor Ltda'),
('Queijo Vigor Minas Padrão', 'Vigor', 'Laticínios', 18.90, '500g', 75, '2025-07-25', 'São Paulo', FALSE, '789900000004', 'Laticínios Vigor Ltda'),
('Leite Vigor Integral', 'Vigor', 'Laticínios', 4.90, '1L', 220, '2025-05-30', 'São Paulo', FALSE, '789900000005', 'Laticínios Vigor Ltda'),
('Queijo Minas Neve', 'Neve', 'Laticínios', 28.90, '1kg', 55, '2025-07-20', 'Minas Gerais', FALSE, '789900111001', 'Queijos Neve Ltda'),
('Queijo Minas Padrão Neve', 'Neve', 'Laticínios', 24.90, '1kg', 85, '2025-07-20', 'Minas Gerais', FALSE, '789900111002', 'Queijos Neve Ltda'),
('Requeijão Neve', 'Neve', 'Laticínios', 12.90, '500g', 110, '2025-07-25', 'Minas Gerais', FALSE, '789900111003', 'Queijos Neve Ltda'),
('Creme de Leite de Lata União', 'União', 'Laticínios', 6.90, '397g', 200, '2025-10-15', 'São Paulo', FALSE, '789700000004', 'Laticínios União Ltda'),
('Leite Condensado Ninho', 'Nestlé', 'Laticínios', 9.90, '397g', 280, '2025-10-30', 'São Paulo', FALSE, '789660000001', 'Nestlé Brasil Ltda'),
('Leite em Pó Ninho Integral', 'Nestlé', 'Laticínios', 22.90, '500g', 200, '2025-11-15', 'São Paulo', FALSE, '789660000002', 'Nestlé Brasil Ltda'),
('Leite Longa Vida Ninho', 'Nestlé', 'Laticínios', 5.90, '1L', 350, '2025-08-15', 'São Paulo', FALSE, '789660000003', 'Nestlé Brasil Ltda'),
('Leite Condensado Moça', 'Nestlé', 'Laticínios', 9.50, '397g', 320, '2025-10-30', 'São Paulo', FALSE, '789660000004', 'Nestlé Brasil Ltda'),
('Leite Maternidade Ninho', 'Nestlé', 'Laticínios', 32.90, '400g', 180, '2025-09-30', 'São Paulo', FALSE, '789660000005', 'Nestlé Brasil Ltda'),
('Leite em Pó Soro', 'Soro', 'Laticínios', 18.90, '340g', 150, '2025-12-15', 'São Paulo', FALSE, '789660000006', 'Laticínios Soro Ltda'),
('Leite em Pó Moça', 'Nestlé', 'Laticínios', 21.90, '340g', 175, '2025-12-15', 'São Paulo', FALSE, '789660000007', 'Nestlé Brasil Ltda'),
('Creme de Leite de Lata Nata', 'Nata', 'Laticínios', 7.90, '397g', 130, '2025-10-20', 'Minas Gerais', FALSE, '789660000008', 'Laticínios Nata Ltda'),
('Ovos Caixa 12 Unidades', 'Granja Campo Verde', 'Ovos', 18.90, '12 un', 100, '2025-07-25', 'São Paulo', FALSE, '789550000001', 'Granja Campo Verde Ltda'),
('Ovos Orgânicos 12 Unidades', 'Granja Campo Verde', 'Ovos', 28.90, '12 un', 50, '2025-07-25', 'São Paulo', TRUE, '789550000002', 'Granja Campo Verde Ltda'),
('Leite Fervido 3 Corações', '3 Corações', 'Laticínios', 7.90, '500ml', 160, '2025-05-20', 'Minas Gerais', FALSE, '789111100007', 'Laticínios 3 Corações Ltda'),
('Leite de Coração 3 Corações', '3 Corações', 'Laticínios', 9.50, '1L', 180, '2025-06-15', 'Minas Gerais', FALSE, '789111100008', 'Laticínios 3 Corações Ltda');

-- === BISCUITS, CAKES & BREAD ===
INSERT INTO grocery_items (item_name, brand_name, category, price_brl, unit_of_measure, stock_quantity, expiration_date, origin_state, is_organic, barcode, supplier_name) VALUES
('Biscoito Bauducco Wafer Chocolate', 'Bauducco', 'Biscoitos', 4.50, '130g', 180, '2025-09-30', 'São Paulo', FALSE, '789123400001', 'Bauducco Alimentos Ltda'),
('Biscoito Bauducco Wafer Morango', 'Bauducco', 'Biscoitos', 4.50, '130g', 150, '2025-09-30', 'São Paulo', FALSE, '789123400002', 'Bauducco Alimentos Ltda'),
('Biscoito Bauducco Wafer Baunilha', 'Bauducco', 'Biscoitos', 4.50, '130g', 160, '2025-09-30', 'São Paulo', FALSE, '789123400003', 'Bauducco Alimentos Ltda'),
('Biscoito Bauducco Maisena', 'Bauducco', 'Biscoitos', 3.90, '200g', 200, '2025-10-15', 'São Paulo', FALSE, '789123400004', 'Bauducco Alimentos Ltda'),
('Biscoito Bauducco Champanhe', 'Bauducco', 'Biscoitos', 4.20, '200g', 170, '2025-10-15', 'São Paulo', FALSE, '789123400005', 'Bauducco Alimentos Ltda'),
('Panetone Bauducco Tradicional', 'Bauducco', 'Panetone', 38.90, '500g', 80, '2026-01-15', 'São Paulo', FALSE, '789123400006', 'Bauducco Alimentos Ltda'),
('Panetone Bauducco Gotas Chocolate', 'Bauducco', 'Panetone', 42.90, '500g', 60, '2026-01-15', 'São Paulo', FALSE, '789123400007', 'Bauducco Alimentos Ltda'),
('Chocottone Bauducco', 'Bauducco', 'Panetone', 44.90, '500g', 55, '2026-01-15', 'São Paulo', FALSE, '789123400008', 'Bauducco Alimentos Ltda'),
('Biscoito Tia Rosa Maizena', 'Tia Rosa', 'Biscoitos', 3.50, '200g', 140, '2025-10-30', 'São Paulo', FALSE, '789800111001', 'Tia Rosa Alimentos Ltda'),
('Biscoito Tia Rosa Leite', 'Tia Rosa', 'Biscoitos', 3.80, '200g', 130, '2025-10-30', 'São Paulo', FALSE, '789800111002', 'Tia Rosa Alimentos Ltda'),
('Biscoito Tia Rosa Coco', 'Tia Rosa', 'Biscoitos', 3.80, '200g', 120, '2025-11-10', 'São Paulo', FALSE, '789800111003', 'Tia Rosa Alimentos Ltda'),
('Pão de Forma Wickbold Integral', 'Wickbold', 'Pães', 9.90, '500g', 90, '2025-07-20', 'São Paulo', FALSE, '789900222001', 'Wickbold Alimentos Ltda'),
('Pão de Forma Wickbold Grãos', 'Wickbold', 'Pães', 11.90, '500g', 75, '2025-07-20', 'São Paulo', FALSE, '789900222002', 'Wickbold Alimentos Ltda'),
('Pão de Queijo Forno de Minas Tradicional', 'Forno de Minas', 'Congelados', 24.90, '400g', 100, '2025-12-31', 'Minas Gerais', FALSE, '789888800001', 'Forno de Minas Alimentos Ltda'),
('Pão de Queijo Forno de Minas Recheado', 'Forno de Minas', 'Congelados', 29.90, '400g', 65, '2025-12-31', 'Minas Gerais', FALSE, '789888800002', 'Forno de Minas Alimentos Ltda'),
('Coxinha Forno de Minas Congelada', 'Forno de Minas', 'Congelados', 32.90, '500g', 80, '2025-11-30', 'Minas Gerais', FALSE, '789888800003', 'Forno de Minas Alimentos Ltda');

-- === CONDIMENTS & SAUCES ===
INSERT INTO grocery_items (item_name, brand_name, category, price_brl, unit_of_measure, stock_quantity, expiration_date, origin_state, is_organic, barcode, supplier_name) VALUES
('Ketchup Heinz Tradicional', 'Heinz', 'Molhos', 8.90, '390g', 120, '2026-03-15', 'São Paulo', FALSE, '789500333001', 'Heinz Brasil Ltda'),
('Mostarda Heinz', 'Heinz', 'Molhos', 7.50, '220g', 90, '2026-03-15', 'São Paulo', FALSE, '789500333002', 'Heinz Brasil Ltda'),
('Maionese Hellmann\'s', 'Hellmann\'s', 'Molhos', 12.90, '500g', 100, '2025-11-30', 'São Paulo', FALSE, '789500333003', 'Unilever Brasil Ltda'),
('Molho Shoyu Sakura', 'Sakura', 'Molhos', 9.90, '500ml', 85, '2026-06-30', 'São Paulo', FALSE, '789500333004', 'Sakura Alimentos Ltda'),
('Vinagre de Álcool Castelo', 'Castelo', 'Condimentos', 4.50, '500ml', 150, '2027-12-31', 'São Paulo', FALSE, '789500333005', 'Castelo Alimentos Ltda'),
('Azeite de Oliva Andorinha Extra Virgem', 'Andorinha', 'Óleos', 28.90, '500ml', 70, '2026-12-31', 'São Paulo', FALSE, '789500333006', 'Andorinha Alimentos Ltda'),
('Óleo de Soja Soya', 'Soya', 'Óleos', 8.90, '900ml', 180, '2026-09-30', 'São Paulo', FALSE, '789500333007', 'Soya Brasil Ltda');

-- === SWEETS & CHOCOLATES ===
INSERT INTO grocery_items (item_name, brand_name, category, price_brl, unit_of_measure, stock_quantity, expiration_date, origin_state, is_organic, barcode, supplier_name) VALUES
('Chocolate Garoto Ao Leite', 'Garoto', 'Chocolates', 6.50, '90g', 200, '2026-04-30', 'Espírito Santo', FALSE, '789700444001', 'Chocolates Garoto Ltda'),
('Chocolate Garoto Meio Amargo', 'Garoto', 'Chocolates', 7.20, '90g', 150, '2026-04-30', 'Espírito Santo', FALSE, '789700444002', 'Chocolates Garoto Ltda'),
('Chocolate Garoto Branco', 'Garoto', 'Chocolates', 6.80, '90g', 120, '2026-04-30', 'Espírito Santo', FALSE, '789700444003', 'Chocolates Garoto Ltda'),
('Bombom Garoto Serenata de Amor', 'Garoto', 'Chocolates', 18.90, '200g', 90, '2025-12-20', 'Espírito Santo', FALSE, '789700444004', 'Chocolates Garoto Ltda'),
('Chocolate Lacta Ao Leite', 'Lacta', 'Chocolates', 5.90, '80g', 180, '2026-05-15', 'São Paulo', FALSE, '789700444005', 'Mondelēz Brasil Ltda'),
('Chocolate Lacta Diamante Negro', 'Lacta', 'Chocolates', 6.90, '80g', 140, '2026-05-15', 'São Paulo', FALSE, '789700444006', 'Mondelēz Brasil Ltda'),
('Chocolate Nestlé Classic', 'Nestlé', 'Chocolates', 5.50, '90g', 160, '2026-06-30', 'São Paulo', FALSE, '789700444007', 'Nestlé Brasil Ltda'),
('KitKat Nestlé', 'Nestlé', 'Chocolates', 4.90, '41.5g', 220, '2026-06-30', 'São Paulo', FALSE, '789700444008', 'Nestlé Brasil Ltda'),
('Doce de Leite Viçosa', 'Viçosa', 'Doces', 12.90, '400g', 85, '2026-08-31', 'Minas Gerais', FALSE, '789700444009', 'Viçosa Alimentos Ltda'),
('Goiabada Cascão Predileta', 'Predileta', 'Doces', 8.90, '500g', 95, '2026-10-31', 'São Paulo', FALSE, '789700444010', 'Predileta Alimentos Ltda');