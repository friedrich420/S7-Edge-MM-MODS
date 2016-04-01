.class Lcom/android/server/clipboardex/ClipboardExService$1;
.super Landroid/content/BroadcastReceiver;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .registers 2

    .prologue
    .line 699
    iput-object p1, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 702
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 705
    .local v1, "id":I
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 706
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_35

    .line 707
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_USER_ADDED user...id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_35
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const-string v4, "ADDED"

    invoke-virtual {v3, v1, v4}, Lcom/android/server/clipboardex/ClipboardExService;->multiUserMode(ILjava/lang/String;)V

    .line 720
    :cond_3c
    :goto_3c
    return-void

    .line 710
    :cond_3d
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 711
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_67

    .line 712
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_USER_REMOVED user...id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_67
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const-string v4, "REMOVED"

    invoke-virtual {v3, v1, v4}, Lcom/android/server/clipboardex/ClipboardExService;->multiUserMode(ILjava/lang/String;)V

    goto :goto_3c

    .line 715
    :cond_6f
    const-string v3, "android.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    const-string v3, "android.intent.action.SECONTAINER_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 716
    :cond_7f
    const-string/jumbo v3, "secontainerid"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 717
    .local v2, "secontainerID":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_ac

    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for secontainerid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_ac
    iget-object v3, p0, this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->secontainerClipboardMode(Ljava/lang/String;I)V

    goto :goto_3c
.end method
