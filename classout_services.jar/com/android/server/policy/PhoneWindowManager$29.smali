.class Lcom/android/server/policy/PhoneWindowManager$29;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 9734
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

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

    const/4 v5, 0x0

    .line 9736
    const-string v2, "WindowManager"

    const-string v3, "ACTION_USBHID_MOUSE_EVENT Received..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9737
    const-string v2, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 9738
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v3, "android.intent.extra.device_state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseConnectedDock:I

    .line 9740
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_USBHID_MOUSE_EVENT Received.status  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mMouseConnectedDock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9741
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseConnectedDock:I

    if-ne v6, v2, :cond_96

    .line 9742
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v6, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 9743
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 9745
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_60

    .line 9746
    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 9747
    :cond_60
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_82

    .line 9749
    :try_start_66
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v2, :cond_75

    .line 9750
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$29$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$29$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$29;)V

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 9764
    :cond_75
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_82
    .catch Ljava/lang/SecurityException; {:try_start_66 .. :try_end_82} :catch_8d

    .line 9787
    :cond_82
    :goto_82
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v6}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 9788
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 9789
    return-void

    .line 9765
    :catch_8d
    move-exception v0

    .line 9766
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "WindowManager"

    const-string v3, "Phone window manager doesn\'t have the permssion READ_PHONE_STATE. please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 9771
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_96
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 9772
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 9773
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_82

    .line 9774
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_82

    .line 9779
    :cond_b4
    :try_start_b4
    const-string/jumbo v2, "uimode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    .line 9781
    .local v1, "uiModeService":Landroid/app/IUiModeManager;
    if-eqz v1, :cond_82

    .line 9782
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v3

    iput v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_c9} :catch_ca

    goto :goto_82

    .line 9784
    .end local v1    # "uiModeService":Landroid/app/IUiModeManager;
    :catch_ca
    move-exception v2

    goto :goto_82
.end method
