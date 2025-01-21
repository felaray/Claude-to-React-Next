# 🚀 Next.js Project Generation Prompt

Hi Claude! I need your help creating a complete, production-ready Next.js project. Please help me set up the following:

## 🛠️ Project Base
- Next.js 14
- React 18
- TypeScript
- Tailwind CSS
- shadcn/ui components

## 📁 Required File Structure
```
src/
├── app/
│   ├── globals.css        # Tailwind imports
│   ├── layout.tsx         # RootLayout with metadata
│   └── page.tsx           # Main page component
├── components/
│   ├── ui/               # shadcn components
│   └── ClientWrapper.tsx # Client-side wrapper
├── lib/
    ├── constants.ts      # Global constants
    ├── types.ts          # TypeScript types
    └── utils.ts          # Utility functions
```

## ⚙️ Configuration Files Needed
- `next.config.ts` (with strictMode and export configuration)
- `tailwind.config.ts` (with shadcn/ui setup)
- `package.json` (with all dependencies)
- `tsconfig.json`
- `.gitignore`

## 📦 Core Dependencies
```json
{
  "dependencies": {
    "next": "^14.0.4",
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "@radix-ui/react-select": "latest",
    "@radix-ui/react-switch": "latest",
    "@radix-ui/react-slider": "latest",
    "class-variance-authority": "latest",
    "clsx": "latest",
    "tailwind-merge": "latest"
  },
  "devDependencies": {
    "typescript": "^5.0.4",
    "tailwindcss": "^3.4.17",
    "@types/node": "^20.1.0",
    "@types/react": "^18.2.0",
    "@types/react-dom": "^18.2.0"
  }
}
```

## 🎨 Features to Include
- Dark mode support
- Responsive design
- Type-safe components
- Proper ESLint configuration
- Production-ready setup

## 🔧 Required Base Components
Please provide complete code for:

1. Basic Layout Component with:
   - Metadata configuration
   - Proper font setup (Inter)
   - Tailwind globals import
   - Dark mode support

2. Utility Functions:
   - cn() utility for Tailwind class merging
   - Type-safe props handling
   - Common helper functions

3. shadcn/ui Components:
   - Basic Button
   - Card
   - Select
   - Switch

## 📝 Additional Requirements
- All components should be fully typed with TypeScript
- Include proper error boundaries
- Setup proper metadata in layout
- Include basic SEO configuration
- Ensure all components are accessible

## 🚦 Getting Started Instructions
Please provide the complete setup instructions including:

1. Installation commands
2. Development workflow
3. Building for production
4. Deployment considerations

I need this to be immediately runnable with minimal setup required. All code should be production-ready and follow best practices.

---

💡 After you acknowledge this request, I'll ask for the files one by one to ensure completeness.