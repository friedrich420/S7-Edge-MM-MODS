.class Lcom/android/systemui/qs/tiles/SilentModeTile$1;
.super Landroid/content/BroadcastReceiver;
.source "SilentModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SilentModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SilentModeTile;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "android.media.EXTRA_RINGER_MODE"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, "profile":I
    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() : action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SoundProfile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-nez v1, :cond_1

    .line 54
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setSoundEffectEnabled(Z)V

    .line 58
    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mSoundProfile:I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$102(I)I

    .line 59
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/SilentModeTile;->refreshState()V
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$200(Lcom/android/systemui/qs/tiles/SilentModeTile;)V

    .line 61
    .end local v1    # "profile":I
    :cond_0
    return-void

    .line 56
    .restart local v1    # "profile":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setSoundEffectEnabled(Z)V

    goto :goto_0
.end method
