.class Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$5;
.super Landroid/app/usage/IUsageStatsWatcher$Stub;
.source "SmartClipDragDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$5;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "pauseComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 2
    .param p1, "resumeComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    if-eqz p2, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    const-string v0, "SmartClipDragDrop"

    const-string v1, "noteResumeComponent : Home screen resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$5;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method
