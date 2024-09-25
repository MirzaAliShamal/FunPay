<header id="header">
          <div class="container">
            <div id="global-origin"></div>
            <nav class="navbar navbar-default">
              <div class="hide-navbar"></div>
              <div class="container-fluid">
                <div class="navbar-header">
                  <button
                    type="button"
                    class="collapsed navbar-toggle navbar-toggle-guest"
                    data-toggle="collapse"
                    data-target="#navbar"
                    aria-expanded="false"
                  >
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a href="{{route('homepage')}}" class="navbar-brand">
                    <img src="https://funpay.com/img/layout/logo-funpay.svg" alt="FunPay" class="logo-color" />
                </a>
                  <!-- <form
                    action=""
                    method="post"
                    class="navbar-form navbar-left dropdown promo-games-filter"
                  >
                    <div class="form-group">
                      <input
                        type="text"
                        name="query"
                        class="form-control dropdown-toggle"
                        data-toggle="dropdown"
                        role="searchbox"
                        placeholder="Search by 537 games"
                        autocomplete="off"
                      />
                      <div
                        class="dropdown-menu dropdown-autocomplete hidden"
                      ></div>
                    </div>
                    <button type="submit" class="btn btn-link">
                      <i class="fa fa-search"></i>
                    </button>
                  </form> -->
                </div>
                <div class="nav-container">
                  <div
                    class="collapse navbar-collapse no-transition"
                    id="navbar"
                  >
                    <!-- <ul class="nav navbar-nav">
                      <li class="dropdown">
                        <a
                          href="index.html"
                          class="menu-item-info dropdown-toggle"
                          data-toggle="dropdown"
                          role="button"
                          aria-haspopup="true"
                          aria-expanded="false"
                          >Support <span class="caret"></span
                        ></a>
                        <ul class="dropdown-menu">
                          <li>
                            <a
                              href="trade/info.html"
                              class="menu-item-trade_info"
                              >Rules</a
                            >
                          </li>
                          <li>
                            <a
                              href="https://funpay.freshdesk.com/en/support/home"
                              class="menu-item-support"
                              target="_blank"
                              >Support Center</a
                            >
                          </li>
                          <li>
                            <a
                              href="https://funpay.freshdesk.com/en/support/tickets/new"
                              class="menu-item-request"
                              target="_blank"
                              >Submit a Request</a
                            >
                          </li>
                        </ul>
                      </li>
                      
                    </ul> -->
                    <ul class="nav navbar-nav navbar-right">
                      @if(!session('user_id'))
                      <li>
                        <a href="{{route('user.seller.login')}}" class="menu-item-login"
                          >Log In</a
                        >
                      </li>
                      <li><a href="{{route('buyer.register')}}" class="menu-item-register">Sign Up</a></li>
                      <li><a href="{{route('seller.register')}}" class="menu-item-register">Sign Up as Seller</a></li>
                      @else
                      <li class="active"><a href="{{route('message')}}" class="menu-item-chat">{{ucfirst(session('user_type'))}}</a></li>
                      <li class="active"><a href="{{route('message')}}" class="menu-item-chat">Messages <span class="badge badge-chat hidden">0</span></a></li>
                      <li><a href="{{route('user.seller.logout')}}" method="POST" class="menu-item-register">Logout</a></li>
                      @endif
                      <!-- <li class="dropdown">
                        <a
                          href="javascript:void(0)"
                          class="dropdown-toggle menu-item-langs"
                          data-toggle="dropdown"
                        >
                          English <i class="menu-icon menu-icon-lang-en"></i>
                          <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                          <li>
                            <a
                              href="indexc322.html?setlocale=ru"
                              class="menu-item-lang"
                            >
                              По-русски
                              <i class="menu-icon menu-icon-lang-ru"></i>
                            </a>
                          </li>
                          <li>
                            <a
                              href="index0cfd.html?setlocale=uk"
                              class="menu-item-lang"
                            >
                              Українською
                              <i class="menu-icon menu-icon-lang-uk"></i>
                            </a>
                          </li>
                        </ul>
                      </li> -->
                      <!-- <li class="dropdown">
                        <a
                          href="javascript:void(0)"
                          class="dropdown-toggle menu-item-currencies"
                          data-toggle="dropdown"
                        >
                          USD <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                          <li>
                            <a
                              href="javascript:void(0)"
                              data-cy="eur"
                              class="user-cy-switcher menu-item-currency"
                            >
                              EUR
                            </a>
                          </li>
                        </ul>
                      </li> -->
                    </ul>
                  </div>
                </div>
              </div>
            </nav>
          </div>
        </header>
