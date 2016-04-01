.class Lcom/sec/epdg/handover/EpdgImsListener60$OnDedicatedBearerEvent;
.super Lcom/sec/epdg/handover/EpdgImsListener60$ImsCallRunnable;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDedicatedBearerEvent"
.end annotation


# instance fields
.field private mBearerState:I

.field private mQci:I

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener60;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;II)V
    .registers 5
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p3, "bearerState"    # I
    .param p4, "qci"    # I

    .prologue
    .line 283
    iput-object p1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener60$ImsCallRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 285
    iput p3, p0, mBearerState:I

    .line 286
    iput p4, p0, mQci:I

    .line 287
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 290
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onDedicatedBearerEvent: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$900()Lcom/sec/epdg/handover/EpdgImsCallStatus;

    move-result-object v0

    iget-object v1, p0, mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    iget v2, p0, mBearerState:I

    iget v3, p0, mQci:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->onDedicatedBearerEvent(Lcom/sec/ims/volte2/data/ImsCallInfo;II)V

    .line 293
    return-void
.end method
