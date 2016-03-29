.class public Lcom/android/settings/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private callMenu(Ljava/lang/String;)V
    .locals 23
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v13, 0x0

    .line 42
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/settings/search/Index;->searchItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 44
    if-eqz v13, :cond_0

    .line 45
    const-string v2, "Index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    :cond_0
    const/4 v2, 0x6

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "className":Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "screenTitle":Ljava/lang/String;
    const/16 v2, 0x9

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, "action":Ljava/lang/String;
    const/16 v2, 0xd

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 56
    .local v18, "key":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 57
    .local v20, "targetCls":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 59
    .local v22, "targetPkg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v4, "args":Landroid/os/Bundle;
    const-string v2, ":settings:fragment_args_key"

    move-object/from16 v0, v18

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "fromSearch"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const/4 v7, -0x1

    .line 65
    .local v7, "screenTitleRes":I
    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const v7, 0x7f0e086c

    .line 69
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/android/settings/Utils;->startWithFragmentBySearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v4    # "args":Landroid/os/Bundle;
    .end local v7    # "screenTitleRes":I
    :goto_0
    if-eqz v13, :cond_2

    .line 129
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 130
    const/4 v13, 0x0

    .line 133
    .end local v3    # "className":Ljava/lang/String;
    .end local v8    # "screenTitle":Ljava/lang/String;
    .end local v10    # "action":Ljava/lang/String;
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "targetCls":Ljava/lang/String;
    .end local v22    # "targetPkg":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 72
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "args":Landroid/os/Bundle;
    .restart local v7    # "screenTitleRes":I
    .restart local v8    # "screenTitle":Ljava/lang/String;
    .restart local v10    # "action":Ljava/lang/String;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v20    # "targetCls":Ljava/lang/String;
    .restart local v22    # "targetPkg":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    :try_start_1
    invoke-static/range {v2 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "args":Landroid/os/Bundle;
    .end local v7    # "screenTitleRes":I
    .end local v8    # "screenTitle":Ljava/lang/String;
    .end local v10    # "action":Ljava/lang/String;
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "targetCls":Ljava/lang/String;
    .end local v22    # "targetPkg":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 126
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    if-eqz v13, :cond_2

    .line 129
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 130
    const/4 v13, 0x0

    goto :goto_1

    .line 75
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v8    # "screenTitle":Ljava/lang/String;
    .restart local v10    # "action":Ljava/lang/String;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v20    # "targetCls":Ljava/lang/String;
    .restart local v22    # "targetPkg":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_7

    :try_start_3
    const-string v2, "|"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    const/16 v2, 0x7c

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 77
    .local v16, "idx":I
    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "act":Ljava/lang/String;
    const-string v2, "Index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "act: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    add-int/lit8 v2, v16, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v10, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 80
    .local v14, "data":Ljava/lang/String;
    const-string v2, "Index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v17, "intent":Landroid/content/Intent;
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    move-object/from16 v21, v22

    .line 84
    .local v21, "targetPackage":Ljava/lang/String;
    move-object/from16 v19, v20

    .line 85
    .local v19, "targetClass":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 86
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v12, "component":Landroid/content/ComponentName;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    .end local v12    # "component":Landroid/content/ComponentName;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SearchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 128
    .end local v3    # "className":Ljava/lang/String;
    .end local v8    # "screenTitle":Ljava/lang/String;
    .end local v9    # "act":Ljava/lang/String;
    .end local v10    # "action":Ljava/lang/String;
    .end local v14    # "data":Ljava/lang/String;
    .end local v16    # "idx":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "targetClass":Ljava/lang/String;
    .end local v20    # "targetCls":Ljava/lang/String;
    .end local v21    # "targetPackage":Ljava/lang/String;
    .end local v22    # "targetPkg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_6

    .line 129
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 130
    const/4 v13, 0x0

    :cond_6
    throw v2

    .line 92
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v8    # "screenTitle":Ljava/lang/String;
    .restart local v10    # "action":Ljava/lang/String;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v20    # "targetCls":Ljava/lang/String;
    .restart local v22    # "targetPkg":Ljava/lang/String;
    :cond_7
    :try_start_4
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v21, v22

    .line 95
    .restart local v21    # "targetPackage":Ljava/lang/String;
    move-object/from16 v19, v20

    .line 96
    .restart local v19    # "targetClass":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 97
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .restart local v12    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    const-string v2, "com.kddi.android.au_setting_menu"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.kddi.android.au_setting_menu.MainActivity"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 102
    const-string v2, "mode"

    const-string v5, "Start"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .end local v12    # "component":Landroid/content/ComponentName;
    :cond_8
    :goto_2
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 110
    const-string v2, ":settings:fragment_args_key"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    const-string v2, "fromSearch"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string v2, "from_settings"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v11, "bundle":Landroid/os/Bundle;
    const-string v2, "extra_from_search"

    const/4 v5, 0x1

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    const-string v2, "extra_parent_preference_key"

    move-object/from16 v0, v18

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, ":settings:fragment_args_key"

    move-object/from16 v0, v18

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "extra_fragment_bundle_key"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    const-string v2, "extra_search_bundle"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    .end local v11    # "bundle":Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 103
    .restart local v12    # "component":Landroid/content/ComponentName;
    :cond_a
    const-string v2, "com.sec.android.app.launcher"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "com.android.launcher2.Launcher"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 105
    const-string v2, "StartEdit"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/settings/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SearchActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/settings/SearchActivity;->finish()V

    .line 24
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 29
    const-string v1, "com.samsung.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "mintentdata":Ljava/lang/String;
    const-string v1, "content://com.android.settings.sfinderconncet/searchinfo/rowid/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0, v0}, Lcom/android/settings/SearchActivity;->callMenu(Ljava/lang/String;)V

    .line 36
    .end local v0    # "mintentdata":Ljava/lang/String;
    :cond_0
    return-void
.end method
