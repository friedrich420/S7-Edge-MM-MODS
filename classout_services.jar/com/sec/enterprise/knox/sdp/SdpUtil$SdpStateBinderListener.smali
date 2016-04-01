.class Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;
.super Lcom/sec/sdp/ISdpListener$Stub;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpStateBinderListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field mListener:Lcom/sec/enterprise/knox/sdp/SdpStateListener;

.field final synthetic this$0:Lcom/sec/enterprise/knox/sdp/SdpUtil;


# direct methods
.method private constructor <init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;Lcom/sec/enterprise/knox/sdp/SdpStateListener;)V
    .registers 4
    .param p2, "listener"    # Lcom/sec/enterprise/knox/sdp/SdpStateListener;

    .prologue
    .line 239
    iput-object p1, p0, this$0:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    invoke-direct {p0}, Lcom/sec/sdp/ISdpListener$Stub;-><init>()V

    .line 240
    iput-object p2, p0, mListener:Lcom/sec/enterprise/knox/sdp/SdpStateListener;

    .line 241
    new-instance v0, Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener$1;-><init>(Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;Lcom/sec/enterprise/knox/sdp/SdpUtil;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;Lcom/sec/enterprise/knox/sdp/SdpStateListener;Lcom/sec/enterprise/knox/sdp/SdpUtil$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/sec/enterprise/knox/sdp/SdpUtil;
    .param p2, "x1"    # Lcom/sec/enterprise/knox/sdp/SdpStateListener;
    .param p3, "x2"    # Lcom/sec/enterprise/knox/sdp/SdpUtil$1;

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, <init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;Lcom/sec/enterprise/knox/sdp/SdpStateListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;)Lcom/sec/enterprise/knox/sdp/SdpStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpStateBinderListener;

    .prologue
    .line 230
    invoke-direct {p0}, getListener()Lcom/sec/enterprise/knox/sdp/SdpStateListener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/sec/enterprise/knox/sdp/SdpStateListener;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, mListener:Lcom/sec/enterprise/knox/sdp/SdpStateListener;

    return-object v0
.end method


# virtual methods
.method public onEngineRemoved()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, mListener:Lcom/sec/enterprise/knox/sdp/SdpStateListener;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/SdpStateListener;->onEngineRemoved()V

    .line 266
    return-void
.end method

.method public onStateChange(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 259
    new-instance v0, Lcom/sec/enterprise/knox/sdp/SdpUtil$StateChangeEvent;

    iget-object v1, p0, this$0:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    invoke-direct {v0, v1, p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil$StateChangeEvent;-><init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;I)V

    .line 260
    .local v0, "ev":Lcom/sec/enterprise/knox/sdp/SdpUtil$StateChangeEvent;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil$StateChangeEvent;->getMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    iget-object v1, p0, mListener:Lcom/sec/enterprise/knox/sdp/SdpStateListener;

    invoke-virtual {v1, p1}, Lcom/sec/enterprise/knox/sdp/SdpStateListener;->onStateChange(I)V

    .line 262
    return-void
.end method
