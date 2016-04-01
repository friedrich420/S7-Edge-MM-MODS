.class final Landroid/sec/enterprise/email/EnterpriseEmailAccount$1;
.super Ljava/lang/Object;
.source "EnterpriseEmailAccount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/email/EnterpriseEmailAccount;
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
        "Landroid/sec/enterprise/email/EnterpriseEmailAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 247
    new-instance v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/sec/enterprise/email/EnterpriseEmailAccount;-><init>(Landroid/os/Parcel;Landroid/sec/enterprise/email/EnterpriseEmailAccount$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 245
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 251
    new-array v0, p1, [Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 245
    invoke-virtual {p0, p1}, newArray(I)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    return-object v0
.end method
