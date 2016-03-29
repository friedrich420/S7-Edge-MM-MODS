.class public Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "ApMirroringControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ApMirroringController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mApMirroringDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/ApMirroringController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;

.field private mIsConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "ApMirroringController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mIsConnected:Z

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mApMirroringDevices:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mIsConnected:Z

    return v0
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/ApMirroringController$Callback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/ApMirroringController$Callback;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;->sendEmptyMessage(I)Z

    .line 61
    return-void
.end method

.method public getDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mApMirroringDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDrawable()I
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f0203c0

    return v0
.end method

.method public isApMirroringConnected()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mIsConnected:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v3, "ApMirroringController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    const-string v3, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplayStatus;

    .line 92
    .local v2, "status":Landroid/hardware/display/WifiDisplayStatus;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mIsConnected:Z

    .line 93
    .local v1, "connected":Z
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mIsConnected:Z

    .line 95
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mApMirroringDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 97
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 98
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mIsConnected:Z

    if-eq v1, v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;->sendEmptyMessage(I)Z

    .line 114
    .end local v1    # "connected":Z
    .end local v2    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_1
    :goto_0
    return-void

    .line 104
    .restart local v1    # "connected":Z
    .restart local v2    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 105
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mIsConnected:Z

    .line 106
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mApMirroringDevices:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mIsConnected:Z

    if-eq v1, v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
