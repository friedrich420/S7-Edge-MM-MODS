.class final Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 1

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    .line 670
    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1400(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 666
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 667
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 671
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 684
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1200(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->updateZenModeConfig(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1800(Lcom/android/settings/notification/ZenModeDNDSettings;Z)V

    .line 691
    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 674
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1500(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 675
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1600(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 676
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1700(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 680
    return-void
.end method
