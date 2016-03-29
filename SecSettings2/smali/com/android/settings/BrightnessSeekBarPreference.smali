.class public Lcom/android/settings/BrightnessSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static BRIGHTNESS_PMS_MARKER_SCREEN:Ljava/lang/String;


# instance fields
.field private currentLevel:I

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mChangeType:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurBrightness:I

.field private mHBMText:Landroid/widget/TextView;

.field private mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

.field private mIsHBMOnOff:Z

.field mIsLessThanMaxValue:Z

.field private mMaxBrightness:I

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOverheatTextview:Landroid/widget/TextView;

.field private mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

.field private mPower:Landroid/os/IPowerManager;

.field private final mScreenBrightnessDefault:I

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mTracking:Z

.field private pmsBrightness:I

.field supportAutoBrightnessDetail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "brightness_pms_marker_screen"

    sput-object v0, Lcom/android/settings/BrightnessSeekBarPreference;->BRIGHTNESS_PMS_MARKER_SCREEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticAvailable:Z

    .line 80
    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I

    .line 82
    iput v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->currentLevel:I

    .line 84
    iput-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->supportAutoBrightnessDetail:Z

    .line 88
    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    .line 100
    iput-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    .line 106
    new-instance v3, Lcom/android/settings/BrightnessSeekBarPreference$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/BrightnessSeekBarPreference$1;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    .line 120
    new-instance v3, Lcom/android/settings/BrightnessSeekBarPreference$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/BrightnessSeekBarPreference$2;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 133
    new-instance v3, Lcom/android/settings/BrightnessSeekBarPreference$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/BrightnessSeekBarPreference$3;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 140
    new-instance v3, Lcom/android/settings/BrightnessSeekBarPreference$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/BrightnessSeekBarPreference$4;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    .line 152
    new-instance v3, Lcom/android/settings/BrightnessSeekBarPreference$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/BrightnessSeekBarPreference$5;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    .line 390
    new-instance v3, Lcom/android/settings/BrightnessSeekBarPreference$7;

    invoke-direct {v3, p0}, Lcom/android/settings/BrightnessSeekBarPreference$7;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;)V

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 167
    iput-object p1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    .line 168
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    .line 169
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 170
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    .line 171
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    .line 172
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessDefault:I

    .line 173
    const-string v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "min Brightness : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const-string v3, "BrightnessSeekBarPreference"

    const-string v4, "EnableAuto"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-boolean v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticAvailable:Z

    .line 179
    :cond_0
    const v3, 0x7f040191

    invoke-virtual {p0, v3}, Lcom/android/settings/BrightnessSeekBarPreference;->setLayoutResource(I)V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->isSupportAutoBrightnessDetail()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->supportAutoBrightnessDetail:Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "high_brightness_mode_pms_enter"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    .line 182
    return-void

    :cond_1
    move v1, v2

    .line 181
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/settings/BrightnessSeekBarPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessSeekBarPreference;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessSeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/BrightnessSeekBarPreference;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->pmsBrightness:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/BrightnessSeekBarPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessSeekBarPreference;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->pmsBrightness:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/settings/BrightnessSeekBarPreference;->BRIGHTNESS_PMS_MARKER_SCREEN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/BrightnessSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/BrightnessSeekBarPreference;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/BrightnessSeekBarPreference;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/BrightnessSeekBarPreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/BrightnessSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/BrightnessSeekBarPreference;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/BrightnessSeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessSeekBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/BrightnessSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/BrightnessSeekBarPreference;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mTracking:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/BrightnessSeekBarPreference;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/BrightnessSeekBarPreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/BrightnessSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/BrightnessSeekBarPreference;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v0

    return v0
.end method

