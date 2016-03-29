.class public Lcom/android/settings/fingerprint/FingerprintSetupWizard;
.super Landroid/app/Activity;
.source "FingerprintSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final isEnableSurveyMode:Z

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# instance fields
.field private btnArea:Landroid/view/View;

.field private button_transY:F

.field contentArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private descriptionArea:Landroid/view/View;

.field private descriptionText:Landroid/view/View;

.field private fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

.field private fingerprintPhoneImage:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private imageArea:Landroid/view/View;

.field private image_transY:F

.field private laterBtn:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mWasSecureBefore:Z

.field private registerBtn:Landroid/view/View;

.field private titleArea:Landroid/view/View;

.field private titleText:Landroid/view/View;

.field private transX:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isEnableSurveyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->contentArray:Ljava/util/ArrayList;

    .line 76
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->transX:F

    .line 77
    const/high16 v0, 0x44850000    # 1064.0f

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->image_transY:F

    .line 78
    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->button_transY:F

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mWasSecureBefore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Lcom/android/settings/fingerprint/VI/FingerprintIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 389
    const-string v2, "FpstFingerprintSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertSurveyLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isEnableSurveyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-boolean v2, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isEnableSurveyMode:Z

    if-eqz v2, :cond_0

    .line 392
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 393
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 399
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private isVIEnabled()Z
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 288
    const-string v1, "FpstFingerprintSetupWizard"

    const-string v2, "resetAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->transX:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 291
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 292
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->descriptionText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 294
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->imageArea:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->imageArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 299
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    invoke-virtual {v1, v3}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->setAlpha(F)V

    .line 301
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->image_transY:F

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->setTranslationY(F)V

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->btnArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 305
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->btnArea:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->button_transY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 307
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 309
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 322
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 279
    const/16 v0, 0x400

    .line 280
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 283
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 284
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 5

    .prologue
    .line 231
    const v1, 0x7f0e11e2

    .line 233
    .local v1, "stringID":I
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const v1, 0x7f0e11e3

    .line 237
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e11e0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 247
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 248
    return-void
.end method

.method private startAnimation()V
    .locals 13

    .prologue
    const/16 v12, 0x46

    const-wide/16 v10, 0x294

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 326
    const-string v0, "FpstFingerprintSetupWizard"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->imageArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->imageArea:Landroid/view/View;

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x21

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x21

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    .line 333
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->descriptionText:Landroid/view/View;

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x21

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    invoke-static {v0, v4, v5, v10, v11}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromRight(Landroid/view/View;JJ)V

    .line 336
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    move-wide v6, v10

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    if-eqz v0, :cond_1

    .line 339
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    move-wide v8, v4

    invoke-static/range {v7 .. v12}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromBottom(Landroid/view/View;JJI)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    move-wide v6, v10

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSetupWizard$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    const-wide/16 v6, 0x190

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->btnArea:Landroid/view/View;

    move-wide v8, v4

    invoke-static/range {v7 .. v12}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromBottom(Landroid/view/View;JJI)V

    .line 354
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->btnArea:Landroid/view/View;

    move-wide v6, v10

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    .line 355
    return-void
.end method

.method private startFingerprintLockSettings()V
    .locals 4

    .prologue
    .line 373
    const-string v2, "FpstFingerprintSetupWizard"

    const-string v3, "startFingerprintLockSettings()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 376
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v2, "previousStage"

    const-string v3, "sec_setupwizard_fingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const/16 v2, 0x7d0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "FpstFingerprintSetupWizard"

    const-string v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 253
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 254
    const-string v0, "FpstFingerprintSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v0, "FpstFingerprintSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    packed-switch p1, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 259
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 260
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setResult(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->finish()V

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->finish()V

    .line 220
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    :pswitch_0
    return-void

    .line 182
    :pswitch_1
    const-string v0, "FpstFingerprintSetupWizard"

    const-string v1, "skip fingerrpint setup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v1, "com.samsung.android.fingerprint.service"

    const-string v2, "FPSW"

    const-string v3, "Later"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 185
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->finish()V

    goto :goto_0

    .line 189
    :pswitch_2
    const-string v0, "FpstFingerprintSetupWizard"

    const-string v1, "Register fingerrpint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 192
    .local v6, "conf":Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v0, v2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    const v1, 0x7f0e149e

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0e11dc

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v7

    .line 197
    .local v7, "isHWdetected":Z
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v8

    .line 199
    .local v8, "status":I
    if-eqz v7, :cond_1

    const v0, 0x186c8

    if-eq v8, v0, :cond_2

    const v0, 0x186c9

    if-eq v8, v0, :cond_2

    .line 200
    :cond_1
    const-string v0, "FpstFingerprintSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate isHardwareDetected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestGetSensorStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->showSensorErrorDialog()V

    goto/16 :goto_0

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startFingerprintLockSettings()V

    goto/16 :goto_0

    .line 208
    .end local v7    # "isHWdetected":Z
    .end local v8    # "status":I
    :cond_3
    const-string v0, "FpstFingerprintSetupWizard"

    const-string v1, "mFingerprintManager doesn\'t create"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->showSensorErrorDialog()V

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x7f0d02c9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0e0909

    const v5, 0x7f0d02c4

    .line 96
    const-string v2, "FpstFingerprintSetupWizard"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 104
    :cond_0
    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    .line 106
    const v2, 0x7f0400ea

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setContentView(I)V

    .line 108
    const-string v2, "fingerprint"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 109
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    sget-object v2, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mWasSecureBefore:Z

    .line 113
    const v2, 0x7f0d02c5

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    .line 114
    const v2, 0x7f0d02c7

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->descriptionText:Landroid/view/View;

    .line 115
    const v2, 0x7f0d02c9

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    .line 116
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0e121e

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    const v2, 0x7f0d02cb

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    .line 118
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0e121d

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    const v2, 0x7f0d02c3

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->imageArea:Landroid/view/View;

    .line 120
    const v2, 0x7f0d0057

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    .line 121
    const v2, 0x7f0d02c8

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->btnArea:Landroid/view/View;

    .line 122
    const v2, 0x7f0d02c6

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->descriptionArea:Landroid/view/View;

    .line 124
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isVIEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    .line 127
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->contentArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->contentArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->descriptionText:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->contentArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->contentArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v2, 0x7f0d02cd

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    .local v1, "register_arrow":Landroid/widget/ImageView;
    const v2, 0x7f0202c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v2, -0x1000000

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 159
    .local v0, "colorfilter":Landroid/graphics/ColorFilter;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setIndicatorTransparency()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isVIEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->resetAnimation()V

    .line 166
    :cond_2
    return-void

    .line 142
    .end local v0    # "colorfilter":Landroid/graphics/ColorFilter;
    .end local v1    # "register_arrow":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintPhoneImage:Landroid/view/View;

    .line 143
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintPhoneImage:Landroid/view/View;

    const v3, 0x7f0200e3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 171
    const-string v0, "FpstFingerprintSetupWizard"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method
