.class public Lcom/android/settings/safetycare/ReportDiagnosticinfo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ReportDiagnosticinfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field DIAGNOSTIC_INFO_MESSAGE:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field private mCancelButton:Landroid/widget/Button;

.field mDiagnosticsText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 41
    const-string v0, "PersonalPageReportDiagnosticinfo"

    iput-object v0, p0, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    .line 43
    const-string v0, "diagnostics_info_message"

    iput-object v0, p0, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->DIAGNOSTIC_INFO_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method private setDiagnostic(Z)V
    .locals 5
    .param p1, "v"    # Z

    .prologue
    .line 139
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 140
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "samsung_errorlog_agree"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "diagnostic_info_changed"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "i2":Landroid/content/Intent;
    const-string v3, "diagnostic_info_changed"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    return-void

    .line 139
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "i2":Landroid/content/Intent;
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x2e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->setDiagnostic(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->finish()V

    goto :goto_0

    .line 133
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->setDiagnostic(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->finish()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x7f0d00fb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const v9, 0x7f0401b4

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 61
    .local v7, "view":Landroid/view/View;
    const v9, 0x7f0d0456

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    .line 64
    const v9, 0x7f0d00fb

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->mCancelButton:Landroid/widget/Button;

    .line 65
    iget-object v9, p0, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v9, 0x7f0d00fc

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->mNextButton:Landroid/widget/Button;

    .line 68
    iget-object v9, p0, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "c":Landroid/content/Context;
    const/4 v5, 0x0

    .line 73
    .local v5, "resources":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 74
    .local v1, "collectionString":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "sales_code":Ljava/lang/String;
    const-string v9, "VZW"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v4, 0x1

    .line 78
    .local v4, "isVZW":Z
    :goto_0
    const-string v8, "com.sec.android.app.setupwizard"

    .line 79
    .local v8, "vzwPackageName":Ljava/lang/String;
    const-string v3, "com.sec.android.app.SecSetupWizard"

    .line 82
    .local v3, "globalPackageName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "error_log_collection"

    const-string v11, "string"

    invoke-virtual {v5, v10, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :cond_0
    :goto_1
    if-nez v1, :cond_3

    .line 104
    iget-object v9, p0, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    const-string v10, "error log collection disclaimer is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->setDiagnostic(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->finish()V

    .line 112
    :goto_2
    return-object v7

    .line 76
    .end local v3    # "globalPackageName":Ljava/lang/String;
    .end local v4    # "isVZW":Z
    .end local v8    # "vzwPackageName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 88
    .restart local v3    # "globalPackageName":Ljava/lang/String;
    .restart local v4    # "isVZW":Z
    .restart local v8    # "vzwPackageName":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v3, v10}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "error_log_collection_k_serviceinfo"

    const-string v11, "string"

    invoke-virtual {v5, v10, v11, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v9, p0, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->TAG:Ljava/lang/String;

    const-string v10, "error getting activity of create package context"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 108
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/safetycare/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
