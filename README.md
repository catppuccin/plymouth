<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://www.freedesktop.org/wiki/Software/Plymouth/">Plymouth</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/plymouth/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/plymouth?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/plymouth/issues"><img src="https://img.shields.io/github/issues/catppuccin/plymouth?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/plymouth/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/plymouth?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="https://github.com/catppuccin/plymouth/blob/main/assets/preview.png"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="https://github.com/catppuccin/plymouth/blob/main/assets/latte.png"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="https://github.com/catppuccin/plymouth/blob/main/assets/frappe.png"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="https://github.com/catppuccin/plymouth/blob/main/assets/macchiato.png"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="https://github.com/catppuccin/plymouth/blob/main/assets/mocha.png"/>
</details>

## Usage

1. Clone this repository locally

   ```shell
   git clone https://github.com/catppuccin/plymouth.git && cd plymouth
   ```

2. Copy all or selected theme from `themes` folder to `/usr/share/plymouth/themes/`, for example to copy all themes use:

   ```shell
   sudo cp -r themes/* /usr/share/plymouth/themes/
   ```

3. Set default plymouth theme:

   - 🌻 Latte:

     ```shell
     sudo plymouth-set-default-theme -R catppuccin-latte
     ```

   - 🪴 Frappe:

     ```shell
     sudo plymouth-set-default-theme -R catppuccin-frappe
     ```

   - 🌺 Macchiato:

     ```shell
     sudo plymouth-set-default-theme -R catppuccin-macchiato
     ```

   - 🌿 Mocha:

     ```shell
     sudo plymouth-set-default-theme -R catppuccin-mocha
     ```

## 🙋 FAQ

<details>
<summary>plymouth-set-default-theme not available on Ubuntu/Mint</summary>

Some distributions use `update-alternatives` for setting the plymouth theme. After step 1 and 2, perform the following actions:

3. Install the themes:

   ```shell
   sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/catppuccin-latte/catppuccin-latte.plymouth 200
   sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/catppuccin-frappe/catppuccin-frappe.plymouth 200
   sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/catppuccin-macchiato/catppuccin-macchiato.plymouth 200
   sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/catppuccin-mocha/catppuccin-mocha.plymouth 200
   ```

4. Set the default theme interactively:

   ```shell
   sudo update-alternatives --config default.plymouth
   ```

5. Rebuild the initramfs:

   ```shell
   sudo update-initramfs -u
   ```

</details>

## 💝 Thanks to

- [Tabler Icons](https://tabler-icons.io/)
- [ndsboy](https://github.com/ndsboy)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
