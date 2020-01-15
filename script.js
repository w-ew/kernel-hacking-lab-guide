var children = [];
var selector = 'body > p, body > h1, body > h2, body > ul > li';

function highlightOne(x) {
	children = document.querySelectorAll(selector);
	children.forEach(c => {
		if(c == x) {
			c.classList.add('highlight');
		} else {
			c.classList.remove('highlight');	
		};
	});
};

window.onload = () => {
	children = document.querySelectorAll(selector);
	children.forEach((c) => {
		c.addEventListener('click', (event) => {
			highlightOne(c);
			event.stopPropagation();
		});
	});
	
	document.body.addEventListener('click', () => {
		highlightOne(null);
	});
};
