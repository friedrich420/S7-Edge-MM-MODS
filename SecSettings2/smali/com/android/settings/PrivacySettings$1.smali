.class Lcom/android/settings/PrivacySettings$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v12, 0x1

    .line 279
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;
    invoke-static {v8}, Lcom/android/settings/PrivacySettings;->access$000(Lcom/android/settings/PrivacySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v8

    if-ne p1, v8, :cond_2

    .line 280
    const-string v8, "PrivacySettings"

    const-string v9, "Collect Diagnostics Preference triggered"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 282
    .local v4, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 283
    .local v1, "cn":Landroid/content/ComponentName;
    # getter for: Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z
    invoke-static {}, Lcom/android/settings/PrivacySettings;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "cn":Landroid/content/ComponentName;
    const-string v8, "com.tmobile.pr.mytmobile"

    const-string v9, "com.tmobile.pr.mytmobile.iqtoggle.ui.OptInSummary"

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .restart local v1    # "cn":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 289
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v8, v4}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    .line 364
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return v12

    .line 283
    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "cn":Landroid/content/ComponentName;
    const-string v8, "com.carrieriq.tmobile.IQToggle"

    const-string v9, "com.carrieriq.tmobile.IQToggle.ui"

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;
    invoke-static {v8}, Lcom/android/settings/PrivacySettings;->access$200(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p1, v8, :cond_5

    .line 292
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v8}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.sec.android.easyMover"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 293
    const/4 v7, 0x0

    .line 294
    .local v7, "mMessage":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    const v9, 0x7f0e170c

    invoke-virtual {v8, v9}, Lcom/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "appName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    const v9, 0x7f0e0f89

    new-array v10, v12, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/PrivacySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 296
    const/4 v5, 0x0

    .line 297
    .local v5, "mAlertDlg":Landroid/app/AlertDialog;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v9}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0e1122

    new-instance v10, Lcom/android/settings/PrivacySettings$1$2;

    invoke-direct {v10, p0}, Lcom/android/settings/PrivacySettings$1$2;-><init>(Lcom/android/settings/PrivacySettings$1;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/settings/PrivacySettings$1$1;

    invoke-direct {v10, p0}, Lcom/android/settings/PrivacySettings$1$1;-><init>(Lcom/android/settings/PrivacySettings$1;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 337
    .end local v0    # "appName":Ljava/lang/String;
    .end local v5    # "mAlertDlg":Landroid/app/AlertDialog;
    .end local v7    # "mMessage":Ljava/lang/CharSequence;
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v8}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.android.easyMover"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 338
    .local v3, "i":Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 339
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v8, v3}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 345
    .end local v3    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 347
    const-string v8, "PrivacySettings"

    const-string v9, "not found activity"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 341
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v3    # "i":Landroid/content/Intent;
    :cond_4
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v8, v4}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 351
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;
    invoke-static {v8}, Lcom/android/settings/PrivacySettings;->access$300(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p1, v8, :cond_6

    .line 352
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v6, "mIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v8, v6}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 355
    .end local v6    # "mIntent":Landroid/content/Intent;
    :cond_6
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;
    invoke-static {v8}, Lcom/android/settings/PrivacySettings;->access$400(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 356
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # invokes: Lcom/android/settings/PrivacySettings;->onBackUpClicked()V
    invoke-static {v8}, Lcom/android/settings/PrivacySettings;->access$500(Lcom/android/settings/PrivacySettings;)V

    goto/16 :goto_1

    .line 358
    :cond_7
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;
    invoke-static {v8}, Lcom/android/settings/PrivacySettings;->access$600(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 359
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # invokes: Lcom/android/settings/PrivacySettings;->onRestoreClicked()V
    invoke-static {v8}, Lcom/android/settings/PrivacySettings;->access$700(Lcom/android/settings/PrivacySettings;)V

    goto/16 :goto_1

    .line 361
    :cond_8
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;
    invoke-static {v8}, Lcom/android/settings/PrivacySettings;->access$800(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 362
    iget-object v8, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # invokes: Lcom/android/settings/PrivacySettings;->onStorageClicked()V
    invoke-static {v8}, Lcom/android/settings/PrivacySettings;->access$900(Lcom/android/settings/PrivacySettings;)V

    goto/16 :goto_1
.end method
