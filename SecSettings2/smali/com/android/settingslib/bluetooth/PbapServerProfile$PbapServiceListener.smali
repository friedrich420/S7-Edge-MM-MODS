.class final Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/PbapServerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PbapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/PbapServerProfile;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/PbapServerProfile;Lcom/android/settingslib/bluetooth/PbapServerProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settingslib/bluetooth/PbapServerProfile;
    .param p2, "x1"    # Lcom/android/settingslib/bluetooth/PbapServerProfile$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PbapServerProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V
    .locals 2
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothPbap;

    .prologue
    .line 54
    # getter for: Lcom/android/settingslib/bluetooth/PbapServerProfile;->V:Z
    invoke-static {}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PbapServerProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    # setter for: Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;
    invoke-static {v0, p1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->access$102(Lcom/android/settingslib/bluetooth/PbapServerProfile;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 56
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    const/4 v1, 0x1

    # setter for: Lcom/android/settingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->access$202(Lcom/android/settingslib/bluetooth/PbapServerProfile;Z)Z

    .line 57
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 60
    # getter for: Lcom/android/settingslib/bluetooth/PbapServerProfile;->V:Z
    invoke-static {}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PbapServerProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->access$202(Lcom/android/settingslib/bluetooth/PbapServerProfile;Z)Z

    .line 62
    return-void
.end method
