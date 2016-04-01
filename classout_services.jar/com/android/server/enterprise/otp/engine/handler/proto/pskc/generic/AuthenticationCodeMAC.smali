.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;
.super Ljava/lang/Object;
.source "AuthenticationCodeMAC.java"


# instance fields
.field private mIterationCount:I

.field private mMac:Ljava/lang/String;

.field private mMacAlgo:Ljava/lang/String;

.field private mNonce:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, mIterationCount:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAlgo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, mMacAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public setIterationCount(I)V
    .registers 2
    .param p1, "mIterationCount"    # I

    .prologue
    .line 25
    iput p1, p0, mIterationCount:I

    .line 26
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .registers 2
    .param p1, "mMac"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, mMac:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setMacAlgo(Ljava/lang/String;)V
    .registers 2
    .param p1, "mMacAlgo"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, mMacAlgo:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .registers 2
    .param p1, "mNonce"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, mNonce:Ljava/lang/String;

    .line 34
    return-void
.end method