.method private changeSeekbarColor(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->supportAutoBrightnessDetail:Z

    if-nez v0, :cond_1

    const-string v0, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 330
    if-eqz p1, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f02029b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "brightness":F
    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I

    if-gez v2, :cond_3

    .line 344
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    iget-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/BrightnessSeekBarPreference;->BRIGHTNESS_PMS_MARKER_SCREEN:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 357
    :goto_0
    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 359
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 361
    .local v1, "brightnessInt":I
    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-ge v1, v2, :cond_0

    .line 362
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    .line 364
    :cond_0
    return v1

    .line 348
    .end local v1    # "brightnessInt":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    goto :goto_0

    .line 354
    :cond_3
    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private isFolderClose()Z
    .locals 4

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, "ret":Z
    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 405
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 406
    const/4 v1, 0x1

    .line 408
    :cond_0
    return v1
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x1

    .line 422
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    :cond_0
    return v0
.end method

.method private setBrightness(I)V
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    const v4, 0x461c4000    # 10000.0f

    .line 460
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/BrightnessIconView;->calculateInnerCircleRatio(I)V

    .line 463
    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v0, v2, v3

    .line 465
    .local v0, "range":I
    mul-int v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int p1, v2, v3

    .line 466
    iget-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v2, p1}, Landroid/os/IPowerManager;->setTemporaryMarkerScreenBrightnessSettingOverride(I)V

    .line 483
    .end local v0    # "range":I
    :goto_0
    return-void

    .line 469
    .restart local v0    # "range":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v2, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    goto :goto_0

    .line 481
    .end local v0    # "range":I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 471
    :cond_1
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    int-to-float v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v2, v3

    .line 473
    .local v1, "valf":F
    const-string v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "valf : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v2, v1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    goto :goto_0

    .line 476
    .end local v1    # "valf":F
    :cond_2
    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v0, v2, v3

    .line 477
    .restart local v0    # "range":I
    mul-int v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int p1, v2, v3

    .line 478
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v2, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setBrightnessIcon(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    const v2, 0x7f0202eb

    const v1, 0x7f0202ea

    .line 294
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0, v2}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    .line 307
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    goto :goto_0

    .line 301
    :cond_1
    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p0, v2}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 493
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    return-void

    .line 493
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBrightness()V
    .locals 5

    .prologue
    .line 599
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    .line 600
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 601
    .local v0, "brightness":I
    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    .line 602
    .local v1, "range":I
    mul-int v3, v0, v1

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int v0, v3, v4

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 604
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 606
    .end local v0    # "brightness":I
    .end local v1    # "range":I
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method


