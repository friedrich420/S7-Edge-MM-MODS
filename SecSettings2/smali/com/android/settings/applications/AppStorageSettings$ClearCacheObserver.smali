.class Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "AppStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    # getter for: Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/AppStorageSettings;->access$300(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 549
    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 550
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    # getter for: Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/AppStorageSettings;->access$300(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 551
    return-void

    .line 549
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
