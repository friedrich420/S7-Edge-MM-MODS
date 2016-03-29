.class final Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final SERVICE_URI:Landroid/net/Uri;

.field private final ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    .line 872
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 864
    const-string v0, "volume_controller_service_component"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    .line 866
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 868
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    .line 873
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 876
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$2100(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 877
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$2100(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 878
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$2100(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 879
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 880
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 890
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$2100(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volume_controller_service_component"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 892
    .local v2, "setting":Ljava/lang/String;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mComponent:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$2200(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mComponent:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$2200(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 894
    .local v1, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$2300(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 909
    .end local v1    # "enabled":Z
    .end local v2    # "setting":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 892
    .restart local v2    # "setting":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 895
    .restart local v1    # "enabled":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 896
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogController;->register()V

    .line 898
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # setter for: Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z
    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialogController;->access$2302(Lcom/android/systemui/volume/VolumeDialogController;Z)Z

    .line 900
    .end local v1    # "enabled":Z
    .end local v2    # "setting":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 901
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeW()Z
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$2400(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v0

    .line 903
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 904
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeConfigW()Z
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$2500(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v0

    .line 906
    :cond_6
    if-eqz v0, :cond_0

    .line 907
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogController;->access$2600(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    goto :goto_1
.end method
