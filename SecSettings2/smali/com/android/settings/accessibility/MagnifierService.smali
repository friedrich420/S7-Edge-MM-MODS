.class public Lcom/android/settings/accessibility/MagnifierService;
.super Landroid/app/Service;
.source "MagnifierService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/MagnifierService$DetectBinder;,
        Lcom/android/settings/accessibility/MagnifierService$MyReceiver;
    }
.end annotation


# instance fields
.field private ViewCoverType:I

.field private isScoverClosed:Z

.field mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

.field mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field mDetectBinder:Lcom/android/settings/accessibility/MagnifierService$DetectBinder;

.field mHoverScaleObserver:Landroid/database/ContentObserver;

.field mMagnificationWindowSizeObserver:Landroid/database/ContentObserver;

.field mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

.field private mReceiver:Lcom/android/settings/accessibility/MagnifierService$MyReceiver;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    iput-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/android/settings/accessibility/MagnifierService$DetectBinder;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/MagnifierService$DetectBinder;-><init>(Lcom/android/settings/accessibility/MagnifierService;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mDetectBinder:Lcom/android/settings/accessibility/MagnifierService$DetectBinder;

    .line 53
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierService;->ViewCoverType:I

    .line 54
    new-instance v0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;-><init>(Lcom/android/settings/accessibility/MagnifierService;Lcom/android/settings/accessibility/MagnifierService$1;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mReceiver:Lcom/android/settings/accessibility/MagnifierService$MyReceiver;

    .line 55
    iput-boolean v1, p0, Lcom/android/settings/accessibility/MagnifierService;->isScoverClosed:Z

    .line 57
    new-instance v0, Lcom/android/settings/accessibility/MagnifierService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/MagnifierService$1;-><init>(Lcom/android/settings/accessibility/MagnifierService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    .line 73
    new-instance v0, Lcom/android/settings/accessibility/MagnifierService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/MagnifierService$2;-><init>(Lcom/android/settings/accessibility/MagnifierService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mHoverScaleObserver:Landroid/database/ContentObserver;

    .line 81
    new-instance v0, Lcom/android/settings/accessibility/MagnifierService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/MagnifierService$3;-><init>(Lcom/android/settings/accessibility/MagnifierService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnificationWindowSizeObserver:Landroid/database/ContentObserver;

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/MagnifierService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierService;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierService;->isScoverClosed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/accessibility/MagnifierService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierService;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnifierService;->isScoverClosed:Z

    return p1
.end method


# virtual methods
.method public getTypeOfCover()I
    .locals 4

    .prologue
    .line 241
    const/4 v2, 0x2

    .line 242
    .local v2, "type":I
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 243
    .local v0, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    .line 245
    .local v1, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    .line 248
    .end local v1    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    return v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mDetectBinder:Lcom/android/settings/accessibility/MagnifierService$DetectBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_magnifier"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeView()V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierService;->isScoverClosed:Z

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->configurationChange()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 136
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    .line 138
    new-instance v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    .line 139
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_magnifier"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService;->mHoverScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_magnifier_size"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnificationWindowSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierService;->getTypeOfCover()I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierService;->ViewCoverType:I

    .line 152
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 154
    new-instance v1, Lcom/android/settings/accessibility/MagnifierService$4;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/MagnifierService$4;-><init>(Lcom/android/settings/accessibility/MagnifierService;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 165
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeView()V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mHoverScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnificationWindowSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 190
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mReceiver:Lcom/android/settings/accessibility/MagnifierService$MyReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 195
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_button_onoff"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 203
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->showView()V

    .line 171
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.app.accesscontrol.PAUSE_MAGNIFIER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mReceiver:Lcom/android/settings/accessibility/MagnifierService$MyReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    const/4 v1, 0x1

    return v1
.end method

.method public onUpdate()V
    .locals 5

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "magSize":I
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_magnifier_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 226
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_value"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 227
    .local v1, "scaleSize":I
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->update(II)V

    .line 228
    return-void
.end method
