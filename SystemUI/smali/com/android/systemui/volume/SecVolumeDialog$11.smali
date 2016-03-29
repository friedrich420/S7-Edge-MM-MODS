.class Lcom/android/systemui/volume/SecVolumeDialog$11;
.super Landroid/content/BroadcastReceiver;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    .prologue
    .line 1958
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1960
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCoverBroadcastReceiver: onReceive() : intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1964
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1965
    const-string v3, "state"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 1966
    .local v1, "bPluged":Z
    :goto_0
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCoverBroadcastReceiver: EarJack bPluged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$6600(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1969
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EarJack plug-out, remove waring popup on the s view cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$900(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 1974
    .end local v1    # "bPluged":Z
    :cond_0
    const-string v2, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1975
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mCoverBroadcastReceiver : call onDismissSafeVolumeWarning() #2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$900(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 1979
    :cond_1
    const-string v2, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1980
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4300(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 1981
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mCoverBroadcastReceiver : call onDismissSafeVolumeWarning() #3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$900(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 1984
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 1965
    goto :goto_0
.end method
