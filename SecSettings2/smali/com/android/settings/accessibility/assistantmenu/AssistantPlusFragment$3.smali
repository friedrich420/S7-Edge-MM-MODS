.class Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;
.super Ljava/lang/Thread;
.source "AssistantPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->fetchData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 346
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x1000

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v11

    .line 348
    .local v11, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    .line 349
    .local v15, "resInfo":Landroid/content/pm/PackageInfo;
    if-eqz v15, :cond_0

    .line 350
    const/16 v16, 0x0

    .line 351
    .local v16, "state":Z
    iget-object v13, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 353
    .local v13, "permInfo":[Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 354
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v12, v4, v8

    .line 355
    .local v12, "perm":Ljava/lang/String;
    const-string v17, "com.samsung.android.app.assistantmenu.permission.ADVERTISE_ASSISTANTMENU"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 356
    const/16 v16, 0x1

    .line 361
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v12    # "perm":Ljava/lang/String;
    :cond_1
    if-eqz v16, :cond_0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.chrome.deviceextras.samsung"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 363
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_2

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.android.settings"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 365
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 366
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "applicationName":Ljava/lang/String;
    const-string v17, "EAMEditor"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.android.contacts"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->sIsPhone:Z
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$800(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_4

    .line 371
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const-string v18, "com.android.phone"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 372
    .local v14, "phoneApp":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    .line 373
    .local v2, "appName":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    :cond_3
    if-eqz v2, :cond_4

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 378
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 385
    .end local v2    # "appName":Ljava/lang/String;
    .end local v14    # "phoneApp":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # operator++ for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$308(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    .line 386
    new-instance v5, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 387
    .local v5, "checkboxPref":Landroid/preference/SwitchPreference;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$900(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    # invokes: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->resizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v18}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$1000(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$1100(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/content/SharedPreferences;

    move-result-object v17

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 393
    .local v10, "mAppEnable":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_7

    .line 394
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # operator++ for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$208(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    .line 396
    sget-object v17, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[c] increment count:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$500(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$600(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v17

    if-nez v17, :cond_0

    .line 408
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 412
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "applicationName":Ljava/lang/String;
    .end local v5    # "checkboxPref":Landroid/preference/SwitchPreference;
    .end local v10    # "mAppEnable":I
    .end local v11    # "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "permInfo":[Ljava/lang/String;
    .end local v15    # "resInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "state":Z
    :catch_0
    move-exception v6

    .line 413
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 415
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$900(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # invokes: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->OrderAppData()V
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$1200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->messageHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$1300(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 418
    return-void

    .line 354
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v13    # "permInfo":[Ljava/lang/String;
    .restart local v15    # "resInfo":Landroid/content/pm/PackageInfo;
    .restart local v16    # "state":Z
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 398
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v12    # "perm":Ljava/lang/String;
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "applicationName":Ljava/lang/String;
    .restart local v5    # "checkboxPref":Landroid/preference/SwitchPreference;
    .restart local v10    # "mAppEnable":I
    :cond_7
    const/16 v17, 0x0

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 399
    sget-object v17, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[c] decrement count:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 380
    .end local v5    # "checkboxPref":Landroid/preference/SwitchPreference;
    .end local v10    # "mAppEnable":I
    :catch_1
    move-exception v17

    goto/16 :goto_2
.end method
