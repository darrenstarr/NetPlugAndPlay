﻿using LibDHCPServer.VolatilePool;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace NetPlugAndPlay.Services.DeviceConfigurator
{
    public class ReleaseDHCPPoolEventArgs : EventArgs
    {
        public NetworkPrefix Network { get; set; }
    }
}