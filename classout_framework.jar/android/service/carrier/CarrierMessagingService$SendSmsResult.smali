.class public final Landroid/service/carrier/CarrierMessagingService$SendSmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendSmsResult"
.end annotation


# instance fields
.field private final mMessageRef:I

.field private final mSendStatus:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "sendStatus"    # I
    .param p2, "messageRef"    # I

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput p1, p0, mSendStatus:I

    .line 328
    iput p2, p0, mMessageRef:I

    .line 329
    return-void
.end method


# virtual methods
.method public getMessageRef()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, mMessageRef:I

    return v0
.end method

.method public getSendStatus()I
    .registers 2

    .prologue
    .line 346
    iget v0, p0, mSendStatus:I

    return v0
.end method
