.class public final Landroid/service/carrier/CarrierMessagingService$SendMmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendMmsResult"
.end annotation


# instance fields
.field private mSendConfPdu:[B

.field private mSendStatus:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3
    .param p1, "sendStatus"    # I
    .param p2, "sendConfPdu"    # [B

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput p1, p0, mSendStatus:I

    .line 287
    iput-object p2, p0, mSendConfPdu:[B

    .line 288
    return-void
.end method


# virtual methods
.method public getSendConfPdu()[B
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, mSendConfPdu:[B

    return-object v0
.end method

.method public getSendStatus()I
    .registers 2

    .prologue
    .line 297
    iget v0, p0, mSendStatus:I

    return v0
.end method
