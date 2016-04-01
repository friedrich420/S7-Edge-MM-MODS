.class Lcom/android/server/display/IpRemoteDisplayController$5;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->requestDisableWifiDisplay(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$connectedMode:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .registers 3

    .prologue
    .line 271
    iput-object p1, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput p2, p0, val$connectedMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 274
    iget v0, p0, val$connectedMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    .line 275
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/IpRemoteDisplayController;->mDisconnectByUser:Z
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    .line 277
    :cond_c
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget v1, p0, val$connectedMode:I

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->disableWifiDisplay(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1200(Lcom/android/server/display/IpRemoteDisplayController;I)V

    .line 278
    return-void
.end method
