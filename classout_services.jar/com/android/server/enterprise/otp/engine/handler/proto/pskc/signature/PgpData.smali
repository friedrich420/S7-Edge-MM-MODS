.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;
.super Ljava/lang/Object;
.source "PgpData.java"


# instance fields
.field private mPgpKeyId:[B

.field private mPgpKeyPacket:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPgpKeyId()[B
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, mPgpKeyId:[B

    return-object v0
.end method

.method public getPgpKeyPacket()[B
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, mPgpKeyPacket:[B

    return-object v0
.end method

.method public setPgpKeyId([B)V
    .registers 2
    .param p1, "mPgpKeyId"    # [B

    .prologue
    .line 23
    iput-object p1, p0, mPgpKeyId:[B

    .line 24
    return-void
.end method

.method public setPgpKeyPacket([B)V
    .registers 2
    .param p1, "mPgpKeyPacket"    # [B

    .prologue
    .line 31
    iput-object p1, p0, mPgpKeyPacket:[B

    .line 32
    return-void
.end method
