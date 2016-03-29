.class Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;
.super Landroid/os/AsyncTask;
.source "KeyguardEffectViewWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->updateWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 220
    const/4 v5, 0x0

    .line 230
    .local v5, "wallpaper":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 231
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;

    move-result-object v6

    iget-object v9, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$100(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)I

    move-result v9

    invoke-static {v6, v9}, Lcom/android/keyguard/effect/Utils;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 234
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mShouldEnableScreenRotation:Z
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$200(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 235
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v6, v5}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$300(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    .local v0, "croppedBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    if-eq v0, v5, :cond_1

    .line 237
    if-eqz v5, :cond_1

    .line 238
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    move-object v5, v0

    .line 244
    .end local v0    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v6, 0x2

    new-array v2, v6, [Z

    fill-array-data v2, :array_0

    .line 245
    .local v2, "newVal":[Z
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v3

    .line 246
    .local v3, "oldValStatusBar":Z
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v4

    .line 247
    .local v4, "oldValWallpaper":Z
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mStatusBarHeight:I
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$400(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v6, v9

    iget-object v9, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCroppedScale:F
    invoke-static {v9}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$500(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)F

    move-result v9

    div-float/2addr v6, v9

    float-to-int v1, v6

    .line 248
    .local v1, "croppedStatusbarH":I
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isPreloadedLockscreenWallpaper()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->supportWhiteDefaultWallpaper()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 250
    :cond_2
    invoke-static {v5, v1}, Lcom/android/keyguard/effect/Utils;->checkWhiteLockscreenWallpaper(Landroid/graphics/Bitmap;I)[Z

    move-result-object v2

    .line 252
    :cond_3
    aget-boolean v6, v2, v8

    if-eq v3, v6, :cond_4

    .line 253
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "white_lockscreen_statusbar"

    aget-boolean v6, v2, v8

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v9

    aget-boolean v6, v2, v8

    if-eqz v6, :cond_7

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->setWhiteKeyguardStatusBar(I)V

    .line 256
    :cond_4
    aget-boolean v6, v2, v7

    if-eq v4, v6, :cond_5

    .line 257
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "white_lockscreen_wallpaper"

    aget-boolean v6, v2, v7

    if-eqz v6, :cond_8

    move v6, v7

    :goto_2
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v6

    aget-boolean v9, v2, v7

    if-eqz v9, :cond_9

    :goto_3
    invoke-virtual {v6, v7}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->setWhiteKeyguardWallpaper(I)V

    .line 261
    :cond_5
    return-object v5

    :cond_6
    move v6, v8

    .line 253
    goto :goto_0

    :cond_7
    move v6, v8

    .line 254
    goto :goto_1

    :cond_8
    move v6, v8

    .line 257
    goto :goto_2

    :cond_9
    move v7, v8

    .line 258
    goto :goto_3

    .line 244
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    const/16 v1, 0xc

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentAlpha:I
    invoke-static {v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$602(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;I)I

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$800(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$702(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 278
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$802(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->init()Z
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$702(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    .line 287
    const-string v0, "KeyguardEffectViewWallpaper"

    const-string v1, "updateWallpaper() DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 272
    :cond_2
    const-string v0, "KeyguardEffectViewWallpaper"

    const-string v1, "switch to new wallpaper immediately, not in interactive mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$702(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 217
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
