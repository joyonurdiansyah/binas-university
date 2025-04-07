    @extends('layouts.app')
    @extends('content')
    <!-- MAIN SECTION -->
    <article class="container mt-28">
        <h1 class="text-xl font-semibold text-xneutral-400 font-montserrat sm:text-2xl">
            Pendaftaran
        </h1>
        <p class="text-sm font-semibold text-xneutral-200 font-montserrat sm:text-base">
            Bergabung bersama kami untuk Masa Depan yang gemilang
        </p>

        @if (session('success'))
            <div id="alert" style="background-color: #3b82f6;"
                class="flex items-center px-4 text-sm font-bold text-white">
                <svg class="w-4 h-4 mr-2 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                    <path
                        d="M12.432 0c1.34 0 2.01.912 2.01 1.957 0 1.305-1.164 2.512-2.679 2.512-1.269 0-2.009-.75-1.974-1.947C9.729 1.344 10.966 0 12.432 0zM10.8 6.8h3.2v9.6H10.8V6.8z" />
                </svg>
                <p>{{ session('success') }}</p>
            </div>

            <script>
                // Mengatur waktu tunggu untuk menghilangkan alert
                setTimeout(function() {
                    var alert = document.getElementById('alert');
                    if (alert) {
                        alert.style.opacity = '0'; 
                        alert.style.transition = 'opacity 0.5s ease'; 
                        setTimeout(function() {
                            alert.style.display = 'none';
                        }, 500);
                    }
                }, 3000); 
            </script>
        @endif


        <form action="{{route('pendaftaran.store')}}" method="post" enctype="multipart/form-data" class="space-y-6 mt-[70px]">
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-12 md:gap-[124px] font-montserrat">
                <div class="space-y-10">
                    <div class="flex flex-col gap-3">
                        <label for="nama-lengkap" class="text-sm font-semibold text-xneutral-400">Nama Lengkap
                            <span class="text-secondary-error">*</span>
                        </label>
                        <input type="text" id="nama-lengkap" name="namalengkap"
                            placeholder="Masukan Nama Lengkap Anda" required
                            class="border placeholder:font-semibold placeholder:text-xneutral-100 border-xneutral-100 py-[18px] px-6 rounded-lg" />
                    </div>

                    <div class="flex flex-col gap-3">
                        <label for="email" class="text-sm font-semibold text-xneutral-400">Email
                            <span class="text-secondary-error">*</span>
                        </label>
                        <input type="email" id="email" name="email" placeholder="Masukan Email Anda" required
                            class="border placeholder:font-semibold placeholder:text-xneutral-100 border-xneutral-100 py-[18px] px-6 rounded-lg" />
                    </div>

                    <div class="flex flex-col gap-3">
                        <label for="jalur" class="text-sm font-semibold text-xneutral-400">Jalur
                            <span class="text-secondary-error">*</span>
                        </label>
                        <div class="flex items-center">
                            <select id="jalur" name="jalur" required
                                class="border w-full peer placeholder:font-semibold appearance-none placeholder:text-xneutral-100 border-xneutral-100 py-[18px] px-6 rounded-lg">
                                <option class="font-montserrat text-xneutral-300" value="KIP-K">
                                    KIP-K
                                </option>
                                <option class="font-montserrat text-xneutral-300" value="Reguler">
                                    Reguler
                                </option>
                            </select>
                            <i
                                class="-ml-8 transition-all pointer-events-none bi bi-chevron-down peer-focus:rotate-180"></i>
                        </div>
                    </div>

                    <div class="flex flex-col gap-3">
                        <label for="foto" class="text-sm font-semibold text-xneutral-400">Foto
                            <span class="text-secondary-error">*</span>
                        </label>
                        <div class="flex items-center w-full gap-3">
                            <input type="file" id="foto" name="image" accept="image/*" required
                                placeholder="Masukkan foto Anda"
                                class="border w-full file:hidden placeholder:font-semibold placeholder:text-xneutral-100 border-xneutral-100 py-[18px] px-6 rounded-lg" />
                            <button type="button"
                                class="border text-nowrap bg-primary-200 text-xneutral-0 font-semibold py-[18px] px-6 rounded-lg">
                                Upload Foto
                            </button>
                        </div>
                    </div>
                </div>

                <div class="space-y-10">
                    <div class="flex flex-col gap-3">
                        <label for="nama-panggilan" class="text-sm font-semibold text-xneutral-400">Nama Panggilan
                            <span class="text-secondary-error">*</span>
                        </label>
                        <input type="text" id="nama-panggilan" name="namapanggilan"
                            placeholder="Masukan Nama Panggilan Anda" required
                            class="border placeholder:font-semibold placeholder:text-xneutral-100 border-xneutral-100 py-[18px] px-6 rounded-lg" />
                    </div>

                    <div class="flex flex-col gap-3">
                        <label for="nomor-hp" class="text-sm font-semibold text-xneutral-400">Nomor HP
                            <span class="text-secondary-error">*</span>
                        </label>
                        <input type="tel" id="nomor-hp" name="nomor_hp" placeholder="Masukan Nomor HP Anda"
                            required
                            class="border placeholder:font-semibold placeholder:text-xneutral-100 border-xneutral-100 py-[18px] px-6 rounded-lg" />
                    </div>

                    <div class="flex flex-col gap-3">
                        <label for="program-studi-1" class="text-sm font-semibold text-xneutral-400">Program Studi 1
                            <span class="text-secondary-error">*</span>
                        </label>
                        <div class="flex items-center">
                            <select id="program-studi-1" name="programstudi_1" required
                                class="border peer appearance-none w-full placeholder:font-semibold placeholder:text-xneutral-100 border-xneutral-100 py-[18px] px-6 rounded-lg">
                                <option value="">Pilih Program Studi 1</option>
                            </select>
                            <i
                                class="-ml-8 transition-all pointer-events-none bi bi-chevron-down peer-focus:rotate-180"></i>
                        </div>
                    </div>

                    <div class="flex flex-col gap-3">
                        <label for="program-studi-2" class="text-sm font-semibold text-xneutral-400">Program Studi 2
                            <span class="text-secondary-error">*</span>
                        </label>
                        <div class="flex items-center">
                            <select id="program-studi-2" name="programstudi_2" required
                                class="border peer appearance-none w-full placeholder:font-semibold placeholder:text-xneutral-100 border-xneutral-100 py-[18px] px-6 rounded-lg">
                                <option value="">Pilih Program Studi 2</option>
                            </select>
                            <i
                                class="-ml-8 transition-all pointer-events-none bi bi-chevron-down peer-focus:rotate-180"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 sm:gap-12 md:gap-[124px] !mt-[60px]">
                <a href="/"
                    class="px-6 py-[14px] w-full text-center font-montserrat text-neutral-0 bg-white border text-lg font-semibold border-primary-200 text-primary-200 rounded-full">
                    Kembali Ke Homepage
                </a>
                <button type="submit"
                    class="px-6 py-[14px] text-center w-full font-montserrat text-neutral-0 bg-primary-200 border text-lg font-semibold border-primary-200 text-xneutral-0 rounded-full">
                    Daftar
                </button>
            </div>
        </form>
    </article>

@endsection
