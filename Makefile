all:
	pandoc -V geometry:margin=2.3cm -o unix-faq.pdf semestr_1/unix-faq.md -f markdown_github
	pandoc -V geometry:margin=2.3cm -o awk.pdf semestr_1/awk.md -f markdown_github
	pandoc -V geometry:margin=2.3cm -o angielski.pdf liceum/angielski.md -f markdown_github
	pandoc -V geometry:margin=2.3cm -o matematyka.pdf liceum/matematyka.md -f markdown_github+tex_math_dollars
clean:
	rm unix-faq.pdf awk.pdf angielski.pdf matematyka.pdf
