.class Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;
.super Ljava/lang/Object;
.source "EpdgNetworkMgmtObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgIfLinkStatusChangedRunnable"
.end annotation


# instance fields
.field private final mBool:Z

.field private final mString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Ljava/lang/String;Z)V
    .registers 5
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "bool"    # Z

    .prologue
    .line 92
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mString:Ljava/lang/String;

    .line 94
    iput-boolean p3, p0, mBool:Z

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgNetworkMgmtObserver;

    iget-object v1, p0, mString:Ljava/lang/String;

    iget-boolean v2, p0, mBool:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgNetworkMgmtObserver;->EpdgInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 100
    return-void
.end method
