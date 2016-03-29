.class Lcom/android/settings/HomeSettings$HomeAppPreference;
.super Landroid/preference/Preference;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAppPreference"
.end annotation


# instance fields
.field activityName:Landroid/content/ComponentName;

.field fragment:Lcom/android/settings/HomeSettings;

.field final grayscaleFilter:Landroid/graphics/ColorFilter;

.field index:I

.field isChecked:Z

.field isSystem:Z

.field final synthetic this$0:Lcom/android/settings/HomeSettings;

.field uninstallTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "i"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "parent"    # Lcom/android/settings/HomeSettings;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "enabled"    # Z
    .param p10, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    .line 354
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 355
    const v2, 0x7f040184

    invoke-virtual {p0, v2}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setLayoutResource(I)V

    .line 359
    invoke-virtual {p0, p6}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {p0, p9}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setEnabled(Z)V

    .line 361
    invoke-virtual {p0, p10}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    iput-object p3, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    .line 363
    iput-object p7, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->fragment:Lcom/android/settings/HomeSettings;

    .line 364
    iput p4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->index:I

    .line 366
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 367
    .local v0, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 368
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 369
    .local v1, "matrix":[F
    const/16 v2, 0x12

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v1, v2

    .line 370
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    .line 372
    invoke-direct {p0, p8}, Lcom/android/settings/HomeSettings$HomeAppPreference;->determineTargets(Landroid/content/pm/ActivityInfo;)V

    .line 373
    return-void
.end method

.method private determineTargets(Landroid/content/pm/ActivityInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 378
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 379
    .local v6, "meta":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    .line 380
    const-string v8, "android.app.home.alternate"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "altHomePackage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 383
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    # getter for: Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/settings/HomeSettings;->access$400(Lcom/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v11, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 384
    .local v5, "match":I
    if-ltz v5, :cond_1

    .line 385
    iget-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    # getter for: Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/settings/HomeSettings;->access$400(Lcom/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 386
    .local v2, "altInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 387
    .local v0, "altFlags":I
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_0

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 388
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v0    # "altFlags":I
    .end local v1    # "altHomePackage":Ljava/lang/String;
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "match":I
    :goto_1
    return-void

    .restart local v0    # "altFlags":I
    .restart local v1    # "altHomePackage":Ljava/lang/String;
    .restart local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "match":I
    :cond_0
    move v8, v10

    .line 387
    goto :goto_0

    .line 391
    .end local v0    # "altFlags":I
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "match":I
    :catch_0
    move-exception v3

    .line 393
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "HomeSettings"

    const-string v11, "Unable to compare/resolve alternate"

    invoke-static {v8, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    .end local v1    # "altHomePackage":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    move v8, v9

    :goto_2
    iput-boolean v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 401
    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v8, v7, v10

    .line 402
    .local v7, "selectionArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    invoke-virtual {v8}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v11, "getApplicationUninstallationEnabled"

    invoke-static {v8, v10, v11, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 403
    .local v4, "getApplicationUninstallationEnabled":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    if-eq v4, v9, :cond_2

    .line 405
    iput-boolean v9, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 409
    :cond_2
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    goto :goto_1

    .end local v4    # "getApplicationUninstallationEnabled":I
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    move v8, v10

    .line 398
    goto :goto_2
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 416
    const v4, 0x7f0d03ec

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 417
    .local v2, "radio":Landroid/widget/RadioButton;
    iget-boolean v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 419
    iget v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 421
    .local v1, "indexObj":Ljava/lang/Integer;
    const v4, 0x7f0d02ea

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, "icon":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v4, :cond_0

    .line 425
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :goto_0
    const v4, 0x7f0d03eb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 434
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 436
    iget-object v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v4, v4, Lcom/android/settings/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    return-void

    .line 427
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 428
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 429
    iget-object v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v4, v4, Lcom/android/settings/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setChecked(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eq p1, v0, :cond_0

    .line 441
    iput-boolean p1, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings$HomeAppPreference;->notifyChanged()V

    .line 444
    :cond_0
    return-void
.end method
