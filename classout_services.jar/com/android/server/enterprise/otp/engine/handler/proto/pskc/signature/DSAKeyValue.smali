.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;
.super Ljava/lang/Object;
.source "DSAKeyValue.java"


# instance fields
.field private mG:[B

.field private mJ:[B

.field private mP:[B

.field private mPGenCounter:[B

.field private mQ:[B

.field private mSeed:[B

.field private mY:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getG()[B
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, mG:[B

    return-object v0
.end method

.method public getJ()[B
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, mJ:[B

    return-object v0
.end method

.method public getP()[B
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, mP:[B

    return-object v0
.end method

.method public getPGenCounter()[B
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, mPGenCounter:[B

    return-object v0
.end method

.method public getQ()[B
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, mQ:[B

    return-object v0
.end method

.method public getSeed()[B
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, mSeed:[B

    return-object v0
.end method

.method public getY()[B
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, mY:[B

    return-object v0
.end method

.method public setG([B)V
    .registers 2
    .param p1, "mG"    # [B

    .prologue
    .line 41
    iput-object p1, p0, mG:[B

    .line 42
    return-void
.end method

.method public setJ([B)V
    .registers 2
    .param p1, "mJ"    # [B

    .prologue
    .line 57
    iput-object p1, p0, mJ:[B

    .line 58
    return-void
.end method

.method public setP([B)V
    .registers 2
    .param p1, "mP"    # [B

    .prologue
    .line 25
    iput-object p1, p0, mP:[B

    .line 26
    return-void
.end method

.method public setPGenCounter([B)V
    .registers 2
    .param p1, "mPGenCounter"    # [B

    .prologue
    .line 73
    iput-object p1, p0, mPGenCounter:[B

    .line 74
    return-void
.end method

.method public setQ([B)V
    .registers 2
    .param p1, "mQ"    # [B

    .prologue
    .line 33
    iput-object p1, p0, mQ:[B

    .line 34
    return-void
.end method

.method public setSeed([B)V
    .registers 2
    .param p1, "mSeed"    # [B

    .prologue
    .line 65
    iput-object p1, p0, mSeed:[B

    .line 66
    return-void
.end method

.method public setY([B)V
    .registers 2
    .param p1, "mY"    # [B

    .prologue
    .line 49
    iput-object p1, p0, mY:[B

    .line 50
    return-void
.end method
