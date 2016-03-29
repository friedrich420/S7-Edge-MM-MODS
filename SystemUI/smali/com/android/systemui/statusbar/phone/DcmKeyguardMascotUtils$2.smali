.class Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "DcmKeyguardMascotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->registerMascotReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SecKeyguardStatusUtils"

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): message receive com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    const-string v2, "RemoteViews"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    # setter for: Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$102(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 91
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    # getter for: Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-nez v2, :cond_2

    .line 92
    const-string v2, "SecKeyguardStatusUtils"

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): mascot is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    # getter for: Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    .line 123
    :cond_1
    :goto_1
    return-void

    .line 96
    :cond_2
    const-string v2, "SecKeyguardStatusUtils"

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): mascot is exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_3
    const-string v2, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "SecKeyguardStatusUtils"

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): message receive bindService IScreenLockService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "screenIntent":Landroid/content/Intent;
    const-string v2, "com.nttdocomo.android.screenlockservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    # getter for: Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 107
    const-string v2, "SecKeyguardStatusUtils"

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): can\'t connect IScreenLockService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_6
    const-string v2, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    # getter for: Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_1

    .line 113
    .end local v1    # "screenIntent":Landroid/content/Intent;
    :cond_7
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "SecKeyguardStatusUtils"

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): message android.intent.action.BOOT_COMPLETED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    # setter for: Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsBootCompleted:Z
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$202(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z

    .line 118
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    # getter for: Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$300(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    # getter for: Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    .line 120
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$302(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z

    goto/16 :goto_1
.end method
