.class public Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
.super Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnAttachRequest"
.end annotation


# instance fields
.field private final mApnName:Ljava/lang/String;

.field private final mIpv4Addr:Ljava/lang/String;

.field private final mIpv6Addr:Ljava/lang/String;

.field private final mPcscfReq:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "cid"    # I
    .param p2, "apnName"    # Ljava/lang/String;
    .param p3, "ipv4Addr"    # Ljava/lang/String;
    .param p4, "ipv6Addr"    # Ljava/lang/String;
    .param p5, "pcscfReq"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;-><init>(I)V

    .line 37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mApnName:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mIpv4Addr:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mIpv6Addr:Ljava/lang/String;

    .line 40
    iput p5, p0, mPcscfReq:I

    .line 41
    return-void
.end method


# virtual methods
.method public getApnName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, mApnName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4Addr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6Addr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfReq()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, mPcscfReq:I

    return v0
.end method
