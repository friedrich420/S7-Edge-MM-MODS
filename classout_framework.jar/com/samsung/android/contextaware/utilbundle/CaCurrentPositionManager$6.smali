.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .registers 2

    .prologue
    .line 812
    iput-object p1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 818
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->LocRequestSource:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$600(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_14

    .line 819
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->unregisterGpsListener()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$700(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    .line 821
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->unregisterWpsListener()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$800(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    .line 823
    :cond_14
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->LocRequestSource:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$600(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_36

    .line 824
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->removeCurrentLoc()V

    .line 825
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mBrReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$900(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 826
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mBrReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$900(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 831
    :cond_36
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->LocRequestSource:I
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$602(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;I)I

    .line 832
    return-void
.end method
