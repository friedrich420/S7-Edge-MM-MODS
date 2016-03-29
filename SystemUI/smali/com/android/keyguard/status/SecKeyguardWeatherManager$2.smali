.class Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$100(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 163
    .local v0, "isWeatherEnabled":Z
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$200(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)I

    move-result v2

    # invokes: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->sendWeatherTriggerBroadcast(I)V
    invoke-static {v1, v2}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$300(Lcom/android/keyguard/status/SecKeyguardWeatherManager;I)V

    .line 165
    const-string v1, "SecKeyguardWeatherManager"

    const-string v2, "SendBroadcast() from Keyguard BootCompleted() Callback to Weather Deamon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 172
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$100(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 173
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 174
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 175
    .local v0, "isManagedProfile":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 176
    const-string v3, "SecKeyguardWeatherManager"

    const-string v4, "Skip onUserSwitchComplete logic"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_1
    return-void

    .line 174
    .end local v0    # "isManagedProfile":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    .restart local v0    # "isManagedProfile":Z
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$100(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$400(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # setter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I
    invoke-static {v3, p1}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$202(Lcom/android/keyguard/status/SecKeyguardWeatherManager;I)I

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # invokes: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->registerWeatherIntentReceiver()V
    invoke-static {v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$500(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)V

    .line 185
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUserList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$600(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$200(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 186
    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUserList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$600(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$200(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    # setter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;
    invoke-static {v4, v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$702(Lcom/android/keyguard/status/SecKeyguardWeatherManager;Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    goto :goto_1

    .line 188
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    new-instance v4, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    invoke-direct {v4}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;-><init>()V

    # setter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;
    invoke-static {v3, v4}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$702(Lcom/android/keyguard/status/SecKeyguardWeatherManager;Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    .line 189
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfoUserList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$600(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$200(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardWeatherManager$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherManager;

    # getter for: Lcom/android/keyguard/status/SecKeyguardWeatherManager;->mWeatherInfo:Lcom/android/keyguard/status/SecKeyguardWeatherInfo;
    invoke-static {v5}, Lcom/android/keyguard/status/SecKeyguardWeatherManager;->access$700(Lcom/android/keyguard/status/SecKeyguardWeatherManager;)Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
