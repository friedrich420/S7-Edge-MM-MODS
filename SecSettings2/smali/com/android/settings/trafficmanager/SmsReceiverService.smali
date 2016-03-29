.class public Lcom/android/settings/trafficmanager/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;
    }
.end annotation


# static fields
.field public static ACTION_SEND_RESPONSE:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mReceiver:Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;

.field private mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

.field private final mTimeOutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "com.samsung.settings.trafficmanager.MESSAGE_SENT"

    sput-object v0, Lcom/android/settings/trafficmanager/SmsReceiverService;->ACTION_SEND_RESPONSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 17
    const-string v0, "TrafficManager/SmsReceiverService"

    iput-object v0, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->TAG:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mReceiver:Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;

    .line 20
    iput-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    .line 25
    new-instance v0, Lcom/android/settings/trafficmanager/SmsReceiverService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/trafficmanager/SmsReceiverService$1;-><init>(Lcom/android/settings/trafficmanager/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mTimeOutHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/trafficmanager/SmsReceiverService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/trafficmanager/SmsReceiverService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mTimeOutHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const-string v0, "TrafficManager/SmsReceiverService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    const-string v0, "TrafficManager/SmsReceiverService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    iput-object p0, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    invoke-direct {v0, v2, v2}, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;-><init>(Landroid/os/Handler;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mReceiver:Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;-><init>(Lcom/android/settings/trafficmanager/SmsReceiverService;Lcom/android/settings/trafficmanager/SmsReceiverService$1;)V

    iput-object v0, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mReceiver:Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;

    .line 60
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 98
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TrafficManager/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x1

    .line 65
    const-string v3, "TrafficManager/SmsReceiverService"

    const-string v4, "onStartCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v3, Lcom/android/settings/trafficmanager/SmsReceiverService;->ACTION_SEND_RESPONSE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v1, "mFilter":Landroid/content/IntentFilter;
    const-string v3, "com.android.settings.trafficmanager.status"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mReceiver:Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    iget-object v3, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mTimeOutHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const-string v3, "TrafficManager/SmsReceiverService"

    const-string v4, "remove message for stopSelf"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mTimeOutHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mTimeOutHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 79
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/settings/trafficmanager/SmsReceiverService;->mTimeOutHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x249f0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 80
    const-string v3, "TrafficManager/SmsReceiverService"

    const-string v4, "send message delay for stopSelf"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p1, :cond_1

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    .line 86
    :goto_0
    return v3

    .line 85
    :cond_1
    const-string v3, "TrafficManager/SmsReceiverService"

    const-string v4, "Intetnt is null - onStartCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v3, 0x2

    goto :goto_0
.end method
