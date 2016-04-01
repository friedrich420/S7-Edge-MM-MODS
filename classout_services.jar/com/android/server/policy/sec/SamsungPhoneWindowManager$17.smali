.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$17;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 4122
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4126
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.android.intent.action.PAUSE_WATCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4127
    const-string v1, "SamsungWindowManager"

    const-string v2, "Premium watch pause received."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    .line 4129
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 4132
    :cond_27
    return-void
.end method
