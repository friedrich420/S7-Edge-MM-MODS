.class Lcom/android/server/display/IpRemoteDisplayController$9;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->reportFeatureState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$featureState:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .registers 3

    .prologue
    .line 515
    iput-object p1, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput p2, p0, val$featureState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 518
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    iget v1, p0, val$featureState:I

    invoke-interface {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onFeatureStateChanged(I)V

    .line 519
    return-void
.end method
