.class final Landroid/sec/enterprise/email/EnterpriseLDAPAccount$1;
.super Ljava/lang/Object;
.source "EnterpriseLDAPAccount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/sec/enterprise/email/EnterpriseLDAPAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 102
    new-instance v0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    invoke-direct {v0, p1}, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 106
    new-array v0, p1, [Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 100
    invoke-virtual {p0, p1}, newArray(I)[Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-result-object v0

    return-object v0
.end method
