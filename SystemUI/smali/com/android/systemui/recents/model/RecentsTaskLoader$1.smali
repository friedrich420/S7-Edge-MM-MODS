.class Lcom/android/systemui/recents/model/RecentsTaskLoader$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;->this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 770
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "action":Ljava/lang/String;
    const-string v1, "RecentsTaskLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;->this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    # invokes: Lcom/android/systemui/recents/model/RecentsTaskLoader;->clearApplicationIconCache()V
    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->access$000(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V

    .line 775
    :cond_0
    return-void
.end method
