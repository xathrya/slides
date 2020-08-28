/* 
	Source code diberikan untuk memperlihatkan algoritm.
	Segala aktivitas perubahan (patching) harus dilakukan di aplikasi, bukan 
	di source code ini.

	Ini adalah challenge sederhana.

Compile: 
	$ mcs CrackMe.cs

Stages:
	[1] hardcoded password, user harus mencari password yang tepat.
	[2] bypass jump, user harus mencapai stage 3 alih-alih abort execution
	[3] ubah fungsi yang dipanggil sehingga memanggil fungsi yang tepat.
	[4] ciptakan fungsi baru dan panggil di Main()
	[5] bypass checking.

*/

using System;

public class CrackMe
{
	int stage;
	
	static public void Main()
	{
        int  stage = 1;		// stage: 1, 2, 3, 4, 5
        bool loop = true;

		Console.WriteLine("Personalize Crackme for Satria");
		CrackMe crackme = new CrackMe(stage);

        while (loop)
        {
            switch (stage)
            {
                case 1:
					// hardcoded password
                    loop = crackme.stage1();
                    break;
                case 2:
					// 
                    loop = crackme.stage2();
                    break;
                case 3:
                    loop = crackme.stage3();
                    break;
            }

			if (loop) stage ++;
			if (stage > 8)
			{
				Console.WriteLine ("Congratulations! All Stage Cleared!");
				loop = false;
			}
        }
	}

	public CrackMe(int stage)
	{	
		this.stage = stage;
	}
	
	// Recover hardcoded string
	private bool stage1 ()
	{
		bool result = false;
		int  maxtry = 5, ntry = 0;
		string magic = "Reversing.ID Workshop hardcod3d string";

		Console.WriteLine ("Aku menyimpan password, kamu takkan bisa mendapatkannya!");
		
		for (ntry = 0; ntry < maxtry; ntry++)
		{
			Console.Write ("Password: ");
			if (magic == Console.ReadLine())
			{
				Console.WriteLine("=== Stage1 cleared! ===");

				result = true;
				break;
			}
			Console.WriteLine("Salah!!");
		}
		if (!result)
			Console.WriteLine("=== Kesempatan menjawab telah habis ===");

		return result;
	}
	
	// ubah jump agar selalu menuju ke case "sukses"
	private bool stage2 ()
	{
		if (stage < 10)
		{
			Console.WriteLine ("Stage 2: Aborted !!!");
			return false;
		}
		else 
		{
			Console.WriteLine ("Kamu berhasil meloncat-loncat");
			Console.WriteLine ("Stage 2: Cleared!");
			return true;
		}
	}
	
	// ubah main agar mengarah ke fungsi stage3_target(), bukan stage3()
	private bool stage3 ()
	{
		Console.WriteLine ("Stage 3: Bukan fungsi yang tepat !!!");
		return false;
	}

	private bool stage3_target ()
	{
		Console.WriteLine ("Stage 3: Kamu berhasil memanggil fungsi yang tepat!");
		return true;
	}

	// ciptakan fungsi baru stage4() dan panggil di loop
	// fungsi ini harus mengubah variabel stage bernilai lebih dari 8
}