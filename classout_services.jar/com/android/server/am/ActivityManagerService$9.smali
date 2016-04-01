.class Lcom/android/server/am/ActivityManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 9707
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9710
    const-string v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 9711
    .local v14, "pkgs":[Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 9712
    .local v9, "uid":I
    if-eqz v14, :cond_39

    .line 9713
    move-object v11, v14

    .local v11, "arr$":[Ljava/lang/String;
    array-length v13, v11

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_16
    if-ge v12, v13, :cond_39

    aget-object v2, v11, v12

    .line 9714
    .local v2, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 9715
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v10, "query restart"

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 9717
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, setResultCode(I)V

    .line 9718
    monitor-exit v15

    .line 9723
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_39
    return-void

    .line 9720
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v11    # "arr$":[Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    :cond_3a
    monitor-exit v15

    .line 9713
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 9720
    :catchall_3e
    move-exception v1

    monitor-exit v15
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_3e

    throw v1
.end method
