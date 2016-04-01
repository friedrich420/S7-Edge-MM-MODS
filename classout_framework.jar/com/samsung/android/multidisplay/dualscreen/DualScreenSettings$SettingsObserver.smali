.class Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DualScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 91
    iput-object p1, p0, this$0:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    .line 92
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 93
    return-void
.end method


# virtual methods
.method observe()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 96
    const-string v1, "DualScreenSettings"

    const-string/jumbo v2, "observe()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, this$0:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    # getter for: Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->access$000(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "dual_screen_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    const-string v1, "desktop_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    const-string v1, "dual_screen_display_chooser_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 108
    const-string v1, "dual_screen_opposite_launch_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 113
    const-string v1, "dualscreen_prototype"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 116
    const-string/jumbo v1, "subhome_package_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 120
    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 124
    const-string v1, "launcher_fullview_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 128
    iget-object v1, p0, this$0:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    # invokes: Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->updateSettings()V
    invoke-static {v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->access$100(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;)V

    .line 129
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 133
    iget-object v0, p0, this$0:Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;

    # invokes: Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->updateSettings()V
    invoke-static {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->access$100(Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;)V

    .line 134
    return-void
.end method
