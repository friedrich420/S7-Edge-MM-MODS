.class public Lcom/sec/epdg/smartwifi/PingStats;
.super Ljava/lang/Object;
.source "PingStats.java"


# instance fields
.field private final mPacketLossPercent:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "packetLossPercent"    # Ljava/lang/Integer;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, mPacketLossPercent:Ljava/lang/Integer;

    .line 8
    return-void
.end method


# virtual methods
.method public getPacketLossInPercentage()I
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, mPacketLossPercent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
