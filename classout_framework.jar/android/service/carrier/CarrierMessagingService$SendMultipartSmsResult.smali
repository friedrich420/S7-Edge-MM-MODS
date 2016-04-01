.class public final Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendMultipartSmsResult"
.end annotation


# instance fields
.field private final mMessageRefs:[I

.field private final mSendStatus:I


# direct methods
.method public constructor <init>(I[I)V
    .registers 3
    .param p1, "sendStatus"    # I
    .param p2, "messageRefs"    # [I

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput p1, p0, mSendStatus:I

    .line 369
    iput-object p2, p0, mMessageRefs:[I

    .line 370
    return-void
.end method


# virtual methods
.method public getMessageRefs()[I
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, mMessageRefs:[I

    return-object v0
.end method

.method public getSendStatus()I
    .registers 2

    .prologue
    .line 387
    iget v0, p0, mSendStatus:I

    return v0
.end method
