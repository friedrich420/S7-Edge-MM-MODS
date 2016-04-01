.class Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpEvent;
.super Ljava/lang/Object;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpEvent"
.end annotation


# static fields
.field static final ON_ENGINE_REMOVED:I = 0x2

.field static final ON_STATE_CHANGED:I = 0x1


# instance fields
.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/sec/enterprise/knox/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;I)V
    .registers 4
    .param p2, "what"    # I

    .prologue
    .line 201
    iput-object p1, p0, this$0:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, mMessage:Landroid/os/Message;

    .line 203
    iget-object v0, p0, mMessage:Landroid/os/Message;

    iput p2, v0, Landroid/os/Message;->what:I

    .line 204
    iget-object v0, p0, mMessage:Landroid/os/Message;

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    return-void
.end method


# virtual methods
.method public getMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, mMessage:Landroid/os/Message;

    return-object v0
.end method
