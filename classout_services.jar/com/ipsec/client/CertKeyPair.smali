.class public Lcom/ipsec/client/CertKeyPair;
.super Ljava/lang/Object;
.source "CertKeyPair.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ipsec/client/CertKeyPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertificate:Ljava/security/cert/Certificate;

.field private mKey:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/ipsec/client/CertKeyPair$1;

    invoke-direct {v0}, Lcom/ipsec/client/CertKeyPair$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, mCertificate:Ljava/security/cert/Certificate;

    .line 27
    iput-object v0, p0, mKey:Ljava/security/Key;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, mCertificate:Ljava/security/cert/Certificate;

    .line 27
    iput-object v0, p0, mKey:Ljava/security/Key;

    .line 56
    invoke-direct {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, mCertificate:Ljava/security/cert/Certificate;

    .line 27
    iput-object v0, p0, mKey:Ljava/security/Key;

    .line 62
    iput-object p1, p0, mCertificate:Ljava/security/cert/Certificate;

    .line 63
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    iput-object v0, p0, mCertificate:Ljava/security/cert/Certificate;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iput-object v0, p0, mKey:Ljava/security/Key;

    .line 89
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, mCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/Key;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, mKey:Ljava/security/Key;

    return-object v0
.end method

.method public setCertificate(Ljava/security/cert/Certificate;)V
    .registers 2
    .param p1, "aCertificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 98
    iput-object p1, p0, mCertificate:Ljava/security/cert/Certificate;

    .line 99
    return-void
.end method

.method public setPrivateKey(Ljava/security/Key;)V
    .registers 2
    .param p1, "aKey"    # Ljava/security/Key;

    .prologue
    .line 107
    iput-object p1, p0, mKey:Ljava/security/Key;

    .line 108
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 73
    iget-object v0, p0, mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 74
    iget-object v0, p0, mKey:Ljava/security/Key;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 75
    return-void
.end method
