.class Lcom/android/systemui/qs/tiles/PersonalModeTile$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonalModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PersonalModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PersonalModeTile;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    # getter for: Lcom/android/systemui/qs/tiles/PersonalModeTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasAfwProfile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/PersonalModeTile;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$100(Lcom/android/systemui/qs/tiles/PersonalModeTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->hasAfwProfile(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/PersonalModeTile;->getMState()I
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$200(Lcom/android/systemui/qs/tiles/PersonalModeTile;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/PersonalModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$300(Lcom/android/systemui/qs/tiles/PersonalModeTile;Ljava/lang/Object;)V

    .line 65
    :cond_1
    return-void
.end method
