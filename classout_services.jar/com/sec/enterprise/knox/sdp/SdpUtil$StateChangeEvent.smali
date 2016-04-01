.class Lcom/sec/enterprise/knox/sdp/SdpUtil$StateChangeEvent;
.super Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpEvent;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangeEvent"
.end annotation


# instance fields
.field public state:I

.field final synthetic this$0:Lcom/sec/enterprise/knox/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;I)V
    .registers 4
    .param p2, "arg"    # I

    .prologue
    .line 215
    iput-object p1, p0, this$0:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpEvent;-><init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;I)V

    .line 217
    iput p2, p0, state:I

    .line 218
    return-void
.end method
