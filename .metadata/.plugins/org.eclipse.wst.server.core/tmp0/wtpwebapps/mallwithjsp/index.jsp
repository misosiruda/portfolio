<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>미소 몰</title>
	<link href="css/main.css" rel="stylesheet">
</head>

<body>

	<header>
		<div class="head">
			<div class="upperHead">
				<div id="logo">
					<a href="#">
						<img src="img/header/logo.png" alt="한살림 장보기">
					</a>
				</div>
				<div class="login">
					<ul class="myMenu">
						<li class="dlvrMenu">
							<a href="#"><img src="img/header/icoDlvr.png" alt="매장배달 바로가기"></a>
						</li>
						<li>
							<%
								String userid = request.getParameter("userid");
								if (userid == null) {
							%>
									<a href="./login/loginform.jsp">로그인</a>
							<%
								} else {
							%>
									<a href="/mallwithjsp/manager.do?command=logout">로그아웃</a>
							<%
								}
							%>
						</li>
						<li>
							<a href="#">나의한살림</a>
						</li>
						<li>
							<a href=/mallwithjsp/manager.do?command=board_list>고객센터</a>
						</li>
						<li><a href="#">매장안내</a></li>
					</ul>
				</div>
			</div>
			<div class="lowerHead">
				<div class="category">
					<button class="allProduct" type="button">
						<span>전체물품</span>
					</button>
					<ul class="categoryMain">
						<li><a href="#">추천</a></li>
						<li><a href="#">알뜰</a></li>
						<li><a href="#">새물품</a></li>
						<li><a href="#">사전예약</a></li>
						<li><a href="#">꼬마와땅</a></li>
						<li><a href="#">채식</a></li>
						<li><a href="#">참여</a></li>
					</ul>
				</div>
				<div class="search">
					<div class="searchCon">
						<input type="search" placeholder="무엇을 찾아드릴까요?" id="searchKeyword" value="" maxlength="300"
							onkeydown="searchKeydown();">
						<button class="btnSearch" type="button" onclick="searchClick();">
							<span class="hide">검색</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div id="contents">
		<div class="slider">
			<div class="mainVisual swipe-container" style="height: 100%;">
				<ul class="content">
					<li class="swipe-slider">
						<a href="#"><img src="img/slider/1월 꼬마와땅 유아식.jpg" alt="1월 꼬마와땅 유아식"></a>
					</li>
					<li class="swipe-slider">
						<a href="#"><img src="img/slider/1월 이맘때이물품.jpg" alt="1월 이맘때이물품"></a>
					</li>1
					<li class="swipe-slider">
						<a href="#"><img src="img/slider/1월 제철제맛 요리.jpg" alt="1월 제철제맛 요리"></a>
					</li>
					<li class="swipe-slider">
						<a href="#"><img src="img/slider/2024 신규조합원 쿠폰 안내.jpg" alt="2024 신규조합원 쿠폰 안내"></a>
					</li>
					<li class="swipe-slider">
						<a href="#"><img src="img/slider/24-1월 새해인사.jpg" alt="24-1월 새해인사"></a>
					</li>
					<li class="swipe-slider">
						<a href="#"><img src="img/slider/24-1월 집중홍보물품 한입요거큐브.jpg" alt="24-1월 집중홍보물품 한입요거큐브"></a>
					</li>
					<li class="swipe-slider">
						<a href="#"><img src="img/slider/겨울철 대표간식모음.jpg" alt="겨울철 대표간식모음"></a>
					</li>
					<li class="swipe-slider">
						<a href="#"><img src="img/slider/조합원 채식밥상.jpg" alt="조합원 채식밥상"></a>
					</li>
				</ul>
				<script src="/js/slide.js"></script>
				<button type="button" class="mainVisualPrev"><span class="hide">PREV</span></button>
				<button type="button" class="mainVisualNext"><span class="hide">NEXT</span></button>
				<button type="button" class="visual-stop play"><span class="hide">PLAY/STOP</span></button>
				<div class="mainVisualPag swipe-pagination-fraction">
					<span class="slider-swipe-pagination-current"></span>
					/
					<span class="slider-swipe-pagination-total"></span>
				</div>
			</div>
		</div>

		<div class="suggestion">
			<div class="conArea">
				<p class="mainTit">이 물품은 어떠세요?</p>
				<div class="suggestionSwipe">
					<div class="boxs">
						<!-- JSON 데이터 읽어오기 -->
					</div>
				</div>
			</div>
		</div>

		<div class="discount">
			<div class="conArea">
				<div class="conL">
					<p class="mainTit">
						<span>놓치기 아쉬운</span>
						<br>
						알뜰물품
					</p>
					<p class="txt">
						가격인하 물품을
						<br>
						지금바로 이용해 보세요
					</p>
					<a href="#" class="btnType btnSize34 btnColorGyL">
						<span class="fc66">더보기</span>
					</a>
					<div class="swipeNavType1">
						<button class="swipeNavPrev"></button>
						<div class="mainSalePag swipeNavPagination swipe-pagination-fraction">
							<span class="swipe-pagination-current">3</span>
							/
							<span class="swipe-pagination-total">4</span>
						</div>
						<button class="swipeNavNext"></button>
					</div>
				</div>
				<div class="discountSwipe swipe-container">
					<div class="boxs">
						<!-- JSON 데이터 읽어오기 -->
					</div>
				</div>
			</div>
		</div>

		<div class="new">
			<div class="conArea">
				<p class="mainTit">
					<span>반가운</span>
					<br>
					새물품
				</p>
				<ul>
					<li>
						<div class="imgWrap">
							<a href="#">
								<img src="img/new/요거큐브.jpg" alt="요거큐브">
							</a>
						</div>
						<p class="tit">
							<a href="#">새콤달콤 유기농 딸기요구르트 과자, '한입요거큐브 딸기'</a>
						</p>
						<p class="txt">
							<a href="#">겉은 바삭, 입안에선 사르르~ 진한 맛은 물론 유산균도 풍부해요!</a>
						</p>
					</li>
					<li>
						<div class="imgWrap">
							<a href="#">
								<img src="img/new/요거큐브.jpg" alt="요거큐브">
							</a>
						</div>
						<p class="tit">
							<a href="#">새콤달콤 유기농 딸기요구르트 과자, '한입요거큐브 딸기'</a>
						</p>
					</li>
					<li>
						<div class="imgWrap">
							<a href="#">
								<img src="img/new/요거큐브.jpg" alt="요거큐브">
							</a>
						</div>
						<p class="tit">
							<a href="#">새콤달콤 유기농 딸기요구르트 과자, '한입요거큐브 딸기'</a>
						</p>
					</li>
					<li>
						<div class="imgWrap">
							<a href="#">
								<img src="img/new/요거큐브.jpg" alt="요거큐브">
							</a>
						</div>
						<p class="tit">
							<a href="#">새콤달콤 유기농 딸기요구르트 과자, '한입요거큐브 딸기'</a>
						</p>
					</li>
					<li>
						<div class="imgWrap">
							<a href="#">
								<img src="img/new/요거큐브.jpg" alt="요거큐브">
							</a>
						</div>
						<p class="tit">
							<a href="#">새콤달콤 유기농 딸기요구르트 과자, '한입요거큐브 딸기'</a>
						</p>
					</li>
				</ul>
			</div>
		</div>

		<div class="recommend">
			<div class="conArea">
				<div class="conL">
					<p class="mainTit">
						<em class="fgGreen">조합원</em>
						<span>님을 위한</span>
						<br>
						추천물품
					</p>
					<ul class="userTab">
						<li>
							<a href="#" class="active">
								밥보다 더 많이 먹는 볶음 밑반찬
							</a>
						</li>
					</ul>
					<div class="swipeNavType1">
						<button class="swipeNavPrev"></button>
						<div class="mainSalePag swipeNavPagination swipe-pagination-fraction">
							<span class="swipe-pagination-current">1</span>
							/
							<span class="swipe-pagination-total">4</span>
						</div>
						<button class="swipeNavNext"></button>
					</div>
				</div>
				<div class="recommendSwipe swipe-container">
					<div class="boxs">
						<!-- JSON 데이터 읽어오기 -->
					</div>
				</div>
			</div>
		</div>

		<div class="popular">
			<div class="conArea">
				<p class="mainTit">
					<span>지금 가장 많이 이용하는</span>
					인기물품
				</p>
				<div class="productorTab">
					<div
						class="mainProducerSwipe swipe-container swipe-container-initialized swipe-container-horizontal">
						<div class="swipe-wrapper">
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/쌀_잡곡.png')"></em>쌀/잡곡
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260240934.png')"></em>채소/버섯
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260252401.png')"></em>과일/견과
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260267089.png')"></em>축산/축산가공
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260282395.png')"></em>수산/수산가공
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260298231.png')"></em>반찬/양념/가루
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260311438.png')"></em>식사대용/간편식
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em
											style="background-image:url('img/poppular/1628260323282.png')"></em>간식/음료/유제품
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260332898.png')"></em>건강/차
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em
											style="background-image:url('img/poppular/1628260346196.png')"></em>화장품/오가닉코튼
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260430049.png')"></em>주방/욕실/세정
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260440313.png')"></em>휴지/생활
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260451878.png')"></em>반려동물
									</span>
								</button>
							</div>
							<div class="swipe-slide swipe-slide" style="width: 140px; margin-right: 10px;">
								<button type="button" class="producerIco btnIco1">
									<span>
										<em style="background-image:url('img/poppular/1628260461288.png')"></em>대용량/어린이집
									</span>
								</button>
							</div>
						</div>
					</div>
					<div class="swipeNavType1">
						<button class="mainProducerPrev swipeNavPrev"></button>
						<button class="mainProducerNext swipeNavNext"></button>
					</div>
				</div>
				<div class="popularSwipe">
					<!-- JSON 데이터 읽어오기 -->
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div class="footerUtil">
			<ul>
				<li><a href="">이용약관</a></li>
				<li><a href="">개인정보처리방침</a></li>
				<li><a href="">한살림소개</a></li>
				<li><a href="">소식지PDF</a></li>
				<li><a href="">앱다운로드</a></li>
			</ul>
		</div>
		<div class="hssFamily" style="display: none;"></div>
		<div class="footerInfo">
			<div class="infoWrap">
				<div class="ftInfo">
					<div class="box left">
						<p>상호명 : 한살림소비자생활협동조합연합회</p>
						<p>대표자 : 권옥자</p>
						<p>사업자등록번호 : <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1268212328&apv_perm_no="
								target="_blank"><b>126-82-12328</b></a></p>
						<p>통신판매업신고번호 : <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1268212328&apv_perm_no="
								target="_blank"><b>2014-경기안성-093호</b></a></p>
						<p>안성사무소 : 경기 안성시 대덕면 안성대로 1526(보동리 285-3) / 서울사무소 : 서울시 강남구 봉은사로81길 15(삼성동)</p>
						<p>입점문의 : <a href="https://forms.gle/RSM8hTCxq23CuUAVA" target="_blank"><b>입점문의하기</b></a>
						</p>
						<p>이메일 : <a href="mailto:hansalim@hansalim.or.kr">hansalim@hansalim.or.kr</a></p>
						<p>이곳의 모든 저작권은 한살림에게 있습니다.</p>
					</div>
				</div>
				<ul class="ftSns">
					<li><a href="https://www.instagram.com/hansalim_official/" target="_blank"><span
								class="hide">insta</span></a>
					</li>
					<li><a href="https://www.facebook.com/hansalim1986" target="_blank"><span
								class="hide">facebook</span></a>
					</li>
					<li><a href="http://blog.naver.com/hansalim" target="_blank"><span class="hide">naver
								blog</span></a></li>
					<li><a href="https://www.youtube.com/channel/UCpu-ENJQUmzw1zgAKhwexag" target="_blank"><span
								class="hide">youtube</span></a></li>
					<li><a href="https://pf.kakao.com/_biqNu" target="_blank"><span class="hide">kakaotalk</span></a>
					</li>
				</ul>
			</div>
		</div>
	</footer>

	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<!-- 슬라이더 JS -->
	<script>
		function slide()
		{
			let wid = 1920;
			let arr = $('.swipe-slider').toArray();
			$('.slider-swipe-pagination-total').html(arr.length);
			arr.map((v, i) =>
			{
				$(v).attr('slider-index-data', i + 1);
			});
			$('.slider-swipe-pagination-current').html($('.content li:first-child').attr('slider-index-data'));
			function nextSlide()
			{
				if ($('.swipe-container .content').queue('fx').length === 0)
				{
					$('.content').stop(false, true).animate({ marginLeft: -wid }, 800, function ()
					{
						$('.swipe-container .content li:first-child').appendTo($('.swipe-container .content'));
						$('.swipe-container .content').css({ marginLeft: 0 });
						$('.slider-swipe-pagination-current').html($('.content li:first-child').attr('slider-index-data'));
					});
				}
			}
			function prevSlide()
			{
				if ($('.swipe-container .content').queue('fx').length === 0)
				{
					$('.swipe-container .content li:last-child').prependTo('.content');
					$('.swipe-container .content').css({ marginLeft: -wid });
					$('.swipe-container .content').stop(false, true).animate({ marginLeft: 0 }, 800,);
					$('.slider-swipe-pagination-current').html($('.content li:first-child').attr('slider-index-data'));
				}
			};
			$('.mainVisualPrev').click(prevSlide);
			$('.mainVisualNext').click(nextSlide);
			let isStop = false;
			$('visual-stop').click(function ()
			{
				isStop = true;
				clearInterval(sliderIntervalIndex);
			});
			let sliderIntervalTime = 5000;
			let sliderIntervalIndex = setInterval(nextSlide, sliderIntervalTime);
			$('.slider').mouseover(function ()
			{
				clearInterval(sliderIntervalIndex);
			}).mouseleave(function ()
			{
				if (!isStop) sliderIntervalIndex = setInterval(nextSlide, sliderIntervalTime);
			});
		}
		slide();



	</script>
	<!-- JSON 읽어오기 -->
	<script>
		// 상품 박스에 읽어온 JSON 데이터를 HTML 로 변환해서 string 으로 반환하는 함수
		function productBoxGenerator(data, containerSel)
		{
			const pasing = function (data)
			{
				let name = data.name;
				let price = data.price;
				price = price.toLocaleString();
				let pictureURL = data.pictureURL;
				let option = data.option;
				if (option === 'popular')
				{
					option = '<div><p class="pdtState"><span>인기</span></p></div>';
				}
				else if (option === 'discount')
				{
					option = '<div><div class="pdtState list-type"><p class="title">알뜰</p><ul><li>가격인하</li></ul></div></div>';
				}
				let url = data.url;
				let text = '<a href="' + url + '">' +
					'<div class="imgWrap">' +
					option +
					'</p><img src=' + pictureURL + ' alt="' + name + '">' +
					'</div><div class="textWrap">' +
					'<p class="famousName"><a href="#">' + name + '</a></p>' +
					'<div class="famousPrice">' +
					'<a href="' + url + '">' +
					'<p class="price">' + price + '<span>원</span></p>' +
					'</a>' +
					'</div>' +
					'<button class="btnCart"></button>' +
					'</div>' +
					'</a >';

				return text;
			};
			for (let i in data)
			{
				let text = pasing(data[i]);
				let container = $(containerSel);
				container.append('<div class="box"></div>');
				container.children('.box').eq(i).append(text);
			}
		}

		//상품 슬라이드 함수
		function Productslide(conArea)
		{
			let wid = 912;
			let arr = $(conArea + '>.swipe-container>.boxs>.box').toArray();
			let content = conArea + '>.swipe-container>.boxs';
			let conNav = conArea + '>.conL>.swipeNavType1';
			let maxidx = Math.ceil(arr.length / 3);
			$(conNav + '>.mainSalePag>.swipe-pagination-total').text(maxidx);
			arr.map((v, i) =>
			{
				$(v).attr('slider-index-data', i + 1);
			});
			let index = 1;
			let currentMargin = 0;
			let boxidx = 3;
			$(conNav + '>.mainSalePag>.swipe-pagination-current').text(index);


			function nextSlide()
			{
				let strArr = $(content).css('margin-left').split('');
				let num = strArr.splice(0, strArr.length - 2).join('');
				currentMargin = Number(num);

				if ($(content).queue('fx').length !== 0)
				{
					return;
				}
				else if (index === maxidx)
				{
					return;
				}
				else if (arr.length - boxidx >= 3)
				{
					currentMargin = currentMargin - wid;
					$(content).stop(false, true).animate({ marginLeft: currentMargin }, 800);
					boxidx += 3;
				}
				else
				{
					currentMargin = currentMargin - ((wid / 3 * (arr.length % 3)));
					$(content).stop(false, true).animate({ marginLeft: currentMargin }, 800);
					boxidx = arr.length;
				}
				$(conNav + '>.mainSalePag>.swipe-pagination-current').text(String(++index));
			}
			function prevSlide()
			{
				let strArr = $(content).css('margin-left').split('');
				let num = strArr.splice(0, strArr.length - 2).join('');
				currentMargin = Number(num);

				if ($(content).queue('fx').length !== 0)
				{
					return;
				}
				else if (index === 1)
				{
					return;
				}
				else if (boxidx - 3 >= 3)
				{
					currentMargin = currentMargin + wid;
					$(content).stop(false, true).animate({ marginLeft: currentMargin }, 800);
					boxidx -= 3;
				}
				else
				{
					currentMargin = currentMargin + ((wid / 3 * (arr.length % 3)));
					$(content).stop(false, true).animate({ marginLeft: currentMargin }, 800);
					boxidx = 3;
				}
				$(conNav + '>.mainSalePag>.swipe-pagination-current').text(String(--index));
			}
			$(conNav + '>.swipeNavPrev').mousedown(prevSlide);
			$(conNav + '>.swipeNavNext').mousedown(nextSlide);
		}
		//상품 탭 슬라이드 함수
		function Tabslide(conArea)
		{
			let wid = 1040;
			let arr = $('.swipe-slide').toArray();
			let content = '.swipe-wrapper';
			let currentMargin = 0;
			let boxidx = 0;


			function nextSlide()
			{
				let strArr = $(content).css('margin-left').split('');
				let num = strArr.splice(0, strArr.length - 2).join('');
				currentMargin = Number(num);

				if ($(content).queue('fx').length !== 0)
				{
					return;
				}
				else if (boxidx === 3)
				{
					return;
				}
				else 
				{
					currentMargin = currentMargin - wid;
					$(content).stop(false, true).animate({ marginLeft: currentMargin }, 800);
					boxidx += 3;
				}
			}
			function prevSlide()
			{

				let strArr = $(content).css('margin-left').split('');
				let num = strArr.splice(0, strArr.length - 2).join('');
				currentMargin = Number(num);

				if ($(content).queue('fx').length !== 0)
				{
					return;
				}
				else if (boxidx === 0)
				{
					return;
				}
				else
				{
					currentMargin = currentMargin + wid;
					$(content).stop(false, true).animate({ marginLeft: currentMargin }, 800);
					boxidx -= 3;
				}
			}
			$('.mainProducerPrev').mousedown(prevSlide);
			$('.mainProducerNext').mousedown(nextSlide);
		}


		$(function ()//메인 추천 구역
		{
			$.ajax(
				{
					url: "./json/mainRecommandProduct.json",
					dataType: "json",
					success: function (data)
					{
						productBoxGenerator(data, '.suggestion>.conArea>.suggestionSwipe>.boxs');
					}
				});
		});
		$(function ()//세일 구역
		{
			$.ajax(
				{
					url: "./json/discountProduct.json",
					dataType: "json",
					success: function (data)
					{
						productBoxGenerator(data, '.discount>.conArea>.discountSwipe>.boxs');
						Productslide('.discount>.conArea');
					}
				});
		});
		$(function ()//서브 추천 구역
		{
			$.ajax(
				{
					url: "./json/recomendProduct.json",
					dataType: "json",
					success: function (data)
					{
						productBoxGenerator(data, '.recommend>.conArea>.recommendSwipe>.boxs');
						Productslide('.recommend>.conArea');
					}
				});
		});
		$(function ()//인기 구역(버튼 누르면 다른 상품 뜨게 바꿔야함)
		{
			$.ajax(
				{
					url: "./json/popularProduct.json",
					dataType: "json",
					success: function (data)
					{
						let start = 0, end = 0;
						data.map((v, i) =>
						{
							if ((i + 1) % 4 === 0 && i !== 0)
							{
								end = i;
								let arr = data.slice(start, end + 1);
								let num = ((i + 1) / 4);
								$('.popularSwipe').append('<div class="boxs""></div>');
								productBoxGenerator(arr, '.popularSwipe>.boxs:nth-child(' + num + ')');
								$('.popularSwipe>.boxs:nth-child(' + num + ')').css({ zIndex: 0 - num + 1 });
								start = end + 1;
							}
						});
						// productBoxGenerator(data, '.popular>.conArea>.popularSwipe>.boxs');
						Tabslide('.poppular>.conArea');
						let prevZ = 0;
						$('.swipe-wrapper>.swipe-slide').click(function ()
						{
							let num = $('.swipe-slide').index(this);
							$('.popularSwipe>.boxs').eq(num).css({ zIndex: 1 });
							$('.popularSwipe>.boxs').eq(0 - prevZ).css({ zIndex: prevZ });
							prevZ = 0 - num;

							console.log(0 - prevZ, prevZ);
						});
					}
				});
		});
		$(function ()
		{

		})
	</script>


</body>

</html>