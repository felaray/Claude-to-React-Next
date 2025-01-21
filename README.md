# 🚀 Next.js Project Generator

A powerful script to generate production-ready Next.js projects with all essential configurations and best practices built in.

## ✨ Features

- 🔷 Next.js 14 with App Router
- 📘 TypeScript configuration
- 🎨 Tailwind CSS setup with shadcn/ui
- 🌓 Dark mode support
- 🧩 Pre-configured components
- 🛠️ Development tools (ESLint, Prettier)
- 📱 Responsive design ready
- ♿ Accessibility features
- 🔒 Type-safe components

## 🚀 Quick Start

1. Download the script:

```bash
curl -O https://raw.githubusercontent.com/gbechtold/Claude-to-React-Next/refs/heads/main/nextjs-setup-script.sh
```

2. Make it executable:

```bash
chmod +x nextjs-setup-script.sh
```

3. Run the script:

```bash
./nextjs-setup-script.sh
```

4. Follow the prompts to create your project

## 📦 What's Included in this project

### Project Structure

```
src/
├── app/
│   ├── globals.css        # Tailwind imports
│   ├── layout.tsx         # RootLayout with metadata
│   └── page.tsx           # Main page component
├── components/
│   ├── ui/               # shadcn/ui components
│   └── ClientWrapper.tsx # Client-side wrapper
├── lib/
    ├── constants.ts      # Global constants
    ├── types.ts          # TypeScript types
    └── utils.ts          # Utility functions
```

### Pre-installed Components

- Button
- Card
- Select
- Switch
- More shadcn/ui components

### Configuration Files

- `next.config.ts`
- `tailwind.config.ts`
- `tsconfig.json`
- `.eslintrc.json`

## 🛠️ Development

```bash
# Start development server
npm run dev

# Build for production
npm run build

# Start production server
npm run start

# Run linting
npm run lint
```

## 🔧 Customization

### Adding New Components

```bash
# Install new shadcn/ui components
npx shadcn-ui@latest add [component-name]
```

### Modifying Themes

Edit the `globals.css` file to customize your theme variables:

```css
:root {
  --primary: 222.2 47.4% 11.2%;
  /* Add your custom theme variables */
}
```

## 📚 Best Practices

- Use TypeScript for type safety
- Follow the file structure for organization
- Implement responsive design
- Keep accessibility in mind
- Use proper Git commit messages

## 🤝 Contributing

1. Fork the repo
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

Distributed under the MIT License. See `LICENSE` for more information.

## 🙏 Acknowledgments

- [Next.js](https://nextjs.org/)
- [shadcn/ui](https://ui.shadcn.com/)
- [Tailwind CSS](https://tailwindcss.com/)
- [TypeScript](https://www.typescriptlang.org/)

## 🤔 Support

For support, email guntram@starsmedia.com or create an issue in the repository.
