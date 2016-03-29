.class Lcom/android/settings/deviceinfo/SoftwareInfoSettings$2;
.super Ljava/lang/Object;
.source "SoftwareInfoSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->initCCMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SoftwareInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SoftwareInfoSettings;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 948
    # getter for: Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->mIsSMServiceBound:Z
    invoke-static {}, Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 949
    const-string v2, "SoftwareInfoSettings"

    const-string v3, "SecurityManagerService : SM Service run"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v1, 0x0

    .line 952
    .local v1, "res":I
    :try_start_0
    # getter for: Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;
    invoke-static {}, Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->access$100()Lcom/sec/android/service/sm/aidl/ISecurityManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/service/sm/aidl/ISecurityManager;->initCCMode()I

    move-result v1

    .line 953
    if-eqz v1, :cond_0

    .line 954
    const-string v2, "SoftwareInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityManagerService : init err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/android/settings/deviceinfo/SoftwareInfoSettings;

    # invokes: Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->showSecuritySWVersion()V
    invoke-static {v2}, Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->access$200(Lcom/android/settings/deviceinfo/SoftwareInfoSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    .end local v1    # "res":I
    :goto_0
    return-void

    .line 957
    .restart local v1    # "res":I
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SoftwareInfoSettings"

    const-string v3, "SecurityManagerService : SM Service Exception"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 962
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "res":I
    :cond_1
    const-string v2, "SoftwareInfoSettings"

    const-string v3, "SecurityManagerService : SM Service is not connected"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
