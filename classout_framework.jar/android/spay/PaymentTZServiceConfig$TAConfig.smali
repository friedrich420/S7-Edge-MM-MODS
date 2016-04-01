.class public Landroid/spay/PaymentTZServiceConfig$TAConfig;
.super Ljava/lang/Object;
.source "PaymentTZServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/PaymentTZServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TAConfig"
.end annotation


# instance fields
.field public maxRecvRespSize:I

.field public maxSendCmdSize:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "sendsize"    # I
    .param p2, "recvsize"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, maxSendCmdSize:I

    .line 21
    iput p2, p0, maxRecvRespSize:I

    .line 22
    return-void
.end method
