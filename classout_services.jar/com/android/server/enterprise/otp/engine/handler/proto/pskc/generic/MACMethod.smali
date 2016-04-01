.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;
.super Ljava/lang/Object;
.source "MACMethod.java"


# instance fields
.field private mCipherAlgo:Ljava/lang/String;

.field private mCipherData:Ljava/lang/String;

.field private mShaAlgo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipherAlgo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, mCipherAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, mCipherData:Ljava/lang/String;

    return-object v0
.end method

.method public getShaAlgo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, mShaAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public setCipherAlgo(Ljava/lang/String;)V
    .registers 2
    .param p1, "cipherAlgo"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, mCipherAlgo:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setCipherData(Ljava/lang/String;)V
    .registers 2
    .param p1, "cipherData"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, mCipherData:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setShaAlgo(Ljava/lang/String;)V
    .registers 2
    .param p1, "shaAlgor"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, mShaAlgo:Ljava/lang/String;

    .line 27
    return-void
.end method
