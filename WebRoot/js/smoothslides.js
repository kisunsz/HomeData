(function($) {
	$.fn.extend({
		smoothSlides : function(options) {
			// These are overridden by options declared in footer
			var defaults = {
				autoPlay : true,
				fullTime : 3000
			}

			var options = $.extend(defaults, options);
			var index = 0;
			var $this = $(this);
			$this.children().remove();
			$this.append(showImg());

			$('.grid').on('click', '.grid-item', function(event) {
				index = $(this).find("img").attr("index");
				showImg();
				event.preventDefault();
			})

			$(".prev").on("click", function() {
				preIndex();
				showImg();
			})

			$(".next").on("click", function() {
				nextIndex();
				showImg();
			})

			$(".autoPlay").on(
					"click",
					function() {
						var span = $(this).find("span");
						if (span.hasClass("glyphicon-pause")) {
							span.removeClass("glyphicon-pause").addClass(
									"glyphicon-play");
							options.autoPlay = false;
						} else {
							span.removeClass("glyphicon-play").addClass(
									"glyphicon-pause");
							options.autoPlay = true;
						}
					})

			if (options.autoPlay) {
				setInterval(autoPlay, options.fullTime);
			}

			function nextIndex() {
				var length = $(".grid-item").length;
				if (index >= length - 1) {
					index = index - length;
				}
				index++;
			}

			function preIndex() {
				var length = $(".grid-item").length;
				if (index == 0) {
					index = length - 1;
				}
				index--;
			}

			function autoPlay() {
				if (options.autoPlay) {
					nextIndex();
					showImg();
				}
			}

			function showImg() {
				var img = $this.find("img");
				if (img.length == 0) {
					var newImg = getImg();
					$this.append(newImg);
					newImg.fadeIn("slow");
				} else {
					img.fadeOut("slow", function() {
						var newImg = getImg();
						newImg.hide();
						$this.append(newImg);
						img.remove();
						newImg.fadeIn("slow");
					})
				}
				showTitle();
			}

			function showTitle() {
				var img = $(".grid").find("img:eq(" + index + ")");
				$(".left-title").find("h3").text(img.attr("title"));
				$(".left-title").find("p").text(img.attr("date"));
			}

			function getImg() {
				var img = $(".grid").find("img:eq(" + index + ")");
				var alt = img.attr("alt");
				var bigImg = $("<img>").attr("src", alt);
				return bigImg;
			}

		}
	})
})(jQuery);