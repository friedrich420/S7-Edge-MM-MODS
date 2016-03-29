.class public Lcom/android/keyguard/shortcut/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;,
        Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;
    }
.end annotation


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final mSamsungLiveIconPackages:[Ljava/lang/String;


# instance fields
.field private mCR:Landroid/content/ContentResolver;

.field mCallback:Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultCameraPackageName:Ljava/lang/String;

.field private mDefaultSecureCameraPackageName:Ljava/lang/String;

.field private mIconScaleRatio:F

.field private final mIconSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPM:Landroid/content/pm/PackageManager;

.field mSb:Ljava/lang/StringBuilder;

.field private mShortcutSettingObserver:Landroid/database/ContentObserver;

.field private mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.clockpackage"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.game.gamehome"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.widgetapp.SPlannerAppWidget"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/keyguard/shortcut/ShortcutManager;->mSamsungLiveIconPackages:[Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/shortcut/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/shortcut/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "callback"    # Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-array v0, v2, [Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    iput-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    .line 92
    iput-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mDefaultSecureCameraPackageName:Ljava/lang/String;

    .line 93
    iput-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mDefaultCameraPackageName:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/android/keyguard/shortcut/ShortcutManager$1;

    invoke-direct {v0, p0, v4}, Lcom/android/keyguard/shortcut/ShortcutManager$1;-><init>(Lcom/android/keyguard/shortcut/ShortcutManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcutSettingObserver:Landroid/database/ContentObserver;

    .line 116
    new-instance v0, Lcom/android/keyguard/shortcut/ShortcutManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/shortcut/ShortcutManager$2;-><init>(Lcom/android/keyguard/shortcut/ShortcutManager;)V

    iput-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    .line 163
    iput-object p1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 165
    iput-object p3, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mCallback:Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mCR:Landroid/content/ContentResolver;

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$integer;->shortcut_icon_utilization_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mIconScaleRatio:F

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->shortuct_icon_default_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mIconSize:I

    .line 172
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    new-instance v1, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    invoke-direct {v1, p0, v4}, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;-><init>(Lcom/android/keyguard/shortcut/ShortcutManager;Lcom/android/keyguard/shortcut/ShortcutManager$1;)V

    aput-object v1, v0, v6

    .line 172
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mCR:Landroid/content/ContentResolver;

    const-string v1, "lock_application_shortcut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcutSettingObserver:Landroid/database/ContentObserver;

    const/4 v7, -0x2

    invoke-virtual {v0, v1, v2, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 179
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcuts()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/shortcut/ShortcutManager;)[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/shortcut/ShortcutManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/shortcut/ShortcutManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/shortcut/ShortcutManager;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager;->resetShortcut(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/shortcut/ShortcutManager;ILandroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/shortcut/ShortcutManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/ComponentName;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/shortcut/ShortcutManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcutSettingObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/shortcut/ShortcutManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mCR:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/shortcut/ShortcutManager;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/shortcut/ShortcutManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/shortcut/ShortcutManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/shortcut/ShortcutManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/shortcut/ShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/shortcut/ShortcutManager;
    .param p1, "x1"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 276
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    :goto_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2

    .line 278
    .restart local p1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 280
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 281
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private enc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 205
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 206
    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 434
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 435
    .local v2, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 437
    .local v0, "canSkipBouncer":Z
    iget-object v3, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    .line 438
    .local v1, "secure":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    sget-object v3, Lcom/android/keyguard/shortcut/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/android/keyguard/shortcut/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private getSettingValues()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 216
    iget-object v7, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mCR:Landroid/content/ContentResolver;

    const-string v8, "lock_application_shortcut"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 220
    .local v3, "ret":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 222
    const-string v7, "ShortcutManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSettingValues("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v5}, Lcom/android/keyguard/shortcut/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "values":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 226
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v7, v7, v11

    iput-object v10, v7, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 227
    iget-object v7, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v7, v7, v12

    iput-object v10, v7, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    move v4, v3

    .line 260
    .end local v3    # "ret":Z
    .end local v6    # "values":[Ljava/lang/String;
    .local v4, "ret":I
    :goto_0
    return v4

    .line 232
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    .restart local v6    # "values":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_6

    const/4 v7, 0x4

    if-ge v1, v7, :cond_6

    .line 233
    const-string v7, "1"

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 234
    add-int/lit8 v7, v1, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 237
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 238
    iget-object v7, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    add-int/lit8 v8, v1, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 239
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 240
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 244
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    div-int/lit8 v8, v1, 0x2

    aget-object v7, v7, v8

    iput-object v0, v7, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 245
    if-eqz v0, :cond_3

    .line 246
    const/4 v3, 0x1

    .line 232
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 250
    :cond_4
    const-string v7, "ShortcutManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v7, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    div-int/lit8 v8, v1, 0x2

    aget-object v7, v7, v8

    iput-object v10, v7, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    goto :goto_2

    .line 256
    .end local v1    # "i":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v7, v7, v11

    iput-object v10, v7, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 257
    iget-object v7, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v7, v7, v12

    iput-object v10, v7, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    :cond_6
    move v4, v3

    .line 260
    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method private getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 288
    iget-object v6, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mCR:Landroid/content/ContentResolver;

    const-string v7, "tap_to_icon"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v2, v4

    .line 290
    .local v2, "squicleMode":Z
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {p1, v6, v4, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 294
    iget-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 296
    :cond_1
    if-nez v0, :cond_2

    .line 297
    iget-object v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    :cond_2
    iget v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mIconSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mIconScaleRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 302
    .local v3, "w":I
    iget v4, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mIconSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mIconScaleRatio:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 304
    .local v1, "h":I
    invoke-direct {p0, v0, v3, v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    return-object v4

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "h":I
    .end local v2    # "squicleMode":Z
    .end local v3    # "w":I
    :cond_3
    move v2, v5

    .line 288
    goto :goto_0
.end method

.method private isSamsungCameraPackage(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 408
    if-nez p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mDefaultSecureCameraPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mDefaultSecureCameraPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mDefaultCameraPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mDefaultCameraPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSamsungPhonePackage(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 422
    if-nez p1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    const-string v1, "com.android.contacts"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.dialer.DialtactsActivity"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetShortcut(I)V
    .locals 3
    .param p1, "th"    # I

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->enabled:Z

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iput-object v2, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iput-object v2, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mCallback:Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;->updateShortcutView(I)V

    .line 270
    return-void
.end method

.method private updateShortcut(ILandroid/content/ComponentName;)V
    .locals 3
    .param p1, "th"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 308
    new-instance v0, Lcom/android/keyguard/shortcut/ShortcutManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/shortcut/ShortcutManager$3;-><init>(Lcom/android/keyguard/shortcut/ShortcutManager;ILandroid/content/ComponentName;)V

    .line 358
    .local v0, "updateTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Landroid/content/ComponentName;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 359
    return-void
.end method


# virtual methods
.method public getApplicationLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 528
    if-gez p1, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    const-string v0, "Shortcut"

    .line 534
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 4
    .param p1, "th"    # I

    .prologue
    .line 442
    if-gez p1, :cond_0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    .line 443
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    const-string v1, "ShortcutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "th = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is camera package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0}, Lcom/android/keyguard/shortcut/ShortcutManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .line 463
    :goto_0
    return-object v0

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 455
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_3

    .line 456
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getShortcutContentDescription(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "th"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_tts_shortcut_app:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 467
    if-gez p1, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasShortcutForLeft()Z
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->enabled:Z

    return v0
.end method

.method public hasShortcutForRight()Z
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->enabled:Z

    return v0
.end method

.method public isLeftShortcutForCamera()Z
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isLeftShortcutForLiveIcon()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isShortcutForLiveIcion(I)Z

    move-result v0

    return v0
.end method

.method public isLeftShortcutForPhone()Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isRightShortcutForCamera()Z
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isRightShortcutForLiveIcon()Z
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isShortcutForLiveIcion(I)Z

    move-result v0

    return v0
.end method

.method public isRightShortcutForPhone()Z
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isShortcutForLiveIcion(I)Z
    .locals 7
    .param p1, "th"    # I

    .prologue
    const/4 v5, 0x0

    .line 507
    iget-object v6, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-nez v6, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v5

    .line 510
    :cond_1
    iget-object v6, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "cn":Ljava/lang/String;
    sget-object v0, Lcom/android/keyguard/shortcut/ShortcutManager;->mSamsungLiveIconPackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 512
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 513
    const/4 v5, 0x1

    goto :goto_0

    .line 511
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public updateShortcuts()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 362
    invoke-direct {p0}, Lcom/android/keyguard/shortcut/ShortcutManager;->getSettingValues()Z

    .line 363
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    .line 369
    const-string v0, "com.sec.android.app.camera"

    iput-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mDefaultSecureCameraPackageName:Ljava/lang/String;

    .line 370
    const-string v0, "com.sec.android.app.camera"

    iput-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mDefaultCameraPackageName:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public updateShortcutsIcon(I)V
    .locals 4
    .param p1, "th"    # I

    .prologue
    .line 545
    new-instance v0, Lcom/android/keyguard/shortcut/ShortcutManager$4;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager$4;-><init>(Lcom/android/keyguard/shortcut/ShortcutManager;I)V

    .line 572
    .local v0, "iconUpdateTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/keyguard/shortcut/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 573
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 574
    :cond_0
    return-void
.end method
