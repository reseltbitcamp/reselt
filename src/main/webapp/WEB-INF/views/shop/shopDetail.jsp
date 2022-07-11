<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- left page -->
  		
  <div class="relative">
    <div class="relative md:fixed w-full md:w-6/12 min-h-screen content-center">
    <!-- <!DOCTYPE html> -->
      <html>

      <head>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">
      </head>
        <div class="carousel relative bg-yellow-200 w-2/3">
          <div class="carousel-inner relative overflow-hidden">
            <!--Slide 1-->
            <input class="carousel-open" type="radio" id="carousel-1" name="carousel" aria-hidden="true" hidden="" checked="checked">
            <div class="carousel-item absolute opacity-0" style="height:75vh;">
              <div class="object-cover h-full w-full bg-center" style="background-image: url(https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjQx/MDAxNjI3NDQxMDEyMjA2.DcysBFreA7tuLaKgU7UyPWct_NH87Ad9ktvGmEmaXjUg.VFp5d9BX5YPB-h6fGruYOUDXGrz_UPXrJWnPANfhhJAg.PNG/p_8d86fe659c3542b2aaafa40a7a0048c1.png?type=l_webp);"></div>
            </div>
            <label for="carousel-3" class="prev control-1 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-200 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
            <label for="carousel-2" class="next control-1 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-200 leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>
      
            <!--Slide 2-->
            <input class="carousel-open" type="radio" id="carousel-2" name="carousel" aria-hidden="true" hidden="">
            <div class="carousel-item absolute opacity-0" style="height:75vh;">
              <div class="object-cover h-full w-full bg-center" style="background-image: url(https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjQx/MDAxNjI3NDQxMDEyMjA2.DcysBFreA7tuLaKgU7UyPWct_NH87Ad9ktvGmEmaXjUg.VFp5d9BX5YPB-h6fGruYOUDXGrz_UPXrJWnPANfhhJAg.PNG/p_8d86fe659c3542b2aaafa40a7a0048c1.png?type=l_webp);"></div>
            </div>
            <label for="carousel-1" class="prev control-2 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-200 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
            <label for="carousel-3" class="next control-2 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-200 leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>
      
            <!--Slide 3-->
            <input class="carousel-open" type="radio" id="carousel-3" name="carousel" aria-hidden="true" hidden="">
            <div class="carousel-item absolute opacity-0" style="height:75vh;">
              <div class="object-cover h-full w-full bg-center" style="background-image: url(https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjQx/MDAxNjI3NDQxMDEyMjA2.DcysBFreA7tuLaKgU7UyPWct_NH87Ad9ktvGmEmaXjUg.VFp5d9BX5YPB-h6fGruYOUDXGrz_UPXrJWnPANfhhJAg.PNG/p_8d86fe659c3542b2aaafa40a7a0048c1.png?type=l_webp);"></div>
            </div>
            <label for="carousel-2" class="prev control-3 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-200 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
            <label for="carousel-1" class="next control-3 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-200 leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>
      
            <!-- Add additional indicators for each slide-->
            <ol class="carousel-indicators">
              <li class="inline-block mr-3">
                <label for="carousel-1" class="carousel-bullet cursor-pointer block text-4xl text-white hover:text-blue-700">•</label>
              </li>
              <li class="inline-block mr-3">
                <label for="carousel-2" class="carousel-bullet cursor-pointer block text-4xl text-white hover:text-blue-700">•</label>
              </li>
              <li class="inline-block mr-3">
                <label for="carousel-3" class="carousel-bullet cursor-pointer block text-4xl text-white hover:text-blue-700">•</label>
              </li>
            </ol>
      
          </div>
        </div>
      
      </html>
    </div>
  
  <!-- right page -->
  <div class="md:w-6/12 ml-auto pl-10 border-l-2 border-gray-200 content-center">
      <div class="basis-1/2 max-w-[600px] flex-initial mb-3">
        <div class="max-w-md">
          <p class="text-lg font-black underline">Nike</p>
          <p>Nike Dunk Low Retro Black</p>
          <p class="mb-2 text-sm text-gray-400">나이키 덩크 로우 레트로 블랙</p>
        </div>

        <div class="border-b border-gray-300 flex-initial">
          <p class="mb-3 inline-block text-xs">사이즈</p>
          <a class="float-right cursor-pointer font-semibold">모든사이즈</a>
          <button></button>
        </div>

        <div class="mt-3 flex-initial">
          <p class="mb-3 text-xs">최근거래가
          <span class="float-right text-xl font-semibold">150,000원</p>
          <p class="float-right text-xs text-green-500">▼ 27,000원(-13.2%)</p>
        </div>
        
        <div class="flex flex-row gap-3 rounded-3xl p-1 text-center mt-9 flex-initial">
          <a id="buyBtn" href="#" class="w-80 rounded-xl p-2 bg-[#ef6153]  align-middle text-sm">
            <strong class=" ml-2 h-full w-14 float-left flex items-center border-r-[1px] text-white border-gray-400">구매</strong>
              <div class="float-left ml-2">
                <p class="text-base font-semibold text-white">150,000원</p>
                <span class="float-left text-xs text-white ">즉시구매가</span>
              </div>
          </a>
      
          <a id="sellBtn" href="#" class="w-80 rounded-xl p-2 bg-[#41b979]  align-middle text-sm">
            <strong class=" ml-2 h-full w-14 float-left flex items-center border-r-[1px] text-white border-gray-400">판매</strong>
              <div class="float-left ml-2">
                <p class="text-base font-semibold text-white">150,000원</p>
                <span class="float-left text-xs text-white ">즉시 판매가</span>
              </div>
          </a>
        </div>
        
          <button id="bookmarkModal" data-modal-toggle="crypto-modal" type="button" class="h-[60px] w-full border-[1px] border-gray-300 flex items-center justify-center rounded-[10px] flex-initial mt-5">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1">
              <path stroke-linecap="round" stroke-linejoin="round" d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
            </svg>
            <span class="mx-1.5">관심상품</span>
            <span class="font-semibold">10.2만</span>
          </button>
          <div id="crypto-modal" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 w-full md:inset-0 h-modal md:h-full">
            <div class="relative p-4 w-full max-w-md h-full md:h-auto">
                <!-- Modal content -->
                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                    <button type="button" class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white" data-modal-toggle="crypto-modal">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>  
                    </button>
                    <!-- Modal header -->
                    <div class="py-4 px-6 rounded-t border-b dark:border-gray-600">
                        <h3 class="text-base font-semibold text-gray-900 lg:text-xl dark:text-white">
                            Connect wallet
                        </h3>
                    </div>
                    <!-- Modal body -->
                    <div class="p-6">
                        <p class="text-sm font-normal text-gray-500 dark:text-gray-400">Connect with one of our available wallet providers or create a new one.</p>
                        <ul class="my-4 space-y-3">
                            <li>
                                <a href="#" class="flex items-center p-3 text-base font-bold text-gray-900 bg-gray-50 rounded-lg hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                    <svg class="h-4" viewBox="0 0 40 38" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M39.0728 0L21.9092 12.6999L25.1009 5.21543L39.0728 0Z" fill="#E17726"/><path d="M0.966797 0.0151367L14.9013 5.21656L17.932 12.7992L0.966797 0.0151367Z" fill="#E27625"/><path d="M32.1656 27.0093L39.7516 27.1537L37.1004 36.1603L27.8438 33.6116L32.1656 27.0093Z" fill="#E27625"/><path d="M7.83409 27.0093L12.1399 33.6116L2.89876 36.1604L0.263672 27.1537L7.83409 27.0093Z" fill="#E27625"/><path d="M17.5203 10.8677L17.8304 20.8807L8.55371 20.4587L11.1924 16.4778L11.2258 16.4394L17.5203 10.8677Z" fill="#E27625"/><path d="M22.3831 10.7559L28.7737 16.4397L28.8067 16.4778L31.4455 20.4586L22.1709 20.8806L22.3831 10.7559Z" fill="#E27625"/><path d="M12.4115 27.0381L17.4768 30.9848L11.5928 33.8257L12.4115 27.0381Z" fill="#E27625"/><path d="M27.5893 27.0376L28.391 33.8258L22.5234 30.9847L27.5893 27.0376Z" fill="#E27625"/><path d="M22.6523 30.6128L28.6066 33.4959L23.0679 36.1282L23.1255 34.3884L22.6523 30.6128Z" fill="#D5BFB2"/><path d="M17.3458 30.6143L16.8913 34.3601L16.9286 36.1263L11.377 33.4961L17.3458 30.6143Z" fill="#D5BFB2"/><path d="M15.6263 22.1875L17.1822 25.4575L11.8848 23.9057L15.6263 22.1875Z" fill="#233447"/><path d="M24.3739 22.1875L28.133 23.9053L22.8184 25.4567L24.3739 22.1875Z" fill="#233447"/><path d="M12.8169 27.0049L11.9606 34.0423L7.37109 27.1587L12.8169 27.0049Z" fill="#CC6228"/><path d="M27.1836 27.0049L32.6296 27.1587L28.0228 34.0425L27.1836 27.0049Z" fill="#CC6228"/><path d="M31.5799 20.0605L27.6165 24.0998L24.5608 22.7034L23.0978 25.779L22.1387 20.4901L31.5799 20.0605Z" fill="#CC6228"/><path d="M8.41797 20.0605L17.8608 20.4902L16.9017 25.779L15.4384 22.7038L12.3988 24.0999L8.41797 20.0605Z" fill="#CC6228"/><path d="M8.15039 19.2314L12.6345 23.7816L12.7899 28.2736L8.15039 19.2314Z" fill="#E27525"/><path d="M31.8538 19.2236L27.2061 28.2819L27.381 23.7819L31.8538 19.2236Z" fill="#E27525"/><path d="M17.6412 19.5088L17.8217 20.6447L18.2676 23.4745L17.9809 32.166L16.6254 25.1841L16.625 25.1119L17.6412 19.5088Z" fill="#E27525"/><path d="M22.3562 19.4932L23.3751 25.1119L23.3747 25.1841L22.0158 32.1835L21.962 30.4328L21.75 23.4231L22.3562 19.4932Z" fill="#E27525"/><path d="M27.7797 23.6011L27.628 27.5039L22.8977 31.1894L21.9414 30.5138L23.0133 24.9926L27.7797 23.6011Z" fill="#F5841F"/><path d="M12.2373 23.6011L16.9873 24.9926L18.0591 30.5137L17.1029 31.1893L12.3723 27.5035L12.2373 23.6011Z" fill="#F5841F"/><path d="M10.4717 32.6338L16.5236 35.5013L16.4979 34.2768L17.0043 33.8323H22.994L23.5187 34.2753L23.48 35.4989L29.4935 32.641L26.5673 35.0591L23.0289 37.4894H16.9558L13.4197 35.0492L10.4717 32.6338Z" fill="#C0AC9D"/><path d="M22.2191 30.231L23.0748 30.8354L23.5763 34.8361L22.8506 34.2234H17.1513L16.4395 34.8485L16.9244 30.8357L17.7804 30.231H22.2191Z" fill="#161616"/><path d="M37.9395 0.351562L39.9998 6.53242L38.7131 12.7819L39.6293 13.4887L38.3895 14.4346L39.3213 15.1542L38.0875 16.2779L38.8449 16.8264L36.8347 19.1742L28.5894 16.7735L28.5179 16.7352L22.5762 11.723L37.9395 0.351562Z" fill="#763E1A"/><path d="M2.06031 0.351562L17.4237 11.723L11.4819 16.7352L11.4105 16.7735L3.16512 19.1742L1.15488 16.8264L1.91176 16.2783L0.678517 15.1542L1.60852 14.4354L0.350209 13.4868L1.30098 12.7795L0 6.53265L2.06031 0.351562Z" fill="#763E1A"/><path d="M28.1861 16.2485L36.9226 18.7921L39.7609 27.5398L32.2728 27.5398L27.1133 27.6049L30.8655 20.2912L28.1861 16.2485Z" fill="#F5841F"/><path d="M11.8139 16.2485L9.13399 20.2912L12.8867 27.6049L7.72971 27.5398H0.254883L3.07728 18.7922L11.8139 16.2485Z" fill="#F5841F"/><path d="M25.5283 5.17383L23.0847 11.7736L22.5661 20.6894L22.3677 23.4839L22.352 30.6225H17.6471L17.6318 23.4973L17.4327 20.6869L16.9139 11.7736L14.4707 5.17383H25.5283Z" fill="#F5841F"/></svg>
                                    <span class="flex-1 ml-3 whitespace-nowrap">MetaMask</span>
                                    <span class="inline-flex items-center justify-center px-2 py-0.5 ml-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">Popular</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="flex items-center p-3 text-base font-bold text-gray-900 bg-gray-50 rounded-lg hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                    <svg class="h-5" viewBox="0 0 292 292" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M145.7 291.66C226.146 291.66 291.36 226.446 291.36 146C291.36 65.5541 226.146 0.339844 145.7 0.339844C65.2542 0.339844 0.0400391 65.5541 0.0400391 146C0.0400391 226.446 65.2542 291.66 145.7 291.66Z" fill="#3259A5"/><path d="M195.94 155.5C191.49 179.08 170.8 196.91 145.93 196.91C117.81 196.91 95.0204 174.12 95.0204 146C95.0204 117.88 117.81 95.0897 145.93 95.0897C170.8 95.0897 191.49 112.93 195.94 136.5H247.31C242.52 84.7197 198.96 44.1797 145.93 44.1797C89.6904 44.1797 44.1104 89.7697 44.1104 146C44.1104 202.24 89.7004 247.82 145.93 247.82C198.96 247.82 242.52 207.28 247.31 155.5H195.94Z" fill="white"/></svg>
                                    <span class="flex-1 ml-3 whitespace-nowrap">Coinbase Wallet</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="flex items-center p-3 text-base font-bold text-gray-900 bg-gray-50 rounded-lg hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                    <svg svg class="h-5"viewBox="0 0 75.591 75.591" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><linearGradient id="a" gradientTransform="matrix(0 -54.944 -54.944 0 23.62 79.474)" gradientUnits="userSpaceOnUse" x2="1"><stop offset="0" stop-color="#ff1b2d"/><stop offset=".3" stop-color="#ff1b2d"/><stop offset=".614" stop-color="#ff1b2d"/><stop offset="1" stop-color="#a70014"/></linearGradient><linearGradient id="b" gradientTransform="matrix(0 -48.595 -48.595 0 37.854 76.235)" gradientUnits="userSpaceOnUse" x2="1"><stop offset="0" stop-color="#9c0000"/><stop offset=".7" stop-color="#ff4b4b"/><stop offset="1" stop-color="#ff4b4b"/></linearGradient><g transform="matrix(1.3333 0 0 -1.3333 0 107.2)"><path d="m28.346 80.398c-15.655 0-28.346-12.691-28.346-28.346 0-15.202 11.968-27.609 26.996-28.313.44848-.02115.89766-.03314 1.3504-.03314 7.2574 0 13.876 2.7289 18.891 7.2137-3.3227-2.2036-7.2074-3.4715-11.359-3.4715-6.7504 0-12.796 3.3488-16.862 8.6297-3.1344 3.6999-5.1645 9.1691-5.3028 15.307v1.3349c.13821 6.1377 2.1683 11.608 5.302 15.307 4.0666 5.2809 10.112 8.6297 16.862 8.6297 4.1526 0 8.038-1.2679 11.361-3.4729-4.9904 4.4643-11.569 7.1876-18.786 7.2144-.03596 0-.07122.0014-.10718.0014z" fill="url(#a)"/><path d="m19.016 68.025c2.6013 3.0709 5.9607 4.9227 9.631 4.9227 8.2524 0 14.941-9.356 14.941-20.897s-6.6891-20.897-14.941-20.897c-3.6703 0-7.0297 1.851-9.6303 4.922 4.0659-5.2809 10.111-8.6297 16.862-8.6297 4.1519 0 8.0366 1.2679 11.359 3.4715 5.802 5.1906 9.4554 12.735 9.4554 21.133 0 8.397-3.6527 15.941-9.4533 21.131-3.3234 2.205-7.2088 3.4729-11.361 3.4729-6.7504 0-12.796-3.3488-16.862-8.6297" fill="url(#b)"/></g></svg>
                                    <span class="flex-1 ml-3 whitespace-nowrap">Opera Wallet</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="flex items-center p-3 text-base font-bold text-gray-900 bg-gray-50 rounded-lg hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                    <svg class="h-5" viewBox="0 0 512 512" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><radialGradient cx="0%" cy="50%" fx="0%" fy="50%" r="100%" id="radialGradient-1"><stop stop-color="#5D9DF6" offset="0%"></stop><stop stop-color="#006FFF" offset="100%"></stop></radialGradient></defs><g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="logo"><rect id="base" fill="url(#radialGradient-1)" x="0" y="0" width="512" height="512" rx="256"></rect><path d="M169.209772,184.531136 C217.142772,137.600733 294.857519,137.600733 342.790517,184.531136 L348.559331,190.179285 C350.955981,192.525805 350.955981,196.330266 348.559331,198.676787 L328.82537,217.99798 C327.627045,219.171241 325.684176,219.171241 324.485851,217.99798 L316.547278,210.225455 C283.10802,177.485633 228.89227,177.485633 195.453011,210.225455 L186.951456,218.549188 C185.75313,219.722448 183.810261,219.722448 182.611937,218.549188 L162.877976,199.227995 C160.481326,196.881474 160.481326,193.077013 162.877976,190.730493 L169.209772,184.531136 Z M383.602212,224.489406 L401.165475,241.685365 C403.562113,244.031874 403.562127,247.836312 401.165506,250.182837 L321.971538,327.721548 C319.574905,330.068086 315.689168,330.068112 313.292501,327.721609 C313.292491,327.721599 313.29248,327.721588 313.29247,327.721578 L257.08541,272.690097 C256.486248,272.103467 255.514813,272.103467 254.915651,272.690097 C254.915647,272.690101 254.915644,272.690105 254.91564,272.690108 L198.709777,327.721548 C196.313151,330.068092 192.427413,330.068131 190.030739,327.721634 C190.030725,327.72162 190.03071,327.721606 190.030695,327.721591 L110.834524,250.181849 C108.437875,247.835329 108.437875,244.030868 110.834524,241.684348 L128.397819,224.488418 C130.794468,222.141898 134.680206,222.141898 137.076856,224.488418 L193.284734,279.520668 C193.883897,280.107298 194.85533,280.107298 195.454493,279.520668 C195.454502,279.520659 195.45451,279.520651 195.454519,279.520644 L251.65958,224.488418 C254.056175,222.141844 257.941913,222.141756 260.338618,224.488222 C260.338651,224.488255 260.338684,224.488288 260.338717,224.488321 L316.546521,279.520644 C317.145683,280.107273 318.117118,280.107273 318.71628,279.520644 L374.923175,224.489406 C377.319825,222.142885 381.205562,222.142885 383.602212,224.489406 Z" id="WalletConnect" fill="#FFFFFF" fill-rule="nonzero"></path></g></g></svg>
                                    <span class="flex-1 ml-3 whitespace-nowrap">WalletConnect</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="flex items-center p-3 text-base font-bold text-gray-900 bg-gray-50 rounded-lg hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                    <svg class="h-4" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M72.0998 0.600098H48.3998H24.5998H0.799805V24.4001V48.2001V49.7001V71.8001V71.9001V95.5001H24.5998V72.0001V71.9001V49.8001V48.3001V24.5001H48.3998H72.1998H95.9998V0.700104H72.0998V0.600098Z" fill="#617BFF"/><path d="M48.5 71.8002H72.1V95.6002H73C79.1 95.6002 84.9 93.2002 89.2 88.9002C93.5 84.6002 95.9 78.8002 95.9 72.7002V48.2002H48.5V71.8002Z" fill="#617BFF"/></svg>
                                    <span class="flex-1 ml-3 whitespace-nowrap">Fortmatic</span>
                                </a>
                            </li>
                        </ul>
                        <div>
                            <a href="#" class="inline-flex items-center text-xs font-normal text-gray-500 hover:underline dark:text-gray-400">
                                <svg class="mr-2 w-3 h-3" aria-hidden="true" focusable="false" data-prefix="far" data-icon="question-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M256 8C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm0 448c-110.532 0-200-89.431-200-200 0-110.495 89.472-200 200-200 110.491 0 200 89.471 200 200 0 110.53-89.431 200-200 200zm107.244-255.2c0 67.052-72.421 68.084-72.421 92.863V300c0 6.627-5.373 12-12 12h-45.647c-6.627 0-12-5.373-12-12v-8.659c0-35.745 27.1-50.034 47.579-61.516 17.561-9.845 28.324-16.541 28.324-29.579 0-17.246-21.999-28.693-39.784-28.693-23.189 0-33.894 10.977-48.942 29.969-4.057 5.12-11.46 6.071-16.666 2.124l-27.824-21.098c-5.107-3.872-6.251-11.066-2.644-16.363C184.846 131.491 214.94 112 261.794 112c49.071 0 101.45 38.304 101.45 88.8zM298 368c0 23.159-18.841 42-42 42s-42-18.841-42-42 18.841-42 42-42 42 18.841 42 42z"></path></svg>
                                Why do I need to connect with my wallet?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
          
          <div class="mt-7 flex-initial">
            <p class="text-lg font-bold pb-1">상품 정보</p>
            <div class="border-y border-gray-300">
              <dl class="flex py-5 min-h-[20px]">
                <div class="flex-1 border-r pr-3">
                  <dt class="text-xs  border-gray-300">모델번호</dt>
                  <dd class="text-sm font-semibold">DD1391-100</dd>
                </div>
                <div class="border-r flex-1 px-3 border-gray-300">
                  <dt class="text-xs ">출시일</dt>
                  <dd class="text-sm">21/01/14</dd>
                </div>
                <div class="border-r flex-1 px-3 border-gray-300">
                  <dt class="text-xs ">컬러</dt>
                  <dd class="text-sm ">WHITE/BLCK</dd>
                </div>
                <div class="border-r flex-1 px-3 border-gray-300">
                  <dt class="text-xs ">발매가</dt>
                  <dd class="text-sm">129,000원</dd>
                </div>
              </dl>
            </div>
          </div>
      
        <div class="flex-initial">
        <h3 class="mt-3 font-extrabold">배송 정보</h3>
        <div class="rounded-lg border-gray-300 flex items-center">
          <div class="flex-none">
            <img src=https://kream-phinf.pstatic.net/MjAyMTExMjFfMjU5/MDAxNjM3NDczNzU0MjA1.ON3pvFYAq_xSSaNWDgUWe1YfIx-C0fm91PDtcsUn3AEg.Q4EbbNWl_ua916jg0NQ0dWOS3h7W9eiiI2kK9YPWlgwg.PNG/a_120a84f036724d0d97a2343aafff4ecf.png class="w-10 h-10">
          </div>
          <div class="text-sm items-center border-b w-full relative p-[18px] flex-1">
            <p class="font-semibold">
              <span>빠른배송</span>
              <span class="text-sm font-medium">3000원</span>
            </p>
            <p class="text-sm text-gray-400">검수 후 배송 · 5-7일 내 도착 예정</p>
          </div>
         </div>
      </div>
      <div class="rounded-lg border-gray-300 flex items-center">
        <div class="flex-none">
          <img src=https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png class="w-10 h-10">
        </div>
        <div class="text-sm items-center border-b w-full relative p-[18px] flex-1">
          <p class="font-semibold">
            <span>일반배송</span>
            <span class="text-sm font-medium">3000원</span>
          </p>
          <p class="text-sm text-gray-400">검수 후 배송 · 5-7일 내 도착 예정</p>
        </div>
       </div>

       <!-- 광고 박스 -->
       <div class="overflow-hidden border-b w-full relative p-[18px] ">
       <div id="showcase" class="mx-[10px] my-[10px] px-[10px] grid grid-cols-1 gap-3">
        <a href="#">
            <img class="w-full object-contain h-full" src="/ReseltProject/img/shopad/detailad1.jpg"> 
        </a>
       </div>
      </div>

       <!-- 상단 전체 div 끝 -->
    
    <hr>

    <!-- middle of right pg -->
    <div class="mt-6 grid grid-cols-2 gap-10">
      <div class="text-xl font-semibold w-40">지역 별 시세</div>
      <!-- Dropdown Button -->
      <div class="text-right pb-2">
        <button id="dropdownInformationButton" data-dropdown-toggle="dropdownInformation" class="text-black bg-white hover:bg-white font-medium rounded-lg text-sm px-4 py-2.5 inline-flex items-center dark:bg-white dark:hover:bg-white dark:focus:ring-white text-center" type="button" >인기순↓↑ <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></button>
      
        <!-- Dropdown menu -->
        <div id="dropdownInformation" class="z-10 hidden bg-white divide-y divide-gray-100 rounded shadow w-44 dark:bg-white dark:divide-gray-600">
          <ul class="py-1 text-sm text-black dark:text-black" aria-labelledby="dropdownInformationButton">
            <li>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">인기순</a>
           </li>
            <li>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">프리미엄순</a>
            </li>
            <li>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">즉시 구매가순</a>
            </li>
              <li>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">즉시 판매가순</a>
            </li>
            <li>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">발매일순</a>
            </li>	
          </ul>
        </div>
      </div>
    </div>

    <!-- chart / canvas -->
    <div class="shadow-lg rounded-lg overflow-hidden ">
      <div class="py-1 px-2 bg-gray-50">
        <ul class="flex">
          <li class="flex-1 mr-2">
            <a class="text-center block border border-gray-400 rounded py-2 px-4 bg-gray-400 hover:bg-gray-500 text-white" href="#">korea</a>
          </li>
          <li class="flex-1 mr-2">
            <a class="text-center block border border-gray-400 rounded py-2 px-4 bg-gray-400 hover:bg-gray-500 text-white " href="#">us</a>
          </li>
          <li class="flex-1 mr-2">
            <a class="text-center block border border-gray-400 rounded py-2 px-4 bg-gray-400 hover:bg-gray-500 text-white" href="#">eu</a>
          </li>
        </ul>
      </div>

      <canvas class="p-10" id="chartLine"></canvas>
    </div>
    <div class="pt-7">
     <div class="py-3 mt-6 grid grid-cols-2 gap-10 border-b border-gray-200 flex-initial">
      <div class="text-xl font-semibold w-100">구매전 꼭 확인해주세요</div>
     </div>
    </div>
    <div class="py-3">
    <div class="py-1 grid grid-cols-1 border-b border-gray-200 flex-initial">
      
      <button id="category" type="button" class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown0" data-collapse-toggle="dropdown0">
            <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>배송 기간 안내</span>
            <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
      </button>
        <!-- click event : 배송 기간 안내 -->
        <div id="hidecategory" class="text-sm pb-2	 pl-5 font-sm text-left text-gray-400"></div>
          <ul id="dropdown0" class="hidden py-2 space-y-2">
            <div class="flex items-center pl-8">
            
				KREAM은 최대한 빠르게 모든 상품을 배송하기 위해 노력하고 있습니다. 배송 시간은 판매자가 검수를 위하여 상품을 검수센터로 보내는 속도에 따라 차이가 있습니다.
				[빠른배송 구매]
				
				- 판매자가 보관 신청한 상품 중 검수에 합격한 상품을 KREAM의 전용 창고에 보관합니다. 보관 상품에 한하여 바로 구매와 95점 구매가 가능합니다.
				- 오늘(오후 11:59까지) 결제하면 내일 바로 출고되어 빠른 배송이 가능합니다. (연휴 및 공휴일, 천재지변, 택배사 사유 등 예외적으로 출고일이 변경될 수 있습니다. 빠른배송 안내
				
				[일반 구매]
				
				- 거래가 체결된 시점부터 48시간(일요일•공휴일 제외) 내에 판매자가 상품을 발송해야 하며, 통상적으로 발송 후 1-2일 내에 KREAM 검수센터에 도착합니다.
				- 검수센터에 도착한 상품은 입고 완료 후 3영업일 이내에 검수를 진행합니다. 검수 합격시 배송을 준비합니다.
				* 상품 종류 및 상태에 따라 검수 소요 시간은 상이할 수 있으며, 구매의사 확인에 해당할 경우 구매자와 상담 진행으로 인해 지연이 발생할 수 있습니다.
				
				- 검수센터 출고는 매 영업일에 진행하고 있으며, 출고 마감시간은 오후 5시입니다. 출고 마감시간 이후 검수 완료건은 운송장번호는 입력되지만 다음 영업일에 출고됩니다.
            
            </div>
          </ul>
        </div>
      </div>
    <div class="py-3">
    <div class="grid grid-cols-1 border-b border-gray-200 flex-initial">
      
      <button id="category" type="button" class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown0" data-collapse-toggle="dropdown1">
            <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>검수 안내</span>
            <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
      </button>
        <!-- click event : 검수 안내 -->
        <div id="hidecategory" class="text-sm pb-2 pl-5 font-sm text-left text-gray-400"></div>
          <ul id="dropdown1" class="hidden py-2 space-y-2">
            <div class="flex items-center pl-8">
		               판매자의 상품이 검수센터에 도착하면 전담 검수팀이 철저한 분석과 검사로 정가품 확인을 진행합니다.
				- 검수센터에서는 정가품 여부를 확인하기 위하여, 지속적으로 데이터를 쌓고 분석하여 기록하고 있습니다.
				- 업계 전문가로 구성된 검수팀은 박스와 상품의 라벨에서 바느질, 접착, 소재 등 모든 것을 검수합니다.
				검수 결과는 불합격•검수 보류•합격의 세가지 상태로 결과가 변경됩니다. 검수기준 보기
				* 검수 합격: KREAM 검수택(Tag)이 부착되어 배송을 준비함
				
				* 검수 보류: 앱에서 사진으로 상품의 상태 확인 및 구매 여부를 선택. (24시간 이후 자동 검수 합격)
				
				* 검수 불합격: 즉시 거래가 취소되고 구매하신 금액을 환불 처리함.(환불 수단은 결제 수단과 동일)
            </div>
          </ul>
        </div>
      </div>
      <div class="py-3">
      <div class="grid grid-cols-1 border-b border-gray-200 flex-initial">
        
        <button id="category" type="button" class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown0" data-collapse-toggle="dropdown2">
              <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>구매 환불/취소/교환 안내</span>
              <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </button>
          <!-- 구매 환불 취소 교환 -->
          <div id="hidecategory" class="text-sm pb-2 pl-5 font-sm text-left text-gray-400"></div>
            <ul id="dropdown2" class="hidden py-2 space-y-2">
              <div class="flex items-center pl-8">
		           KREAM은 익명 거래를 기반으로 판매자가 판매하는 상품을 구매자가 실시간으로 구매하여 거래를 체결합니다.
					- 단순 변심이나 실수에 의한 취소/교환/반품이 불가능합니다. 상품을 원하지 않으시는 경우 언제든지 KREAM에서 재판매를 하실 수 있습니다.
					- 상품 수령 후, 이상이 있는 경우 KREAM 고객센터로 문의해주시기 바랍니다.

              </div>
            </ul>
          </div>
        </div>
    </div>
</div>

<hr class="border-y-gray-200">
<!-- style 페이지 -->

<div id="lower" class="h-56">
  스타일 
  include
</div>




<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$('#sellBtn').click(function(){
	location.href="./sellSize"
});

$('#buyBtn').click(function(){
	location.href="./buySize"
});
</script>

<!-- Flowbite Script-->
<script src="https://unpkg.com/flowbite@1.4.7/dist/flowbite.js"></script>
<script src="app.js"></script>

<!-- TailwindCSS configuration -->
<script src="https://cdn.tailwindcss.com"></script>
<script src="/ReseltProject/js/tailwind.config.js"></script>

<!-- Chart.js CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"> </script>

<!-- Chart line -->
<script>
  const labels = ["January", "February", "March", "April", "May", "June"];
  const data = {
    labels: labels,
    datasets: [
      {
        label: "Korea",
        borderColor: "hsl(26, 73%, 57%)",
        data: [0, 10, 5, 90, 20, 30, 45],
      },
      {
        label: "US",
        borderColor: "hsl(189, 50%, 78%)",
        data: [0, 20, 55, 60, 20, 11, 90],
       },
       {
        label: "EU",
        // backgroundColor: "hsl(0,0%,100%)",
        borderColor: "hsl(33, 73%, 69%)",
        data: [0, 30, 70, 50, 10, 20, 30],
       }, 
    ],
  };

  const configLineChart = {
    type: "line",
    data,
    options: {},
  };

  var chartLine = new Chart(
    document.getElementById("chartLine"),
    configLineChart
  );
</script>
