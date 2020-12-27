using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StoreFront.UI.Exceptions
{
    public class DBOfflieException : Exception
    {
        public DBOfflieException() { }

        public DBOfflieException(string message) : base(message) { }

        public DBOfflieException(string message, Exception inner) : base(message, inner) { 
}
    }
}