---
name: Maritime Admin
colors:
  surface: '#f7f9fb'
  surface-dim: '#d8dadc'
  surface-bright: '#f7f9fb'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f2f4f6'
  surface-container: '#eceef0'
  surface-container-high: '#e6e8ea'
  surface-container-highest: '#e0e3e5'
  on-surface: '#191c1e'
  on-surface-variant: '#42474f'
  inverse-surface: '#2d3133'
  inverse-on-surface: '#eff1f3'
  outline: '#737780'
  outline-variant: '#c2c7d0'
  surface-tint: '#36618f'
  primary: '#002c51'
  on-primary: '#ffffff'
  primary-container: '#124370'
  on-primary-container: '#88b0e4'
  inverse-primary: '#a1c9fe'
  secondary: '#006b5e'
  on-secondary: '#ffffff'
  secondary-container: '#92f1df'
  on-secondary-container: '#006f62'
  tertiary: '#531600'
  on-tertiary: '#ffffff'
  tertiary-container: '#792400'
  on-tertiary-container: '#ff9068'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#d2e4ff'
  primary-fixed-dim: '#a1c9fe'
  on-primary-fixed: '#001c37'
  on-primary-fixed-variant: '#1a4976'
  secondary-fixed: '#95f4e2'
  secondary-fixed-dim: '#78d7c6'
  on-secondary-fixed: '#00201b'
  on-secondary-fixed-variant: '#005046'
  tertiary-fixed: '#ffdbcf'
  tertiary-fixed-dim: '#ffb59c'
  on-tertiary-fixed: '#380c00'
  on-tertiary-fixed-variant: '#822800'
  background: '#f7f9fb'
  on-background: '#191c1e'
  surface-variant: '#e0e3e5'
typography:
  display-lg:
    fontFamily: Be Vietnam Pro
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.02em
  headline-md:
    fontFamily: Be Vietnam Pro
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.01em
  headline-sm:
    fontFamily: Be Vietnam Pro
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  body-lg:
    fontFamily: Be Vietnam Pro
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-md:
    fontFamily: Be Vietnam Pro
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-md:
    fontFamily: Be Vietnam Pro
    fontSize: 13px
    fontWeight: '600'
    lineHeight: 18px
    letterSpacing: 0.05em
  code-sm:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '400'
    lineHeight: 16px
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 4px
  container-padding: 24px
  gutter: 16px
  sidebar-width: 260px
  mobile-nav-height: 64px
---

## Brand & Style
The design system is engineered for the administrative backend of a professional seafood establishment. It prioritizes operational efficiency, data clarity, and a reliable "Maritime-Modern" aesthetic. 

The style sits at the intersection of **Corporate Modern** and **Minimalism**. It utilizes expansive white space to reduce cognitive load during long periods of data entry, while employing strategic brand colors to guide the user's eye toward primary actions. The interface should feel as precise and clean as a high-end culinary environment—organized, sterile where necessary, and highly functional.

## Colors
This design system uses a palette inspired by deep-sea professional environments.

*   **Primary (#124370):** A deep Navy Blue used for the sidebar navigation, primary headers, and main action buttons. It conveys authority and stability.
*   **Secondary/Success (#48A999):** A Seafoam Green used for positive trend indicators, "Active" status badges, and successful save states.
*   **Tertiary/Warning (#FF7F50):** A Coral used sparingly for alerts, low-stock warnings, or deletions to provide high-contrast visibility against the blue and green.
*   **Neutral (#F8FAFC):** A cool-toned light gray used for the main application background to separate content cards from the canvas.

## Typography
The typography utilizes **Be Vietnam Pro** for its contemporary, professional feel and excellent legibility in data-dense environments.

*   **Headlines:** Use Bold weights for page titles and Semi-Bold for section headers. 
*   **Body:** Medium size (14px) is the default for table data and form labels to maximize the information density without sacrificing readability.
*   **Labels:** Small, uppercase labels with slight letter spacing are reserved for table headers and category descriptors.
*   **Numeric Data:** For currency and inventory counts, ensure tabular figures are used to allow easy vertical scanning in tables.

## Layout & Spacing
The design system employs a **Fixed Sidebar / Fluid Content** layout for desktop.

*   **Desktop:** A 260px fixed-width sidebar on the left. The main content area uses a 12-column fluid grid with 24px margins and 16px gutters.
*   **Mobile:** The sidebar collapses into a hidden drawer or converts to a bottom navigation bar for high-frequency actions. Margins reduce to 16px.
*   **Rhythm:** All spacing (padding, margins, heights) must be a multiple of the 4px base unit. Components typically use 8px (2 units) or 16px (4 units) internal padding.

## Elevation & Depth
Depth is conveyed through **Tonal Layers** rather than heavy shadows to maintain a clean, software-as-a-service feel.

*   **Level 0 (Background):** #F8FAFC (Neutral).
*   **Level 1 (Cards/Surface):** Pure White (#FFFFFF) with a 1px border of #E2E8F0. No shadow or a very subtle 2px blur, 2% opacity neutral shadow.
*   **Level 2 (Modals/Popovers):** Pure White with a medium-diffusion shadow (8px blur, 10% opacity) to indicate temporary overlay.
*   **Navigation:** The sidebar uses the Primary color (#124370) to create a distinct vertical plane that anchors the application.

## Shapes
The shape language is disciplined and consistent. 

*   **Standard Radius:** 8px (0.5rem) is applied to all buttons, input fields, cards, and dropdowns.
*   **Large Radius:** 16px (1rem) may be used for large "empty state" illustrations or promotional banners.
*   **Badges:** Status chips (e.g., "In Stock") use a 4px radius or full pill-shape to distinguish them from interactive buttons.

## Components

### Data Tables
Tables are the core of this design system. 
*   **Header:** Light gray background (#F1F5F9), uppercase label-md typography.
*   **Rows:** 56px minimum height. On hover, rows should highlight with a subtle tint of the primary color at 2% opacity.
*   **Actions:** Inline "Edit" and "Delete" icons, or a trailing "More" vertical ellipsis.

### Buttons
*   **Primary:** Solid #124370 with white text. 8px roundedness.
*   **Secondary:** Ghost style with #124370 border and text.
*   **Success:** Solid #48A999 for "Confirm" or "Add Item" actions.

### Cards (Stats)
*   Used for KPIs (e.g., Total Sales, Daily Orders). 
*   Must include a clear icon (top right), a large headline-md value, and a small body-sm trend indicator (using Secondary or Tertiary colors).

### Input Fields
*   **Height:** 40px standard.
*   **Border:** 1px #CBD5E1.
*   **Focus State:** 1px #124370 with a soft blue outer glow (3px blur).

### Chips/Badges
*   Used for product categories (e.g., "Shellfish", "Frozen").
*   Format: Low-saturation background with high-saturation text of the same hue.