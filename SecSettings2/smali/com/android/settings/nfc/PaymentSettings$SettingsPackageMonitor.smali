.class Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/PaymentSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/PaymentSettings;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/PaymentSettings;Lcom/android/settings/nfc/PaymentSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/nfc/PaymentSettings;
    .param p2, "x1"    # Lcom/android/settings/nfc/PaymentSettings$1;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/nfc/PaymentSettings;->access$200(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 345
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/nfc/PaymentSettings;->access$200(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/nfc/PaymentSettings;->access$200(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 355
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/nfc/PaymentSettings;->access$200(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 360
    return-void
.end method
