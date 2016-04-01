.class public Lcom/sec/epdg/ipc/EpdgNetReg;
.super Ljava/lang/Object;
.source "EpdgNetReg.java"


# instance fields
.field private act:B

.field private srvdomain:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-byte v0, p0, act:B

    .line 10
    iput-byte v0, p0, srvdomain:B

    .line 11
    return-void
.end method

.method public constructor <init>(BB)V
    .registers 3
    .param p1, "act"    # B
    .param p2, "srvdomain"    # B

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-byte p1, p0, act:B

    .line 15
    iput-byte p2, p0, srvdomain:B

    .line 16
    return-void
.end method


# virtual methods
.method public getAct()I
    .registers 2

    .prologue
    .line 19
    iget-byte v0, p0, act:B

    return v0
.end method

.method public getSrvdomain()I
    .registers 2

    .prologue
    .line 27
    iget-byte v0, p0, srvdomain:B

    return v0
.end method

.method public setAct(B)V
    .registers 2
    .param p1, "act"    # B

    .prologue
    .line 23
    iput-byte p1, p0, act:B

    .line 24
    return-void
.end method

.method public setSrvdomain(B)V
    .registers 2
    .param p1, "srvdomain"    # B

    .prologue
    .line 31
    iput-byte p1, p0, srvdomain:B

    .line 32
    return-void
.end method
