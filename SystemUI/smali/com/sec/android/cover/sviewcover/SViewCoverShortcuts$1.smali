.class Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;
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
    .line 56
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch_light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "torch_light"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mTorchEnabled:Z
    invoke-static {v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$102(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;Z)Z

    .line 83
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->updateTorchIcon()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    .line 85
    :cond_1
    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->updateShortcutText()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$400(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    .line 89
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "com.sec.android.app.shealth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "SViewCoverShortcuts"

    const-string v1, "Shealth package installed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setEnableShealthIcon()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    .line 63
    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "com.sec.android.app.shealth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "SViewCoverShortcuts"

    const-string v1, "Shealth package changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setEnableShealthIcon()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "com.sec.android.app.shealth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "SViewCoverShortcuts"

    const-string v1, "Shealth package removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setEnableShealthIcon()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V

    .line 77
    :cond_0
    return-void
.end method
