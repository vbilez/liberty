/*!
 * MediaElement.js
 * http://www.mediaelementjs.com/
 *
 * Wrapper that mimics native HTML5 MediaElement (audio and video)
 * using a variety of technologies (pure JavaScript, Flash, iframe)
 *
 * Copyright 2010-2017, John Dyer (http://j.hn/)
 * License: MIT
 *
 */(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(_dereq_,module,exports){
'use strict';

Object.assign(mejs.MepDefaults, {
	sourcechooserText: null
});

Object.assign(MediaElementPlayer.prototype, {
	buildsourcechooser: function buildsourcechooser(player, controls, layers, media) {

		var t = this,
		    sourceTitle = mejs.Utils.isString(t.options.sourcechooserText) ? t.options.sourcechooserText : mejs.i18n.t('mejs.source-chooser'),
		    sources = [],
		    children = t.mediaFiles ? t.mediaFiles : t.node.children;

		var hoverTimeout = void 0;

		for (var i = 0, total = children.length; i < total; i++) {
			var s = children[i];

			if (t.mediaFiles) {
				sources.push(s);
			} else if (s.nodeName === 'SOURCE') {
				sources.push(s);
			}
		}

		if (sources.length <= 1) {
			return;
		}

		player.sourcechooserButton = document.createElement('div');
		player.sourcechooserButton.className = t.options.classPrefix + 'button ' + t.options.classPrefix + 'sourcechooser-button';
		player.sourcechooserButton.innerHTML = '<button type="button" role="button" aria-haspopup="true" aria-owns="' + t.id + '" title="' + sourceTitle + '" aria-label="' + sourceTitle + '" tabindex="0"></button>' + ('<div class="' + t.options.classPrefix + 'sourcechooser-selector ' + t.options.classPrefix + 'offscreen" role="menu" aria-expanded="false" aria-hidden="true"><ul></ul></div>');

		t.addControlElement(player.sourcechooserButton, 'sourcechooser');

		for (var _i = 0, _total = sources.length; _i < _total; _i++) {
			var src = sources[_i];
			if (src.type !== undefined && typeof media.canPlayType === 'function') {
				player.addSourceButton(src.src, src.dataset.res, src.type, media.src === src.src);
			}
		}

		player.sourcechooserButton.addEventListener('mouseover', function () {
			clearTimeout(hoverTimeout);
			player.showSourcechooserSelector();
		});
		player.sourcechooserButton.addEventListener('mouseout', function () {
			hoverTimeout = setTimeout(function () {
				player.hideSourcechooserSelector();
			}, 0);
		});

		player.sourcechooserButton.addEventListener('keydown', function (e) {

			if (t.options.keyActions.length) {
				var keyCode = e.which || e.keyCode || 0;

				switch (keyCode) {
					case 32:
						if (!mejs.MediaFeatures.isFirefox) {
							player.showSourcechooserSelector();
						}
						player.sourcechooserButton.querySelector('input[type=radio]:checked').focus();
						break;
					case 13:
						player.showSourcechooserSelector();
						player.sourcechooserButton.querySelector('input[type=radio]:checked').focus();
						break;
					case 27:
						player.hideSourcechooserSelector();
						player.sourcechooserButton.querySelector('button').focus();
						break;
					default:
						return true;
				}

				e.preventDefault();
				e.stopPropagation();
			}
		});

		player.sourcechooserButton.addEventListener('focusout', mejs.Utils.debounce(function () {
			setTimeout(function () {
				var parent = document.activeElement.closest('.' + t.options.classPrefix + 'sourcechooser-selector');
				if (!parent) {
					player.hideSourcechooserSelector();
				}
			}, 0);
		}, 100));

		var radios = player.sourcechooserButton.querySelectorAll('input[type=radio]');

		for (var _i2 = 0, _total2 = radios.length; _i2 < _total2; _i2++) {
			radios[_i2].addEventListener('click', function () {
				this.setAttribute('aria-selected', true);
				this.checked = true;
				this.parentElement.className = 'sourcechooser-selected';

				var otherRadios = this.closest('.' + t.options.classPrefix + 'sourcechooser-selector').querySelectorAll('input[type=radio]');

				for (var j = 0, radioTotal = otherRadios.length; j < radioTotal; j++) {
					if (otherRadios[j] !== this) {
						otherRadios[j].setAttribute('aria-selected', 'false');
						otherRadios[j].removeAttribute('checked');
						otherRadios[j].parentElement.className = '';
					}
				}

				var src = this.value;

				if (media.getSrc() !== src) {
					var currentTime = media.currentTime;

					var paused = media.paused,
					    canPlayAfterSourceSwitchHandler = function canPlayAfterSourceSwitchHandler() {
						if (!paused) {
							media.setCurrentTime(currentTime);
							media.play();
						}
						media.removeEventListener('canplay', canPlayAfterSourceSwitchHandler);
					};

					media.pause();
					media.setSrc(src);
					media.load();
					media.addEventListener('canplay', canPlayAfterSourceSwitchHandler);
				}
			});
		}

		player.sourcechooserButton.querySelector('button').addEventListener('click', function () {
			if (mejs.Utils.hasClass(mejs.Utils.siblings(this), t.options.classPrefix + 'offscreen')) {
				player.showSourcechooserSelector();
				player.sourcechooserButton.querySelector('input[type=radio]:checked').focus();
			} else {
				player.hideSourcechooserSelector();
			}
		});
	},
	addSourceButton: function addSourceButton(src, label, type, isCurrent) {
		var t = this;
		if (label === '' || label === undefined) {
			label = src;
		}
		type = type.split('/')[1];

		t.sourcechooserButton.querySelector('ul').innerHTML += '<li' + (isCurrent ? ' class="sourcechooser-selected"' : '') + '>' + ('<input type="radio" name="' + t.id + '_sourcechooser" id="' + t.id + '_sourcechooser_' + label + type + '" ') + ('role="menuitemradio" value="' + src + '" ' + (isCurrent ? 'checked="checked"' : '') + ' aria-selected="' + isCurrent + '"/>') + ('<label for="' + t.id + '_sourcechooser_' + label + type + '" aria-hidden="true">' + label + '</label>') + '</li>';

	},
	hideSourcechooserSelector: function hideSourcechooserSelector() {

		var t = this;

		if (t.sourcechooserButton === undefined || !t.sourcechooserButton.querySelector('input[type=radio]')) {
			return;
		}

		var selector = t.sourcechooserButton.querySelector('.' + t.options.classPrefix + 'sourcechooser-selector'),
		    radios = selector.querySelectorAll('input[type=radio]');
		selector.setAttribute('aria-expanded', 'false');
		selector.setAttribute('aria-hidden', 'true');
		mejs.Utils.addClass(selector, t.options.classPrefix + 'offscreen');

		for (var i = 0, total = radios.length; i < total; i++) {
			radios[i].setAttribute('tabindex', '-1');
		}
	},
	showSourcechooserSelector: function showSourcechooserSelector() {

		var t = this;

		if (t.sourcechooserButton === undefined || !t.sourcechooserButton.querySelector('input[type=radio]')) {
			return;
		}

		var selector = t.sourcechooserButton.querySelector('.' + t.options.classPrefix + 'sourcechooser-selector'),
		    radios = selector.querySelectorAll('input[type=radio]');
		selector.setAttribute('aria-expanded', 'true');
		selector.setAttribute('aria-hidden', 'false');
		mejs.Utils.removeClass(selector, t.options.classPrefix + 'offscreen');

		for (var i = 0, total = radios.length; i < total; i++) {
			radios[i].setAttribute('tabindex', '0');
		}
	}
});

},{}]},{},[1]);
