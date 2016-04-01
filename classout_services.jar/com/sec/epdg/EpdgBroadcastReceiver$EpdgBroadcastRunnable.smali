.class Lcom/sec/epdg/EpdgBroadcastReceiver$EpdgBroadcastRunnable;
.super Ljava/lang/Object;
.source "EpdgBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgBroadcastRunnable"
.end annotation


# instance fields
.field mObj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sec/epdg/EpdgBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgBroadcastReceiver;Ljava/lang/Object;)V
    .registers 3
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 19
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, mObj:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgBroadcastReceiver;

    iget-object v1, p0, mObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgBroadcastReceiver;->processSlowPath(Ljava/lang/Object;)V

    .line 26
    return-void
.end method
