.class Lcom/android/server/im/InjectionManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/im/InjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/im/InjectionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/im/InjectionManagerService;)V
    .registers 2

    .prologue
    .line 214
    iput-object p1, p0, this$0:Lcom/android/server/im/InjectionManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 221
    iget-object v5, p0, this$0:Lcom/android/server/im/InjectionManagerService;

    # setter for: Lcom/android/server/im/InjectionManagerService;->isBootComplete:Z
    invoke-static {v5, v6}, Lcom/android/server/im/InjectionManagerService;->access$002(Lcom/android/server/im/InjectionManagerService;Z)Z

    .line 222
    iget-object v5, p0, this$0:Lcom/android/server/im/InjectionManagerService;

    # getter for: Lcom/android/server/im/InjectionManagerService;->isBootAllParsingDone:Z
    invoke-static {v5}, Lcom/android/server/im/InjectionManagerService;->access$100(Lcom/android/server/im/InjectionManagerService;)Z

    move-result v5

    if-ne v5, v6, :cond_1f

    .line 225
    iget-object v5, p0, this$0:Lcom/android/server/im/InjectionManagerService;

    # invokes: Lcom/android/server/im/InjectionManagerService;->killAllParent()V
    invoke-static {v5}, Lcom/android/server/im/InjectionManagerService;->access$200(Lcom/android/server/im/InjectionManagerService;)V

    .line 253
    :cond_1f
    :goto_1f
    return-void

    .line 229
    :cond_20
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 230
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 236
    .local v3, "isFeatureApp":Z
    if-eqz v4, :cond_1f

    .line 237
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 238
    iget-object v5, p0, this$0:Lcom/android/server/im/InjectionManagerService;

    # invokes: Lcom/android/server/im/InjectionManagerService;->doAdd(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v5, p2, v4}, Lcom/android/server/im/InjectionManagerService;->access$300(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1f

    .line 239
    :cond_39
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 240
    iget-object v5, p0, this$0:Lcom/android/server/im/InjectionManagerService;

    # invokes: Lcom/android/server/im/InjectionManagerService;->doRemove(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v5, p2, v4}, Lcom/android/server/im/InjectionManagerService;->access$400(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1f

    .line 241
    :cond_47
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 243
    :try_start_4f
    iget-object v5, p0, this$0:Lcom/android/server/im/InjectionManagerService;

    # getter for: Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/im/InjectionManagerService;->access$500(Lcom/android/server/im/InjectionManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 244
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_6c

    iget-boolean v5, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_6c

    .line 245
    iget-object v5, p0, this$0:Lcom/android/server/im/InjectionManagerService;

    # invokes: Lcom/android/server/im/InjectionManagerService;->doAdd(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v5, p2, v4}, Lcom/android/server/im/InjectionManagerService;->access$300(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1f

    .line 248
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_6a
    move-exception v5

    goto :goto_1f

    .line 246
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_6c
    if-eqz v2, :cond_1f

    iget-boolean v5, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_1f

    .line 247
    iget-object v5, p0, this$0:Lcom/android/server/im/InjectionManagerService;

    # invokes: Lcom/android/server/im/InjectionManagerService;->doRemove(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v5, p2, v4}, Lcom/android/server/im/InjectionManagerService;->access$400(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_77} :catch_6a

    goto :goto_1f
.end method
