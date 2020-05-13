@extends('layouts.success')
@section('title', 'Checkout Success')

@section('content')
    <!-- MAIN -->
    <main>
        <div class="section-success d-flex align-items-center">
            <div class="col text-center">
                <img src="{{ url('frontend/images/avatar/ic_mail.png') }}" alt="">
                <h1>Success</h1>
                <p>
                    kami telah mengirimi Anda email
                    <br />
                    untuk instruksi perjalanan, harap baca juga
                </p>
                <a href="{{ url('/') }}" class="btn btn-home-page mt-3 px-3">
                    Home Page
                </a>
            </div>
        </div>
    </main>
@endsection









