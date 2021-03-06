﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NetPlugAndPlay.Controllers.v0.ViewModels
{
    public class NetworkDeviceTypeChangeViewModel
    {
        [JsonProperty("id")]
        public Guid Id { get; set; }
        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("manufacturer")]
        public string Manufacturer { get; set; }
        [JsonProperty("productId")]
        public string ProductId { get; set; }
        [JsonProperty("interfaces")]
        public NetworkInterfaceChangesViewModel Interfaces { get; set; }
    }
}
