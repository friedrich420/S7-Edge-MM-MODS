.class public abstract Lcom/sec/enterprise/knox/sdp/SdpStateListener;
.super Ljava/lang/Object;
.source "SdpStateListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEngineRemoved()V
    .registers 1

    .prologue
    .line 14
    return-void
.end method

.method public onStateChange(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 10
    return-void
.end method
