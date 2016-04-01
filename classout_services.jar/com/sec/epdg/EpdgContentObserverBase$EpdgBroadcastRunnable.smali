.class Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;
.super Ljava/lang/Object;
.source "EpdgContentObserverBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgContentObserverBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgBroadcastRunnable"
.end annotation


# instance fields
.field mSelfChange:Z

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sec/epdg/EpdgContentObserverBase;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgContentObserverBase;ZLandroid/net/Uri;)V
    .registers 4
    .param p2, "selfChange"    # Z
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 21
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgContentObserverBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p2, p0, mSelfChange:Z

    .line 23
    iput-object p3, p0, mUri:Landroid/net/Uri;

    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgContentObserverBase;

    iget-boolean v1, p0, mSelfChange:Z

    iget-object v2, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgContentObserverBase;->onChangeSlowPath(ZLandroid/net/Uri;)V

    .line 29
    return-void
.end method
