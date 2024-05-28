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
	<img src="assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/mocha.webp"/>
</details>

## Usage

1. Copy your favorite flavor(s) from [`themes/`](./themes/) folder to `/usr/share/plymouth/themes/`.
2. Set your default Plymouth theme with `sudo plymouth-set-default-theme -R catppuccin-<flavor>`.

## 🙋 FAQ

- Q: **_"plymouth-set-default-theme not available on your operating system?"_**\
  A: Some distributions, like Ubuntu/Mint, use `update-alternatives` for setting the plymouth theme.

  1. Install the theme(s):

     ```shell
     sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/catppuccin-latte/catppuccin-latte.plymouth 200
     sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/catppuccin-frappe/catppuccin-frappe.plymouth 200
     sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/catppuccin-macchiato/catppuccin-macchiato.plymouth 200
     sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/catppuccin-mocha/catppuccin-mocha.plymouth 200
     ```

  2. Set the default theme interactively:

     ```shell
     sudo update-alternatives --config default.plymouth
     ```

  3. Rebuild the initramfs:

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
