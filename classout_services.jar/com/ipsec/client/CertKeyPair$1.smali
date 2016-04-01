.class final Lcom/ipsec/client/CertKeyPair$1;
.super Ljava/lang/Object;
.source "CertKeyPair.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/CertKeyPair;
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
        "Lcom/ipsec/client/CertKeyPair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ipsec/client/CertKeyPair;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    new-instance v0, Lcom/ipsec/client/CertKeyPair;

    invoke-direct {v0, p1}, Lcom/ipsec/client/CertKeyPair;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Lcom/ipsec/client/CertKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ipsec/client/CertKeyPair;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 40
    new-array v0, p1, [Lcom/ipsec/client/CertKeyPair;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, newArray(I)[Lcom/ipsec/client/CertKeyPair;

    move-result-object v0

    return-object v0
.end method
