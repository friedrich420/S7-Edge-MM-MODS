.class abstract Lcom/sec/epdg/handover/EpdgImsListener60$ImsCallRunnable;
.super Ljava/lang/Object;
.source "EpdgImsListener60.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ImsCallRunnable"
.end annotation


# instance fields
.field protected final mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener60;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 3
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    .line 354
    iput-object p1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p2, p0, mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 356
    return-void
.end method


# virtual methods
.method getCallInfo()Lcom/sec/ims/volte2/data/ImsCallInfo;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    return-object v0
.end method
