# Chef Delivery

Projeto do curso **[iOS: construindo o seu primeiro app com SwiftUI](https://www.alura.com.br/)** da **Alura**.

App iOS de delivery de comida construído com **SwiftUI**. Simula a experiência de um app de pedidos: tela de onboarding animada, home com categorias e banners, listagem de lojas com filtros, detalhe da loja e detalhe do produto com seleção de quantidade.

## Demonstração

![Demo do app Chef Delivery](docs/demo.gif)

[Assistir vídeo completo (`.mov`)](docs/demo.mov)

## Screenshots

| Onboarding | Home |
|:---:|:---:|
| ![Onboarding](docs/onboarding.png) | ![Home](docs/home.png) |

| Detalhe da loja | Detalhe do produto |
|:---:|:---:|
| ![Detalhe da loja](docs/store-detail.png) | ![Detalhe do produto](docs/product-detail.png) |

## Tecnologias

- Swift / SwiftUI
- Xcode
- Assets locais (imagens e cores no Asset Catalog)
- Dados mockados (sem API ainda)

## Como rodar

1. Abra `ChefDelivery.xcodeproj` no Xcode
2. Selecione um simulador ou dispositivo iOS
3. Execute com `Cmd + R`

## Estrutura do projeto

```
ChefDelivery/
├── App/                    # Entrypoint e ContentView (tela principal)
├── HomeView/               # Onboarding com animações e swipe
├── NavigationBar/          # Barra superior (endereço e notificações)
├── GridView/               # Grid de categorias de pedido
├── CarouselView/           # Carrossel de banners promocionais
├── StoriesView/            # Lista de lojas + detalhe da loja
│   └── StoreDetailView/    # Header, produtos e itens da loja
├── ProductView/            # Detalhe do produto e quantidade
├── Model/                  # OrderType, StoreType, ProductType e mocks
├── Extension/              # Extensão Double para formatação de preço
└── Assets.xcassets/        # Imagens, logos, banners e cores
```

## Funcionalidades atuais

### Onboarding (`HomeView`)
- Animação de entrada (círculos de fundo, título, subtítulo e imagem)
- Imagem arrastável com retorno animado
- Botão “Descubra mais” com gesto de arrastar (slide-to-unlock)
- Transição em tela cheia (`fullScreenCover`) para a home do app

### Home (`ContentView`)
- Navigation bar com endereço e ícone de notificação
- Grid de categorias (Restaurantes, Mercado, Farmácia, Pet, Descontos, Bebidas, Gourmet)
- Carrossel de banners com paginação e troca automática a cada 3 segundos
- Lista de lojas com navegação para o detalhe

### Lojas (`StoresContainerView`)
- Filtro por estrelas (1 a 5 ou mais), com opção de limpar
- Filtro por distância (faixas de 5 km), com opção de limpar
- Mensagem “Nenhum resultado encontrado” quando não há resultados
- Cada loja navega para `StoreDetailView` via `NavigationLink`

### Detalhe da loja (`StoreDetailView`)
- Header com imagem, logo, localização e avaliação
- Lista de produtos da loja
- Botão de voltar customizado
- `StoreType` como `ObservableObject`, injetado com `EnvironmentObject`

### Detalhe do produto (`ProductDetailView`)
- Header com imagem, nome, descrição e preço formatado
- Controle de quantidade (aumentar / diminuir)
- Botão “Adicionar ao carrinho” (UI pronta; ação ainda não implementada)
- Apresentação em sheet a partir da loja

## Modelos de dados

| Modelo | Descrição |
|--------|-----------|
| `OrderType` | Categorias e itens do carrossel |
| `StoreType` | Loja (nome, distância, logo, header, localização, estrelas, produtos) |
| `ProductType` | Produto (nome, descrição, imagem, preço) |

Os dados vêm de `DataSourceMock.swift`, com lojas como Monstro Burger, Food Court, Carbron, Padaria e Açaí Panda.

## Extensões

- `Double+`: formatação de preço em Real (`R$`)

## Status do projeto

Implementado até o momento:

- [x] Onboarding animado com slide para entrar no app
- [x] Home com navegação, categorias, carrossel e lojas
- [x] Filtros de lojas (estrelas e distância)
- [x] Detalhe da loja e listagem de produtos
- [x] Detalhe do produto com seleção de quantidade
- [ ] Ação real de adicionar ao carrinho
- [ ] Fluxo de carrinho / checkout
- [ ] Integração com API / backend

## Autor

Patric Pereira — projeto desenvolvido durante o curso de SwiftUI da Alura.
