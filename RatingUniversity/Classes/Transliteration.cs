using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RatingUniversity.Classes
{
	public class Transliteration
	{
        public static string ToLatin(string source)
		{
			Dictionary<string, string> words = new Dictionary<string, string>();
            string _source = source;

            if ((source == string.Empty) || (source == null)) return _source;
            
            if (_source[0] == 'Е') _source = "Ye" + _source.Remove(0, 1);
			if (_source[0] == 'е') _source = "ye" + _source.Remove(0, 1);



			words.Add("а", "a");
			words.Add("б", "b");
			words.Add("в", "v");
			words.Add("г", "g");
			words.Add("д", "d");
			words.Add("е", "e");
			words.Add("ё", "yo");
			words.Add("ж", "j");
			words.Add("з", "z");
			words.Add("и", "i");
			words.Add("й", "y");
			words.Add("к", "k");
			words.Add("л", "l");
			words.Add("м", "m");
			words.Add("н", "n");
			words.Add("о", "o");
			words.Add("п", "p");
			words.Add("р", "r");
			words.Add("с", "s");
			words.Add("т", "t");
			words.Add("у", "u");
			words.Add("ф", "f");
			words.Add("х", "x");
			words.Add("ў", "o`");
			words.Add("қ", "q");
			words.Add("ғ", "g`");
			words.Add("ҳ", "h");
			words.Add("ц", "ts");
			words.Add("ч", "ch");
			words.Add("ш", "sh");
			words.Add("щ", "sh");
			words.Add("ъ", "'");
			words.Add("ы", "i");
			words.Add("ь", "");
			words.Add("э", "e");
			words.Add("ю", "yu");
			words.Add("я", "ya");
			words.Add("А", "A");
			words.Add("Б", "B");
			words.Add("В", "V");
			words.Add("Г", "G");
			words.Add("Д", "D");
			words.Add("Е", "E");
			words.Add("Ё", "Yo");
			words.Add("Ж", "J");
			words.Add("З", "Z");
			words.Add("И", "I");
			words.Add("Й", "Y");
			words.Add("К", "K");
			words.Add("Л", "L");
			words.Add("М", "M");
			words.Add("Н", "N");
			words.Add("О", "O");
			words.Add("П", "P");
			words.Add("Р", "R");
			words.Add("С", "S");
			words.Add("Т", "T");
			words.Add("У", "U");
			words.Add("Ф", "F");
			words.Add("Х", "X");
			words.Add("Ц", "Ts");
			words.Add("Ч", "Ch");
			words.Add("Ш", "Sh");
			words.Add("Щ", "Sh");
			words.Add("Ъ", "'");
			words.Add("Ы", "I");
			words.Add("Ь", "");
			words.Add("Э", "E");
			words.Add("Ю", "Yu");
			words.Add("Я", "Ya");
			words.Add("Ў", "O`");
			words.Add("Қ", "Q");
			words.Add("Ғ", "G`");
			words.Add("Ҳ", "H");

			_source = _source.Replace(" е", " ye");
			_source = _source.Replace(" Е", " Ye");

			foreach (KeyValuePair<string, string> pair in words)
			{
				_source = _source.Replace(pair.Key, pair.Value);
			}

			return _source;
		}

		public static string ToKiril(string source)
		{
			Dictionary<string, string> words = new Dictionary<string, string>();

			string _source = source;
            if ((source == string.Empty) || (source == null)) return _source;
            _source = _source.Replace("O'", "Ў");
			_source = _source.Replace("G'", "Ғ");
			_source = _source.Replace("O`", "Ў");
			_source = _source.Replace("G`", "Ғ");
			_source = _source.Replace("Ya", "Я");
			_source = _source.Replace("Yo", "Ё");
			_source = _source.Replace("Yu", "Ю");
			_source = _source.Replace("Ye", "Е");
			_source = _source.Replace(" E", " Э");
			_source = _source.Replace("Sh", "Ш");
			_source = _source.Replace("Ch", "Ч");
			_source = _source.Replace("Ts", "Ц");

			_source = _source.Replace("o`", "ў");
			_source = _source.Replace("g`", "ғ");
			_source = _source.Replace("o'", "ў");
			_source = _source.Replace("g'", "ғ");
			_source = _source.Replace("ya", "я");
			_source = _source.Replace("yo", "ё");
			_source = _source.Replace("yu", "ю");
			_source = _source.Replace("ye", "е");
			_source = _source.Replace(" e", " э");
			_source = _source.Replace("sh", "ш");
			_source = _source.Replace("ch", "ч");
			_source = _source.Replace("ts", "ц");
            _source = _source.Replace("`", "ъ");

			if (_source[0] == 'E') _source = "Э" + _source.Remove(0, 1);
			if (_source[0] == 'e') _source = "э" + _source.Remove(0, 1);

			words.Add("a", "а");
			words.Add("b", "б");
			words.Add("v", "в");
			words.Add("g", "г");
			words.Add("d", "д");
			words.Add("e", "е");
			words.Add("j", "ж");
			words.Add("z", "з");
			words.Add("i", "и");
			words.Add("y", "й");
			words.Add("k", "к");
			words.Add("l", "л");
			words.Add("m", "м");
			words.Add("n", "н");
			words.Add("o", "о");
			words.Add("p", "п");
			words.Add("r", "р");
			words.Add("s", "с");
			words.Add("t", "т");
			words.Add("u", "у");
			words.Add("f", "ф");
			words.Add("x", "х");
			words.Add("q", "қ");
			words.Add("h", "ҳ");
			words.Add("'", "ъ");

			words.Add("A", "А");
			words.Add("B", "Б");
			words.Add("V", "В");
			words.Add("G", "Г");
			words.Add("D", "Д");
			words.Add("E", "Е");
			words.Add("J", "Ж");
			words.Add("Z", "З");
			words.Add("I", "И");
			words.Add("Y", "Й");
			words.Add("K", "К");
			words.Add("L", "Л");
			words.Add("M", "М");
			words.Add("N", "Н");
			words.Add("O", "О");
			words.Add("P", "П");
			words.Add("R", "Р");
			words.Add("S", "С");
			words.Add("T", "Т");
			words.Add("U", "У");
			words.Add("F", "Ф");
			words.Add("X", "Х");
			words.Add("Q", "Қ");
			words.Add("H", "Ҳ");

			foreach (KeyValuePair<string, string> pair in words)
			{
				_source = _source.Replace(pair.Key, pair.Value);
			}

			return _source;
		}

		public static string ASK_kod(string source)
		{
			string ss = "";

			for (int i = 0; i < source.Length; i++)
			{
				ss += " " + ((int)source[i]).ToString();
			}
			return ss;
		}

	}
}