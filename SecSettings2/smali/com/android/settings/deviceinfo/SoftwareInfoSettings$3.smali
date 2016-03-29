.class Lcom/android/settings/deviceinfo/SoftwareInfoSettings$3;
.super Ljava/lang/Object;
.source "SoftwareInfoSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/SoftwareInfoSettings;
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
    .line 980
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SoftwareInfoSettings$3;->this$0:Lcom/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 983
    :try_start_0
    invoke-static {p2}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/sm/aidl/ISecurityManager;

    move-result-object v1

    # setter for: Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->access$102(Lcom/sec/android/service/sm/aidl/ISecurityManager;)Lcom/sec/android/service/sm/aidl/ISecurityManager;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :goto_0
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 991
    const/4 v1, 0x0

    :try_start_0
    # setter for: Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/SoftwareInfoSettings;->access$102(Lcom/sec/android/service/sm/aidl/ISecurityManager;)Lcom/sec/android/service/sm/aidl/ISecurityManager;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0
.end method
