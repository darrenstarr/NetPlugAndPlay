﻿using libnetworkutility;
using System.Collections.Generic;
using System.Net;

namespace NetPlugAndPlay.Services.DeviceConfigurator.ViewModels
{
    public class DHCPPoolChangeViewModel
    {
        public string ExistingTFTPBootFile { get; set; }
        public string ExistingDomainName { get; set; }
        public IPAddress ExistingGatewayAddress { get; set; }
        public bool ExistingDHCPRelay { get; set; }
        public NetworkPrefix ExistingPrefix { get; set; }

        public List<IPRange> ExistingReservations { get; set; }
        public string TFTPBootFile { get; set; }
        public string DomainName { get; set; }
        public IPAddress GatewayAddress { get; set; }
        public bool DHCPRelay { get; set; }
        public NetworkPrefix Prefix { get; set; }
        public List<IPRange> Reservations { get; set; }
    }
}
