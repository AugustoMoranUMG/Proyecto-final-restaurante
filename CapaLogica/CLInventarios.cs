using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class CLInventarios
    {
        //fechas y dias

        public  int MtdDiasVigencia(DateTime fechaEntrada, DateTime fechaVencimiento)
        {
            int diasVigencia = (fechaVencimiento - fechaEntrada).Days;

            if (diasVigencia < 0)
            {
                return -1;
            }
            
            return diasVigencia;

        }
    }
}
