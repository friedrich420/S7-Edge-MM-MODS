.class Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DcmKeyguardLiveUXManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    const-string v4, "eventType"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 156
    .local v1, "eventType":I
    const-string v4, "DcmKeyguardLiveUXManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotificationPanelView.onReceive(): ACTION_SCREEN_UNLOCK, eventType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "mascotAction":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 172
    :goto_0
    if-eqz v2, :cond_0

    .line 173
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, "mascotIntent":Landroid/content/Intent;
    const-string v4, "com.nttdocomo.android.mascot"

    const-string v5, "com.nttdocomo.android.mascot.application.MascotApplicationProxy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v4, "eventType"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    # getter for: Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivity(Landroid/content/Intent;Z)V

    .line 185
    .end local v1    # "eventType":I
    .end local v2    # "mascotAction":Ljava/lang/String;
    .end local v3    # "mascotIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 160
    .restart local v1    # "eventType":I
    .restart local v2    # "mascotAction":Ljava/lang/String;
    :pswitch_0
    const-string v2, "LOCK_CLICK_MASCOT"

    .line 161
    goto :goto_0

    .line 164
    :pswitch_1
    const-string v2, "LOCK_CLICK_POPUP"

    .line 165
    goto :goto_0

    .line 167
    :pswitch_2
    const-string v2, "ACTION_UNLOCK"

    .line 168
    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
