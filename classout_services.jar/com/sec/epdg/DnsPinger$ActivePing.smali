.class Lcom/sec/epdg/DnsPinger$ActivePing;
.super Ljava/lang/Object;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivePing"
.end annotation


# instance fields
.field internalId:I

.field packetId:S

.field result:Ljava/lang/Integer;

.field socket:Ljava/net/DatagramSocket;

.field start:J

.field final synthetic this$0:Lcom/sec/epdg/DnsPinger;

.field timeout:I


# direct methods
.method private constructor <init>(Lcom/sec/epdg/DnsPinger;)V
    .registers 4

    .prologue
    .line 99
    iput-object p1, p0, this$0:Lcom/sec/epdg/DnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, start:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/DnsPinger;Lcom/sec/epdg/DnsPinger$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/DnsPinger;
    .param p2, "x1"    # Lcom/sec/epdg/DnsPinger$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/DnsPinger;)V

    return-void
.end method
