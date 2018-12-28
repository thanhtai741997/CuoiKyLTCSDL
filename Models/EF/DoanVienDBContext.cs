namespace Models.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DoanVienDBContext : DbContext
    {
        public DoanVienDBContext()
            : base("name=DoanVienDBContext")
        {
        }

        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<UserGroup> UserGroup { get; set; }
        public virtual DbSet<Users> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Role>()
                .Property(e => e.ID)
                .IsUnicode(false);

            modelBuilder.Entity<Role>()
                .HasMany(e => e.UserGroup)
                .WithMany(e => e.Role)
                .Map(m => m.ToTable("Credential").MapLeftKey("RoleID").MapRightKey("UserGroupID"));

            modelBuilder.Entity<UserGroup>()
                .Property(e => e.ID)
                .IsUnicode(false);

            modelBuilder.Entity<UserGroup>()
                .HasMany(e => e.Users)
                .WithOptional(e => e.UserGroup)
                .HasForeignKey(e => e.GroupID);

            modelBuilder.Entity<Users>()
                .Property(e => e.UserName)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.GroupID)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.CreateBy)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.ModifiedBy)
                .IsUnicode(false);
        }
    }
}
