﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication2.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TAROTWEBEntities1 : DbContext
    {
        public TAROTWEBEntities1()
            : base("name=TAROTWEBEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<cardtable> cardtables { get; set; }
        public virtual DbSet<cardtable_cups> cardtable_cups { get; set; }
        public virtual DbSet<cardtable_pentacles> cardtable_pentacles { get; set; }
        public virtual DbSet<cardtable_swords> cardtable_swords { get; set; }
        public virtual DbSet<cardtable_use> cardtable_use { get; set; }
        public virtual DbSet<cardtable_wands> cardtable_wands { get; set; }
        public virtual DbSet<readertable> readertables { get; set; }
    }
}
