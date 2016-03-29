.class public Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TapAndHoldDelayCustomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isInFront:Ljava/lang/Boolean;


# instance fields
.field private base_time:J

.field private mDescription:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSaveBttn:Landroid/widget/Button;

.field private mShownDialogId:I

.field private mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

.field private mTextViewPressTime:Landroid/widget/TextView;

.field private mTextViewSec:Landroid/widget/TextView;

.field private mcancelBttn:Landroid/widget/Button;

.field private press_time:J

.field private value_spacing:F

.field private value_textSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;-><init>(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;
    .param p1, "x1"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;
    .param p1, "x1"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->showDialog(I)V

    return-void
.end method

.method private final isMobileKeyboardCovered()Z
    .locals 6

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "bCovered":Z
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 210
    .local v1, "conf":Landroid/content/res/Configuration;
    :try_start_0
    const-class v4, Landroid/content/res/Configuration;

    const-string v5, "mobileKeyboardCovered"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 211
    .local v2, "isCovered":Ljava/lang/reflect/Field;
    const-class v4, Landroid/content/res/Configuration;

    const-string v5, "MOBILEKEYBOARD_COVERED_YES"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 213
    .local v3, "mobileCoveredOn":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v4, v5, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 220
    .end local v2    # "isCovered":Ljava/lang/reflect/Field;
    .end local v3    # "mobileCoveredOn":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v0

    .line 218
    :catch_0
    move-exception v4

    goto :goto_0

    .line 217
    :catch_1
    move-exception v4

    goto :goto_0

    .line 216
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private updateLongPressTimeOut(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    .line 240
    const-string v0, "TapAndHoldDelayCustomFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 293
    const/16 v0, 0x135

    return v0
.end method

.method public initDP()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 139
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 140
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 142
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0c00b2

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 143
    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_textSize:F

    .line 145
    const v3, 0x7f0c00b3

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 146
    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    .line 147
    .local v2, "value":F
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    .line 148
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;-><init>(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 104
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 272
    packed-switch p2, :pswitch_data_0

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 274
    :pswitch_0
    iget v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v0, v1, :cond_0

    .line 275
    iget-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->updateLongPressTimeOut(I)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 279
    :pswitch_1
    iget v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v0, v1, :cond_0

    .line 280
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 283
    :pswitch_2
    iget v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->updateLongPressTimeOut(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v8, -0x1

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 173
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 174
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 175
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->removeDialog(I)V

    .line 176
    const v4, 0x7f04020f

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 177
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0d04e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    iput-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    .line 178
    const v4, 0x7f0d04e4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    .line 179
    iget-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v4, 0x7f0d04e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    .line 181
    iget-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v4, 0x7f0d04de

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    .line 184
    iget-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 185
    const v4, 0x7f0d04df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    .line 186
    iget-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v4, 0x7f0d04e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    .line 188
    iget-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    .line 190
    iget-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    invoke-direct {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03d6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :goto_0
    iget-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->refresh()V

    .line 204
    return-void

    .line 197
    :cond_0
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    :cond_1
    const/4 v0, -0x1

    .line 201
    .local v0, "height":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 200
    .end local v0    # "height":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "dialogId"    # I

    .prologue
    const/4 v5, 0x0

    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 250
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 252
    .local v1, "mDialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 266
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 254
    :pswitch_0
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    .line 255
    const v3, 0x7f0e0a50

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0707

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0708

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    move-object v3, v1

    .line 264
    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->initDP()V

    .line 109
    const v2, 0x7f04020f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d04e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    iput-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    .line 111
    const v2, 0x7f0d04e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    .line 112
    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v2, 0x7f0d04e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    .line 114
    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v2, 0x7f0d04de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 118
    const v2, 0x7f0d04df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    .line 119
    const v2, 0x7f0d04e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    .line 120
    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    invoke-direct {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->setHasOptionsMenu(Z)V

    .line 135
    return-object v1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    :cond_1
    const/4 v0, -0x1

    .line 132
    .local v0, "height":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 131
    .end local v0    # "height":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c03d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    .line 226
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 227
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 307
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 300
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->showDialog(I)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getTouchTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->refresh()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkAndSaveState()V

    .line 167
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e092f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    .line 155
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 156
    return-void
.end method
