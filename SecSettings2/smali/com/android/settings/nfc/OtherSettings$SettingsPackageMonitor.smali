.class Lcom/android/settings/nfc/OtherSettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/OtherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/OtherSettings;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/OtherSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/OtherSettings;Lcom/android/settings/nfc/OtherSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/nfc/OtherSettings;
    .param p2, "x1"    # Lcom/android/settings/nfc/OtherSettings$1;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/OtherSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/OtherSettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/OtherSettings;

    # getter for: Lcom/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/nfc/OtherSettings;->access$100(Lcom/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/OtherSettings;

    # getter for: Lcom/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/nfc/OtherSettings;->access$100(Lcom/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/OtherSettings;

    # getter for: Lcom/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/nfc/OtherSettings;->access$100(Lcom/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 272
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/OtherSettings;

    # getter for: Lcom/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/nfc/OtherSettings;->access$100(Lcom/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    return-void
.end method
