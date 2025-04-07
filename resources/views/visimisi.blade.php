    @extends('layouts.app')
    @extends('content')
    <!-- MAIN SECTION -->
    <article class="container mt-28">
      <h1
        class="text-xl font-semibold text-xneutral-400 font-montserrat sm:text-2xl"
      >
        Sejarah B-University
      </h1>
      <p
        class="text-sm font-semibold text-xneutral-200 sm:text-base font-montserrat"
      >
        Bersama mengembangkan pendidikan Negeri
      </p>

      <div class="grid grid-cols-1 gap-6 mt-8 sm:grid-cols-2">
        <div class="space-y-3">
          <h3
            class="text-base font-semibold text-center font-montserrat sm:text-lg text-primary-200"
          >
            VISI
          </h3>
          <p
            class="text-lg font-semibold text-center uppercase sm:text-xl font-montserrat text-xneutral-200"
          >
            "Menjadi Universitas Yang Inovatif,<br />
            Profesional dan Islami”
          </p>
        </div>
        <div class="space-y-3">
          <h2
            class="text-base font-semibold text-center font-montserrat sm:text-lg text-primary-200"
          >
            MISI
          </h2>
          <ol
            class="pl-4 text-sm font-semibold text-justify list-decimal font-montserrat text-xneutral-200 sm:text-base"
          >
            <li>
              Menyelenggarakan pendidikan yang berkualitas dan berlandaskan
              nilai keislaman.
            </li>
            <li>
              Melaksanakan penelitian yang inovatif bagi kemajuan ilmu
              pengetahuan dan teknologi, industri dan kesehatan serta
              kemaslahatan umat.
            </li>
            <li>
              Melaksanakan pengabdian kepada masyarakat yang berbasis industri
              kesehatan.
            </li>
            <li>
              Memberikan dasar moral-religius terhadap pengembangan ilmu
              pengetahuan, teknologi dan seni, serta pembinaan iman dan taqwa
              dalam rangka da’wah islamiyah dan amar ma’ruf nahi mungkar.
            </li>
            <li>
              Membangun kepercayaan dan mengembangkan kerjasama dengan berbagai
              pihak untuk meningkatkan kualitas pelaksanaan catur dharma
              perguruan tinggi.
            </li>
          </ol>
        </div>
      </div>

      <div
        class="grid grid-cols-1 mt-10 overflow-hidden border sm:grid-cols-3 border-xneutral-100 rounded-2xl"
      >
        <div class="p-[30px]">
          <h2
            class="text-base font-semibold sm:text-lg text-xneutral-400 font-montserrat"
          >
            Inovatif
          </h2>
          <p
            class="mt-4 text-xs font-medium font-montserrat text-xneutral-200 sm:text-sm"
          >
            Makna ”Inovatif” dalam visi universitas adalah Lulusan mempunyai
            kemampuan dalam berfikir untuk menciptakan pengetahuan dan teknologi
            baru yang tepat guna di bidang industri dan kesehatan untuk
            kemaslahatan ummat.
          </p>
        </div>
        <div>
          <img src="/assets/images/visi-2.png" alt="Inovatif" />
        </div>
        <div class="p-[30px]">
          <h2
            class="text-base font-semibold sm:text-lg text-xneutral-400 font-montserrat"
          >
            Profesional
          </h2>
          <p
            class="mt-4 text-xs font-medium font-montserrat text-xneutral-200 sm:text-sm"
          >
            Makna ”Profesional” dalam visi universitas adalah lulusan mempunyai
            kompetensi sesuai dengan profesinya masing-masing baik dalam aspek
            pengetahuan, sikap maupun keterampilan serta berpegang teguh pada
            nilai moral yang mengarahkan serta mendasari perbuatan.
          </p>
        </div>
        <div>
          <img src="/assets/images/visi-1.png" alt="Profesional" />
        </div>
        <div class="p-[30px]">
          <h2
            class="text-base font-semibold sm:text-lg text-xneutral-400 font-montserrat"
          >
            Islami
          </h2>
          <p
            class="mt-4 text-xs font-medium font-montserrat text-xneutral-200 sm:text-sm"
          >
            Makna ”Islami” dalam visi universitas adalah lulusan mempunyai
            integritas menjunjung tinggi nilai-nilai keislaman (Islamic values)
            dalam setiap perilaku dan peduli terhadap kesejahteraan masyarakat
            serta perubahan dalam setiap aspek kehidupan di lingkungannya.
          </p>
        </div>
        <div>
          <img src="/assets/images/visi-3.png" alt="Islami" />
        </div>
      </div>
    </article>

    @endsection