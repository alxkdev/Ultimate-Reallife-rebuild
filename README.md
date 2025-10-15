# Ultimate Reallife Rebuild

**Work in Progress** — rebuilding and cleaning up the MTA:SA *Ultimate* base with a modern, configurable structure.

---

### 🧠 Overview / Übersicht

This project is a **complete rebuild** of the MTA:SA “Ultimate” base with the goal of making it  
cleaner, easier to configure, and more maintainable.

Ziel ist ein **modularer, sauberer Neuaufbau** mit klarer Struktur, automatischer Datenbankerstellung  
und zentraler Konfiguration (`config.lua`) für Servernamen und Farbschemata.

---

### ⚙️ Planned Features / Geplante Funktionen

- 🧩 **Config-first system**  
  Central `config.lua` to set server name and theme colors (Quick Install – no more hardcoding).

- 🗄️ **Automatic Database Setup**  
  The SQL structure will be created automatically on first start.  
  No external SQL files needed.

- 🧹 **Cleanup & Bugfixes**  
  Removing unused or legacy files and fixing existing issues.

- 🎨 **Modern Structure**  
  Consistent folder layout, unified code style, and DX-UI color integration.

---

### 🚧 Current Status / Aktueller Stand

✅ Initial upload of original Ultimate files  
🧩 Setting up repository structure  
🛠️ Preparing config and database systems  

---

### 🗓️ To-Do List (progress tracking)

#### 🔧 Core & Config
- [ ] Create `config.lua` for server name and colors  
- [ ] Add shared access function
- [ ] Replace hardcoded values with config variables  

#### 🗄️ Database
- [ ] Remove SQL dump  
- [ ] Implement automatic table creation (migration system)  
- [ ] Add schema version tracking  

#### 🧹 Cleanup & Fixes
- [ ] Identify and remove unused files  
- [ ] Fix known bugs
- [ ] Reorganize folders

#### 🧪 Quality & Testing
- [ ] Add logger/debug system  

#### ✨ Optional (future ideas)
- [ ] DX-UI base integration (uses config colors)  
- [ ] Basic anti-cheat event protection  

---

### 🏷️ Credits

Original base: [emre1702 / Ultimate](https://github.com/emre1702/Ultimate)  
Rebuild and modifications by **alxkdev**

Special thanks to the MTA:SA development community for tools, documentation and inspiration.

---
