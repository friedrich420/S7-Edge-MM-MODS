.class Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;
.super Ljava/lang/Object;
.source "SamsungRilConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$002(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$102(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Z)Z

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->getBlob()V

    .line 81
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 85
    sget-object v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$002(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 87
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$102(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Z)Z

    .line 88
    return-void
.end method
