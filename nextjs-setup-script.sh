#!/bin/bash

# Function to print colorful messages
print_message() {
    local color=$1
    local message=$2
    echo -e "\e[${color}m${message}\e[0m"
}

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check prerequisites
print_message "36" "🔍 Checking prerequisites..."

if ! command_exists node; then
    print_message "31" "❌ Node.js is not installed. Please install Node.js first."
    exit 1
fi

if ! command_exists npm; then
    print_message "31" "❌ npm is not installed. Please install npm first."
    exit 1
fi

# Get project name from user
read -p "🏗️  Enter your project name (lowercase, no spaces): " PROJECT_NAME

# Validate project name
if [[ ! $PROJECT_NAME =~ ^[a-z0-9-]+$ ]]; then
    print_message "31" "❌ Invalid project name. Use only lowercase letters, numbers, and hyphens."
    exit 1
fi

# Create Next.js project with TypeScript
print_message "36" "🚀 Creating Next.js project with TypeScript..."
npx create-next-app@latest $PROJECT_NAME --typescript --tailwind --eslint --app --src-dir --use-npm

cd $PROJECT_NAME

# Install additional dependencies
print_message "36" "📦 Installing additional dependencies..."
npm install class-variance-authority clsx tailwind-merge @radix-ui/react-select @radix-ui/react-switch @radix-ui/react-slider lucide-react

# Create necessary directories
print_message "36" "📁 Creating project structure..."
mkdir -p src/components/ui
mkdir -p src/lib

# Create utility files
print_message "36" "📝 Creating utility files..."

# Create utils.ts
cat > src/lib/utils.ts << 'EOF'
import { type ClassValue, clsx } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}
EOF

# Create tailwind.config.ts
cat > tailwind.config.ts << 'EOF'
import type { Config } from "tailwindcss"

const config = {
  darkMode: ["class"],
  content: [
    './pages/**/*.{ts,tsx}',
    './components/**/*.{ts,tsx}',
    './app/**/*.{ts,tsx}',
    './src/**/*.{ts,tsx}',
  ],
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: {
        "2xl": "1400px",
      },
    },
    extend: {
      colors: {
        border: "hsl(var(--border))",
        input: "hsl(var(--input))",
        ring: "hsl(var(--ring))",
        background: "hsl(var(--background))",
        foreground: "hsl(var(--foreground))",
        primary: {
          DEFAULT: "hsl(var(--primary))",
          foreground: "hsl(var(--primary-foreground))",
        },
        secondary: {
          DEFAULT: "hsl(var(--secondary))",
          foreground: "hsl(var(--secondary-foreground))",
        },
        destructive: {
          DEFAULT: "hsl(var(--destructive))",
          foreground: "hsl(var(--destructive-foreground))",
        },
        muted: {
          DEFAULT: "hsl(var(--muted))",
          foreground: "hsl(var(--muted-foreground))",
        },
        accent: {
          DEFAULT: "hsl(var(--accent))",
          foreground: "hsl(var(--accent-foreground))",
        },
        popover: {
          DEFAULT: "hsl(var(--popover))",
          foreground: "hsl(var(--popover-foreground))",
        },
        card: {
          DEFAULT: "hsl(var(--card))",
          foreground: "hsl(var(--card-foreground))",
        },
      },
      borderRadius: {
        lg: "var(--radius)",
        md: "calc(var(--radius) - 2px)",
        sm: "calc(var(--radius) - 4px)",
      },
      keyframes: {
        "accordion-down": {
          from: { height: "0" },
          to: { height: "var(--radix-accordion-content-height)" },
        },
        "accordion-up": {
          from: { height: "var(--radix-accordion-content-height)" },
          to: { height: "0" },
        },
      },
      animation: {
        "accordion-down": "accordion-down 0.2s ease-out",
        "accordion-up": "accordion-up 0.2s ease-out",
      },
    },
  },
  plugins: [],
} satisfies Config

export default config
EOF

# Update globals.css
cat > src/app/globals.css << 'EOF'
@tailwind base;
@tailwind components;
@tailwind utilities;
 
