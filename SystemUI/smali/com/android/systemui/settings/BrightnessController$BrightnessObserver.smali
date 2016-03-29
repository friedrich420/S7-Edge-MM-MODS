.class Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_HBM_PMS_ENTER:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_PMS_MARKER_SCREEN:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 114
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 99
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 101
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 103
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 106
    const-string v0, "brightness_pms_marker_screen"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_PMS_MARKER_SCREEN:Landroid/net/Uri;

    .line 108
    const-string v0, "high_brightness_mode_pms_enter"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_HBM_PMS_ENTER:Landroid/net/Uri;

    .line 111
    const-string v0, "display_outdoor_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

    .line 115
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 120
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 124
    if-eqz p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v3, 0x1

    # setter for: Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z
    invoke-static {v2, v3}, Lcom/android/systemui/settings/BrightnessController;->access$002(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 127
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const-string v2, "StatusBar.BrightnessController"

    const-string v3, "BRIGHTNESS_MODE_URI changed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateMode()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$100(Lcom/android/systemui/settings/BrightnessController;)V

    .line 130
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)V

    .line 164
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$600(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 165
    .local v0, "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 168
    .end local v0    # "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # setter for: Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z
    invoke-static {v3, v4}, Lcom/android/systemui/settings/BrightnessController;->access$002(Lcom/android/systemui/settings/BrightnessController;Z)Z

    throw v2

    .line 131
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_PMS_MARKER_SCREEN:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    const-string v2, "StatusBar.BrightnessController"

    const-string v3, "BRIGHTNESS_PMS_MARKER_SCREEN changed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_1

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportPersonalAutoBrightnessControl:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    const-string v2, "StatusBar.BrightnessController"

    const-string v3, "BRIGHTNESS_URI changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_1

    .line 151
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_HBM_PMS_ENTER:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateHBMMode()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$400(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_1

    .line 156
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateOutdoorMode()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$500(Lcom/android/systemui/settings/BrightnessController;)V

    goto :goto_1

    .line 161
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateMode()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$100(Lcom/android/systemui/settings/BrightnessController;)V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # invokes: Lcom/android/systemui/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 168
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # setter for: Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z
    invoke-static {v2, v4}, Lcom/android/systemui/settings/BrightnessController;->access$002(Lcom/android/systemui/settings/BrightnessController;Z)Z

    goto/16 :goto_0
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 173
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$700(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 184
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportPersonalAutoBrightnessControl:Z

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_PMS_MARKER_SCREEN:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 188
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_HBM_PMS_ENTER:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$700(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 197
    :cond_1
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$700(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 202
    return-void
.end method