# virtual methods
.method public brightnessNotifyChange()V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->notifyHierarchyChanged()V

    .line 162
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v8, 0x7f0d03fd

    const/16 v6, 0x2710

    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 190
    invoke-direct {p0, v5}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    .line 192
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    iget-boolean v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-direct {p0, v3}, Lcom/android/settings/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 197
    iput v7, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I

    .line 199
    const v3, 0x102044d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 201
    .local v2, "seekBar":Landroid/widget/SeekBar;
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v2, v3, :cond_2

    .line 253
    :goto_1
    return-void

    .end local v2    # "seekBar":Landroid/widget/SeekBar;
    :cond_1
    move v3, v5

    .line 190
    goto :goto_0

    .line 203
    .restart local v2    # "seekBar":Landroid/widget/SeekBar;
    :cond_2
    const v3, 0x7f0d03ff

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    .line 204
    const v3, 0x7f0d03fe

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    .line 206
    iput-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 207
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 208
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 209
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 210
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setFluidEnabled(Z)V

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 213
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 214
    .local v1, "autoLinearLayout":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    .end local v1    # "autoLinearLayout":Landroid/widget/LinearLayout;
    :goto_2
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/BrightnessIconView;

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    .line 234
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/BrightnessIconView;->setMax(I)V

    .line 235
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/BrightnessIconView;->calculateInnerCircleRatio(I)V

    .line 237
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 238
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 240
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings_preferences"

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 241
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "pref_siop_brightness"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    .line 243
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "pref_siop_brightness_change_type"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mChangeType:I

    .line 245
    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    invoke-virtual {p0, v3}, Lcom/android/settings/BrightnessSeekBarPreference;->returnMaxBrightness(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    .line 248
    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mChangeType:I

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/BrightnessSeekBarPreference;->setMaxBrightnessLimit(II)V

    .line 249
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p0, v3}, Lcom/android/settings/BrightnessSeekBarPreference;->setFlipCloseStatus(I)V

    .line 252
    :cond_3
    const-string v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onbindview Utils.isSupportPersonalAutoBrightness() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAutomaticMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsHBMOnOff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 216
    :cond_4
    const v3, 0x7f0d03d0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 217
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e1613

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "autoBrightness":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings/BrightnessSeekBarPreference$6;

    invoke-direct {v4, p0}, Lcom/android/settings/BrightnessSeekBarPreference$6;-><init>(Lcom/android/settings/BrightnessSeekBarPreference;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_2
.end method

.method public onBrightnessChanged()V
    .locals 2

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightness()I

    move-result v0

    .line 431
    .local v0, "brightnessValue":I
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 433
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/BrightnessIconView;->calculateInnerCircleRatio(I)V

    .line 437
    .end local v0    # "brightnessValue":I
    :cond_0
    return-void
.end method

.method public onBrightnessModeChanged()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 446
    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 447
    .local v0, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 455
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 457
    :cond_2
    return-void

    .end local v0    # "checked":Z
    :cond_3
    move v0, v1

    .line 446
    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 310
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    if-eqz p2, :cond_2

    .line 319
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessSeekBarPreference;->setMode(I)V

    .line 321
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->onBrightnessChanged()V

    .line 324
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/BrightnessSeekBarPreference;->changeSeekbarColor(Z)V

    .line 325
    invoke-direct {p0, p2}, Lcom/android/settings/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    .line 326
    return-void

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/BrightnessSeekBarPreference;->BRIGHTNESS_PMS_MARKER_SCREEN:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->pmsBrightness:I

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->pmsBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 319
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isFocused"    # Z

    .prologue
    .line 565
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 568
    .local v0, "brightness":I
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/BrightnessIconView;->calculateInnerCircleRatio(I)V

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->updateBrightness()V

    .line 574
    const-string v1, "BrightnessSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on stop tracking touch brightness DB input:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v0    # "brightness":I
    :cond_1
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 580
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 581
    packed-switch p2, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 584
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 585
    .local v0, "pm":Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    const-string v1, "BrightnessSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_DPAD_LEFT mCheckBox.isChecked()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-boolean v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v1, :cond_1

    .line 588
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    .line 590
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->updateBrightness()V

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 267
    iget v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-ge v0, p2, :cond_1

    iget v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mChangeType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    .line 279
    :cond_0
    :goto_0
    const-string v0, "BrightnessSeekBarPreference"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-nez p3, :cond_3

    .line 287
    :goto_1
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    if-nez v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    goto :goto_0

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 286
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/BrightnessSeekBarPreference;->setBrightness(I)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->supportAutoBrightnessDetail:Z

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 546
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 548
    .local v0, "brightness":I
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    if-eqz v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/android/settings/widget/BrightnessIconView;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/BrightnessIconView;->calculateInnerCircleRatio(I)V

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->updateBrightness()V

    .line 554
    const-string v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onstoptracking isSupportPersonalAutoBrightness() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAutomaticMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsHBMOnOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", brightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 557
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    iget-boolean v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_1

    .line 559
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    .line 561
    :cond_1
    return-void
.end method

.method public registerBrightnessObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 513
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    sget-object v1, Lcom/android/settings/BrightnessSeekBarPreference;->BRIGHTNESS_PMS_MARKER_SCREEN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 515
    const-string v1, "high_brightness_mode_pms_enter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 517
    :cond_0
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 518
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 519
    const-string v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 520
    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 256
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 259
    .end local p1    # "max":I
    :goto_0
    return p1

    .restart local p1    # "max":I
    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setFlipCloseStatus(I)V
    .locals 2
    .param p1, "hardKeyboardState"    # I

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    packed-switch p1, :pswitch_data_0

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 373
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 379
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMaxBrightnessLimit(II)V
    .locals 5
    .param p1, "maxbrightness"    # I
    .param p2, "change"    # I

    .prologue
    const v4, 0x461c4000    # 10000.0f

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSeekBarPreference;->returnMaxBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    .line 499
    iget v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    int-to-float v0, v1

    .line 500
    .local v0, "maxBrightnessFloat":F
    iput p2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mChangeType:I

    .line 501
    iget v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 502
    mul-float v1, v0, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mMaxBrightness:I

    .line 504
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    goto :goto_0
.end method

.method public unRregisterBrightnessObserver()V
    .locals 2

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 524
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 526
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 529
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 530
    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 531
    return-void
.end method
