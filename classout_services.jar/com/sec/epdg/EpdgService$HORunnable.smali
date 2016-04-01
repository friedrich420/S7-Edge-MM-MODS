.class abstract Lcom/sec/epdg/EpdgService$HORunnable;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HORunnable"
.end annotation


# instance fields
.field protected final mNetworkType:I

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;I)V
    .registers 3
    .param p2, "networkType"    # I

    .prologue
    .line 3491
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3492
    iput p2, p0, mNetworkType:I

    .line 3493
    return-void
.end method


# virtual methods
.method getNetworkType()I
    .registers 2

    .prologue
    .line 3496
    iget v0, p0, mNetworkType:I

    return v0
.end method
