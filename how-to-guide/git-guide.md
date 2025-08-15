# Setting Up Git for Documentation Projects

## 📝 Overview
Git is a version control system that helps track changes to files, including documentation.

## 1. Install Git
- Download: [https://git-scm.com/downloads](https://git-scm.com/downloads)
- Verify installation:
```bash
git --version
```

## 2. Configure Git
```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

## 3. Create a Repository
```bash
git init my-docs
cd my-docs
```

## 4. Add and Commit Files
```bash
git add .
git commit -m "Initial commit"
```

## 5. Connect to Remote
```bash
git remote add origin https://github.com/username/my-docs.git
git push -u origin main
```

## 6. Collaboration Tips
- Use branches for new features or updates.
- Write clear commit messages.

---
