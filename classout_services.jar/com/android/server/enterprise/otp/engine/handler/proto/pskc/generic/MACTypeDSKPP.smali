.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;
.super Ljava/lang/Object;
.source "MACTypeDSKPP.java"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, mMac:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, mAlgorithm:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .registers 2
    .param p1, "mMac"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, mMac:Ljava/lang/String;

    .line 14
    return-void
.end method
