.class Lcom/android/server/display/WifiDisplayController$2;
.super Landroid/database/ContentObserver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 365
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p3, p0, val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 11
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 367
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange PowerSavingMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v3, p0, val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 369
    .local v1, "powerSaving":I
    if-nez v1, :cond_42

    iget-object v3, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 370
    iget-object v3, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static {v3, v6}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 371
    iget-object v3, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    .line 374
    :cond_42
    iget-object v3, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 375
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    .line 376
    .local v2, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7c

    iget-object v3, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_7c

    .line 377
    iget-object v3, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    const v4, 0x22084

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;I)V

    .line 380
    :cond_7c
    return-void
.end method
