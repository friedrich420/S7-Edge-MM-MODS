.class Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;
.super Lcom/android/server/enterprise/BlackWhiteListPolicy;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothDevicePolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 1617
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 1618
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1619
    return-void
.end method


# virtual methods
.method public isPolicyActive(I)Z
    .registers 6
    .param p1, "adminUid"    # I

    .prologue
    .line 1622
    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    # getter for: Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->access$400(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    const-string v2, "BLUETOOTH"

    const-string/jumbo v3, "devicePolicyEnabled"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result v1

    .line 1627
    :goto_f
    return v1

    .line 1624
    :catch_10
    move-exception v0

    .line 1625
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const/4 v1, 0x0

    goto :goto_f
.end method
