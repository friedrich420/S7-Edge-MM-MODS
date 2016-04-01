.class Lcom/sec/enterprise/knox/sdp/SdpUtil$EngineRemovedEvent;
.super Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpEvent;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineRemovedEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/enterprise/knox/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;)V
    .registers 3

    .prologue
    .line 223
    iput-object p1, p0, this$0:Lcom/sec/enterprise/knox/sdp/SdpUtil;

    .line 224
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil$SdpEvent;-><init>(Lcom/sec/enterprise/knox/sdp/SdpUtil;I)V

    .line 226
    return-void
.end method
