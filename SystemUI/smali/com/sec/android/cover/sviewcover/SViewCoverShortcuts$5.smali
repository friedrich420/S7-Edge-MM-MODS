.class Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$5;
.super Ljava/lang/Object;
.source "SViewCoverShortcuts.java"

# interfaces
.implements Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setupShortcutViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 360
    const-string v1, "SViewCoverShortcuts"

    const-string v2, "Display Shealth warning popup!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-boolean v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 362
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mShealthWarningContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteView()Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 365
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 366
    const-string v1, "SViewCoverShortcuts"

    const-string v2, "Display Shealth warning popup!! - requestAccessibilityFocus();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
