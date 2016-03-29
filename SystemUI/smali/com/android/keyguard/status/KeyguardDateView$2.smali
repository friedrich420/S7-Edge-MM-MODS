.class Lcom/android/keyguard/status/KeyguardDateView$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardDateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/KeyguardDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/KeyguardDateView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/KeyguardDateView;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/keyguard/status/KeyguardDateView$2;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView$2;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    # invokes: Lcom/android/keyguard/status/KeyguardDateView;->updateFormatString()V
    invoke-static {v1}, Lcom/android/keyguard/status/KeyguardDateView;->access$300(Lcom/android/keyguard/status/KeyguardDateView;)V

    .line 65
    iget-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView$2;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    # setter for: Lcom/android/keyguard/status/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v1, v2}, Lcom/android/keyguard/status/KeyguardDateView;->access$402(Lcom/android/keyguard/status/KeyguardDateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    .line 66
    iget-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView$2;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    # setter for: Lcom/android/keyguard/status/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v1, v2}, Lcom/android/keyguard/status/KeyguardDateView;->access$502(Lcom/android/keyguard/status/KeyguardDateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    .line 67
    iget-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView$2;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    invoke-virtual {v1}, Lcom/android/keyguard/status/KeyguardDateView;->updateDateText()V

    .line 69
    :cond_1
    return-void
.end method
