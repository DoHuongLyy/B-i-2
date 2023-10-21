using System;

namespace QLTS
{
    class QLTS
    {
        public int MaTS;
        public string Ten;
        public double diemLT;
        public double diemTH;
    }
    class Node
    {
        public QLTS info;
        public Node link;
    }
    class Program
    {
        static Node pHead, pTail;
        #region DSTS
        static QLTS Nhap1TS()
        {
            QLTS TS = new QLTS();
            do
            {
                Console.Write("Nhập mã thí sinh: ");
                TS.MaTS = int.Parse(Console.ReadLine());
            } while (TS.MaTS <= 0);
            do
            {
                Console.Write("Nhập tên thí sinh: ");
                TS.Ten = Console.ReadLine();
            } while (TS.Ten.Length <= 0);
            do
            {
                Console.Write("Nhập điểm lý thuyết: ");
                TS.diemLT = double.Parse(Console.ReadLine());
                if (TS.diemLT < 0 && TS.diemLT > 10)
                    Console.WriteLine("Mời bạn nhập lại đk >= 0 và <= 10 ");
            } while (TS.diemLT < 0 && TS.diemLT > 10);
            do
            {
                Console.Write("Nhập điểm thực hành: ");
                TS.diemTH = double.Parse(Console.ReadLine());
                if (TS.diemTH < 0 && TS.diemTH > 10)
                    Console.WriteLine("Mời bạn nhập lại đk >= 0 và <= 10 ");
            } while (TS.diemTH < 0 && TS.diemTH > 10);
            return TS;
        }
        #endregion

        #region Node
        static void KhoiTao()
        {
            pHead = pTail = null;
        }
        static Node KhoiTaoNode()
        {
            Node newN = new Node();
            newN.info = Nhap1TS();
            newN.link = null;
            return newN;
        }
        static void NhappHead(Node newN)
        {
            if (pHead == null)
            {
                pHead = pTail = newN;
            }
            else
            {
                newN.link = pHead;
                pHead = newN;
            }
        }
        static void TruyenDuLieuVao(int SLTS)
        {
            for (int i = 0; i < SLTS; i++)
            {
                Console.WriteLine("Nhập thông tin cho thí sinh thứ {0}", i + 1);
                NhappHead(KhoiTaoNode());
            }
        }
        #endregion

        #region Điểm TB
        static double DiemTB(double LT, double TH)
        {
            return (LT + TH) / 2;
        }
        #endregion
        public void ThemTS()
        {
            QLTS thisinh = new QLTS();
            Node tg = new Node();
            Console.Write("\nMa Thi sinh : ");
            thisinh.MaTS = int.Parse(Console.ReadLine());
            Console.Write("Ten Thi sinh : ");
            thisinh.Ten = Console.ReadLine();
            do
            {
                Console.Write("Diem li thuyet : ");
                thisinh.diemLT = double.Parse(Console.ReadLine());
                Console.Write("Diem thuc hanh :");
                thisinh.diemTH = double.Parse(Console.ReadLine());
            } while (thisinh.diemTH < 0 || thisinh.diemTH > 10 || thisinh.diemLT < 0 || thisinh.diemLT > 10);
            tg.info = thisinh;
            tg.link = null;
            if (pHead == null) { pHead = pTail = tg; }
            else { pTail.link = tg; pTail = tg; }
        }

        public void SuaTS()
        {
            Node p = pHead;
            bool check = false;
            Console.Write("Nhap ma Thi Sinh can sua : ");
            string x = Console.ReadLine();
            x = x.ToLower().Trim();
            while (p != null)
            {
                if (p.info.MaTS/*.ToLower().Trim().CompareTo(x)*/ == 0)
                {
                    Console.Write("Nhap Diem LT Moi : ");
                    p.info.diemLT = float.Parse(Console.ReadLine());
                    Console.Write("Nhap Diem TH Moi : ");
                    p.info.diemLT = float.Parse(Console.ReadLine());
                }
                p = p.link;
            }
            if (check == false)
                Console.WriteLine("Khong tim Thi sinh vua nhap");
            else
                Console.WriteLine("Da SUa Thu sinh vua nhap");
        }


        static void TimTS(QLTS L, string X)
        {
            QLTS p = L;
            while (p != null)
            {

                if (p.MaTS = X)
                {
                    Console.WriteLine("MaTS : {0}", p.MaTS);
                    Console.WriteLine("HoTen : {0}", p.Ten);
                    Console.WriteLine("DiemLT : {0}", "dlt");
                    Console.WriteLine("DiemTH : {0}", "dth");
                }
                break;
            }
        }
        static void Dem(QLTS L)
        {
            QLTS p = L;
            int dem = 0;
            while (p != null)
            {
                if (p.diemLT < 5 || p.diemTH < 5)
                {
                    dem++;
                    Console.WriteLine("Co {0} thi sinh truot la: ", dem);
                    Console.WriteLine("MaTS : {0}", p.MaTS);
                    Console.WriteLine("HoTen : {0}", p.Ten);
                    Console.WriteLine("DiemLT : {0}", p.diemLT);
                    Console.WriteLine("DiemTH : {0}", p.diemTH);
                    Console.WriteLine("Diem TB: {0}", diem(ref p.diemLT, ref p.diemTH));
                }
                break;
            }
        }
    }
}