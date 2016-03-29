.class public Lcom/android/systemui/qs/tiles/LocationTile;
.super Lcom/android/systemui/qs/QSTile;
.source "LocationTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CURRENT_MODE_KEY:Ljava/lang/String; = "CURRENT_MODE"

.field private static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings.location.MODE_CHANGING"

.field private static final NEW_MODE_KEY:Ljava/lang/String; = "NEW_MODE"

.field private static final TAG:Ljava/lang/String;

.field private static final VZW_GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "com.nim.vznavigator.app2app"

.field private static final VZW_GPS_INTENT_EXTRA:Ljava/lang/String; = "context"

.field private static final VZW_GPS_INTENT_EXTRA_VALUE:Ljava/lang/String; = "vznavigator:app2app?version=2.0&credential=0211&commands="

.field private static final VZW_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCurrGpsActivated:Z

.field private final mLocationModeSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SecureSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z

    .line 88
    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/LocationTile$1;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "location_providers_allowed"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/LocationTile$2;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 125
    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "location_mode"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/LocationTile$3;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mLocationModeSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->getLocationMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsActivated(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z

    .line 136
    sget-object v1, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init  :mCurrGpsActivated  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " state  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/LocationTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->setLocationMode(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/LocationTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->getLocationMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/LocationTile;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsActivated(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getLocationMode()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mLocationModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    return v0
.end method

.method private getLocationTileState()I
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x3

    .line 299
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private isBlockedByEdmPolicy()Z
    .locals 5

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/LocationPolicy"

    const-string v3, "isLocationProviderBlocked"

    sget-object v4, Lcom/android/systemui/qs/tiles/LocationTile;->selectionArgsFalse:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/LocationPolicy"

    const-string v3, "isGPSStateChangeAllowed"

    sget-object v4, Lcom/android/systemui/qs/tiles/LocationTile;->selectionArgsNull:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    :cond_0
    const/4 v0, 0x1

    .line 257
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlockedByEdmPolicy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    return v0

    .line 255
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isGpsActivated(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "result":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v2, :cond_2

    .line 310
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    .line 312
    :cond_0
    const/4 v0, 0x1

    .line 316
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGpsActivated : ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currMode  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v0

    .line 314
    :cond_2
    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isUserLocationRestricted()Z
    .locals 6

    .prologue
    .line 359
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 360
    .local v0, "currentUserId":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 361
    .local v3, "um":Landroid/os/UserManager;
    const/4 v2, 0x0

    .line 363
    .local v2, "ret":Z
    :try_start_0
    const-string v4, "no_share_location"

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 368
    :goto_0
    return v2

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    const-string v5, "Exception inside isUserLocationRestricted()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLocationMode(I)V
    .locals 5
    .param p1, "newMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 325
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mLocationModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V

    .line 356
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mLocationModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    .line 331
    sget-object v2, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLocationMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseLocationForVZW:Z

    if-eqz v2, :cond_2

    .line 333
    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_3

    .line 335
    .local v1, "isGpsEnabled":Z
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vzw_lbs"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isGpsEnabled":Z
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopupForUSC:Z

    if-eqz v2, :cond_4

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 333
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 353
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showLocationDialogForDCM(IIII)V
    .locals 3
    .param p1, "title"    # I
    .param p2, "msg"    # I
    .param p3, "button1"    # I
    .param p4, "button2"    # I

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    :cond_0
    sget-object v1, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    const-string v2, "showLocationDialogForDCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 421
    new-instance v1, Lcom/android/systemui/qs/tiles/LocationTile$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/LocationTile$7;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 428
    new-instance v1, Lcom/android/systemui/qs/tiles/LocationTile$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/LocationTile$8;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 436
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 438
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/LocationTile$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/LocationTile$9;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 444
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 445
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 447
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method

.method private showVzwLocationConsentDialog()V
    .locals 5

    .prologue
    .line 375
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, "consentText":Ljava/lang/String;
    sget-object v2, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    const-string v3, "showVzwLocationConsentDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v2, "ro.build.characteristics"

    const-string v3, "phone"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 380
    .local v1, "isTablet":Z
    if-eqz v1, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0405

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0403

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0406

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/LocationTile$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/LocationTile$6;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0407

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/LocationTile$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/LocationTile$5;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/LocationTile$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/LocationTile$4;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 409
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 411
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 412
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 413
    return-void

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0404

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionTypeOnCover()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 484
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v1, :cond_0

    .line 485
    const/4 v0, 0x2

    .line 487
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 304
    const/16 v0, 0x7a

    return v0
.end method

.method public getUnlockTypeInSecure()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method protected handleClick()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 175
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    move v2, v6

    .line 176
    .local v2, "state":Z
    :goto_0
    sget-object v8, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleClick : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    sget-object v5, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    const-string v8, "handleClick/requireCredentialEntry"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 183
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    :cond_1
    :goto_1
    return-void

    .end local v2    # "state":Z
    :cond_2
    move v2, v7

    .line 175
    goto :goto_0

    .line 185
    .restart local v2    # "state":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isBlockedByEdmPolicy()Z

    move-result v5

    if-nez v5, :cond_1

    .line 186
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->getMetricsCategory()I

    move-result v9

    if-nez v2, :cond_4

    move v5, v6

    :goto_2
    invoke-static {v8, v9, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 192
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v5, v10, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 197
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    .line 198
    sget-object v5, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    const-string v6, "onClick: DisabledByUserRestrictions..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v5, v7

    .line 186
    goto :goto_2

    .line 202
    :cond_5
    const/4 v1, 0x0

    .line 203
    .local v1, "newMode":I
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->getLocationMode()I

    move-result v0

    .line 204
    .local v0, "currMode":I
    if-eqz v2, :cond_9

    .line 205
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowLocationConsentPopupForDCM:Z

    if-eqz v5, :cond_6

    .line 206
    const v5, 0x7f0d03ff

    const v6, 0x7f0d0400

    const v7, 0x7f0d0401

    const v8, 0x7f0d0402

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/systemui/qs/tiles/LocationTile;->showLocationDialogForDCM(IIII)V

    goto :goto_1

    .line 210
    :cond_6
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseLocationForVZW:Z

    if-eqz v5, :cond_7

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->showVzwLocationConsentDialog()V

    goto :goto_1

    .line 214
    :cond_7
    const/4 v1, 0x3

    .line 237
    :cond_8
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->setLocationMode(I)V

    goto :goto_1

    .line 216
    :cond_9
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v5, :cond_b

    .line 217
    if-ne v0, v10, :cond_a

    .line 218
    const/4 v1, 0x2

    .line 226
    :goto_4
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mTurnOffWifiCall:Z

    if-eqz v5, :cond_8

    .line 227
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_call_enable"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 228
    .local v4, "wifiCallState":I
    if-ne v4, v6, :cond_8

    .line 229
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_call_enable"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    new-instance v3, Landroid/content/Intent;

    const-string v5, "action_wifi_call_enable_broadcast"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, "wifiCall":Landroid/content/Intent;
    const-string v5, "wifi_call_enable"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0408

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 220
    .end local v3    # "wifiCall":Landroid/content/Intent;
    .end local v4    # "wifiCallState":I
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 223
    :cond_b
    const/4 v1, 0x0

    goto :goto_4
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 242
    sget-object v1, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isBlockedByEdmPolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 283
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 285
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 286
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 287
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 291
    :goto_1
    const v1, 0x7f02036e

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 292
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 293
    return-void

    .line 283
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->getLocationTileState()I

    move-result v0

    goto :goto_0

    .line 290
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/LocationTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    sget-object v1, Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListening  :listening  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mLocationModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 167
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mLocationModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 495
    return-void
.end method
