@extends('layouts.app')

@section('title')
SOUNTOR
@endsection

@section('content')
<!-- Header -->
<header class="text-center">
    <h1>
        <br />
        As Easy One Click
    </h1>
    <p class="mt-3">
        You Will See Beautiful
        <br />
        Moment you never see before
    </p>
    <a href="#popular" class="btn btn-get-started px-4 mt-4">
        Get Started
    </a>
</header>

<!-- MAIN -->
<main>
    <div class="container">
        <section class="section-stats row justify-content-center" id="stats">
            <div class="col-3 col-md-2 stats-detail">
                <h2>20K</h2>
                 <p>Members</p>
            </div>
            <div class="col-3 col-md-2 stats-detail">
                <h2>12</h2>
                <p>Countries</p>
            </div>
            <div class="col-3 col-md-2 stats-detail">
                <h2>3K</h2>
                <p>Hotel</p>
            </div>
            <div class="col-3 col-md-2 stats-detail">
                <h2>70</h2>
                <p>parthers</p>
            </div>
        </section>
    </div>

    <!-- Section populer -->
    <section class="section-popular" id="popular">
        <div class="container">
            <div class="row">
                <div class="col text-center section-popular-heading">
                    <h2>Wisata Popular</h2>
                    <p>
                        Anda akan melihat indah
                        <br />
                        Saat anda tidak pernah melihat sebelumnya
                    </p>
                </div>
            </div>
        </div>
    </section>
    <section class="section-popular-content" id="populerContent">
        <div class="container">
            <div class="section-popular-travel row justify-content-center">
               @foreach ($items as $item)
               <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="card-travel text-center d-flex flex-column"
                        style="background-image: url('{{ $item->galleries->count() ? Storage::url($item->galleries->first()->image) : '' }}');">
                        <div class="travel-country">{{ $item->location }}</div>
                        <div class="travel-location">{{ $item->title }}</div>
                        <div class="travel-button mt-auto">
                            <a href="{{ route('detail', $item->slug) }}" class="btn btn-travel-details px-4">
                                View Details
                            </a>
                        </div>
                    </div>
                </div>
               @endforeach

            </div>
        </div>
    </section>

    <section class="section-networks" id="network">
        <div class="container">
            <div class="row">
                <div class="cold-md-4">
                    <h2>Our Network</h2>
                    <p>
                        perusahaan mempercayai kami
                        <br />
                        lebih dari sekadar perjalanan
                    </p>
                </div>
                <div class="col-md-9 text-center">
                <img src="{{ url('frontend/images/logo_parther/Group 9@2x.png') }}" alt="Logo parther" class="img-parther">
                </div>
            </div>
        </div>
    </section>

    <section class="section-testimonial-heading" id="testimonialHeading">
        <div class="container">
            <div class="row">
                <div class=" col text-center">
                    <h2>mereka mencintai kita</h2>
                    <p>
                        momen memberi mereka
                        <br />
                        pengalaman terbaik
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="section section-testimonial-content" id="testimonialHeading">
        <div class="container">
            <div class="section-populer-travel row justify-content-center">
                <div class="col-sm-6 col-md-6 col-lg-4">
                    <div class="card card-testimonial text-center">
                        <div class="testiominal-content">
                            <img src="{{ url('frontend/images/testimonial/nora/user_pic.png') }}" alt="User"
                                class="bt-4 rounded-circle" /><br><br>
                            <h3 class="mb-4">Nora Patehi</h3>
                            <p class="testimonial">
                                "Kita bepergian, sebagian dari
                                kita selamanya, untuk mencari
                                tempat lain, kehidupan lain,
                                jiwa lain"
                            </p>
                        </div>
                        <hr>
                        <p class="trip-to mt-2">
                            Jalan Ke Bromo, Indonesia
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4">
                    <div class="card card-testimonial text-center">
                        <div class="testiominal-content">
                            <img src="{{ url('frontend/images/testimonial/sayiidaa/user_pic.png') }}" alt="User"
                                class="bt-4 rounded-circle" /><br><br>
                            <h3 class="mb-4">SAYYIDASSADAA</h3>
                            <p class="testimonial">
                                Hidup adalah Petualang
                                yang berani atau tidak
                                sama sekali"
                            </p>
                        </div>
                        <hr>
                        <p class="trip-to mt-2">
                            Jalan Ke Lombok, Indonesia
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4">
                    <div class="card card-testimonial text-center">
                        <div class="testiominal-content">
                            <img src="{{ url('frontend/images/testimonial/nona/user_pic.png') }}" alt="User"
                                class="bt-4 rounded-circle" /><br><br>
                            <h3 class="mb-4">NONA HT</h3>
                            <p class="testimonial">
                                "Kita bepergian bukan
                                untuk melarikan diri dari
                                kehidupan"
                            </p>
                        </div>
                        <hr>
                        <p class="trip-to mt-2">
                            Jalan Ke Bromo, Indonesia
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <a href="#" class="btn btn-need-help px-4 mt-4 mx-1">
                        Saya butuh bantuan
                    </a>
                    <a href="{{ route('register') }}" class="btn btn-get-started px-4 mt-4 mx-1">
                        Get Started
                    </a>
                </div>
            </div>
        </div>
    </section>
</main>
@endsection