@layer base {
  :root {
    --background: 0 0% 100%;
    --foreground: 222.2 84% 4.9%;

    --card: 0 0% 100%;
    --card-foreground: 222.2 84% 4.9%;
 
    --popover: 0 0% 100%;
    --popover-foreground: 222.2 84% 4.9%;
 
    --primary: 222.2 47.4% 11.2%;
    --primary-foreground: 210 40% 98%;
 
    --secondary: 210 40% 96.1%;
    --secondary-foreground: 222.2 47.4% 11.2%;
 
    --muted: 210 40% 96.1%;
    --muted-foreground: 215.4 16.3% 46.9%;
 
    --accent: 210 40% 96.1%;
    --accent-foreground: 222.2 47.4% 11.2%;
 
    --destructive: 0 84.2% 60.2%;
    --destructive-foreground: 210 40% 98%;

    --border: 214.3 31.8% 91.4%;
    --input: 214.3 31.8% 91.4%;
    --ring: 222.2 84% 4.9%;
 
    --radius: 0.5rem;
  }
 
  .dark {
    --background: 222.2 84% 4.9%;
    --foreground: 210 40% 98%;
 
    --card: 222.2 84% 4.9%;
    --card-foreground: 210 40% 98%;
 
    --popover: 222.2 84% 4.9%;
    --popover-foreground: 210 40% 98%;
 
    --primary: 210 40% 98%;
    --primary-foreground: 222.2 47.4% 11.2%;
 
    --secondary: 217.2 32.6% 17.5%;
    --secondary-foreground: 210 40% 98%;
 
    --muted: 217.2 32.6% 17.5%;
    --muted-foreground: 215 20.2% 65.1%;
 
    --accent: 217.2 32.6% 17.5%;
    --accent-foreground: 210 40% 98%;
 
    --destructive: 0 62.8% 30.6%;
    --destructive-foreground: 210 40% 98%;
 
    --border: 217.2 32.6% 17.5%;
    --input: 217.2 32.6% 17.5%;
    --ring: 212.7 26.8% 83.9%;
  }
}
 
@layer base {
  * {
    @apply border-border;
  }
  body {
    @apply bg-background text-foreground;
  }
}
EOF

# Update layout.tsx with dark mode support
cat > src/app/layout.tsx << 'EOF'
import type { Metadata } from "next"
import { Inter } from "next/font/google"
import "./globals.css"

const inter = Inter({ subsets: ["latin"] })

export const metadata: Metadata = {
  title: "Next.js Application",
  description: "Generated with shadcn/ui",
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en" suppressHydrationWarning>
      <head />
      <body className={inter.className}>{children}</body>
    </html>
  )
}
EOF

# Create components directory with basic ui components
print_message "36" "🎨 Creating UI components..."

# Create components/ui directory if it doesn't exist
mkdir -p src/components/ui

# Installing shadcn CLI for component installation
npm install -D @shadcn/ui

# Initialize shadcn
npx shadcn-ui@latest init

# Install basic components
print_message "36" "📦 Installing shadcn/ui components..."
npx shadcn-ui@latest add button
npx shadcn-ui@latest add card
npx shadcn-ui@latest add select
npx shadcn-ui@latest add switch

# Update package.json scripts
print_message "36" "📝 Updating package.json scripts..."
npm pkg set scripts.build="next build"
npm pkg set scripts.start="next start"
npm pkg set scripts.lint="next lint"
npm pkg set scripts.dev="next dev"

# Create a basic README.md
cat > README.md << EOF
# $PROJECT_NAME

## Getting Started

First, run the development server:

\`\`\`bash
npm run dev
\`\`\`

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Features

- Next.js 14
- TypeScript
- Tailwind CSS
- shadcn/ui components
- Dark mode support
- ESLint configuration
- Production-ready setup

## Available Scripts

- \`npm run dev\`: Start development server
- \`npm run build\`: Build for production
- \`npm run start\`: Start production server
- \`npm run lint\`: Run ESLint
EOF

# Initialize git repository
print_message "36" "📦 Initializing git repository..."
git init
git add .
git commit -m "Initial commit: Project setup with Next.js and shadcn/ui"

print_message "32" "✅ Project setup complete! Get started with:"
print_message "36" "  cd $PROJECT_NAME"
print_message "36" "  npm run dev"
print_message "32" "🌐 Then open http://localhost:3000 in your browser"
