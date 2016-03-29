.class Lcom/android/settings/dashboard/SearchResultsSummary$3;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 26
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    invoke-static {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$900(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItemId(I)J

    move-result-wide v22

    const-wide/16 v24, -0x1

    cmp-long v5, v22, v24

    if-eqz v5, :cond_0

    .line 318
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$800(Lcom/android/settings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 319
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$800(Lcom/android/settings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView;->clearFocus()V

    .line 321
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    invoke-static {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$900(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    .line 322
    .local v16, "item":Ljava/lang/Object;
    if-eqz v16, :cond_0

    move-object/from16 v18, v16

    .line 324
    check-cast v18, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;

    .line 326
    .local v18, "result":Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->className:Ljava/lang/String;

    .line 327
    .local v3, "className":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->screenTitle:Ljava/lang/String;

    .line 328
    .local v8, "screenTitle":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->action:Ljava/lang/String;

    .line 329
    .local v10, "action":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 331
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 332
    .local v2, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->needToRevertToInitialFragment()V

    .line 334
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 335
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v4, "args":Landroid/os/Bundle;
    const-string v5, ":settings:fragment_args_key"

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v5, "fromSearch"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const/4 v7, -0x1

    .line 340
    .local v7, "screenTitleRes":I
    const-class v5, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 341
    const v7, 0x7f0e086c

    .line 344
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 345
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/settings/Utils;->startWithFragmentBySearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 400
    .end local v4    # "args":Landroid/os/Bundle;
    .end local v7    # "screenTitleRes":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings"

    const-string v21, "SEAR"

    move-object/from16 v0, v21

    invoke-static {v5, v6, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/dashboard/SearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    # invokes: Lcom/android/settings/dashboard/SearchResultsSummary;->saveQueryToDatabase(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$1000(Lcom/android/settings/dashboard/SearchResultsSummary;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    .restart local v4    # "args":Landroid/os/Bundle;
    .restart local v7    # "screenTitleRes":I
    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_1

    .line 350
    .end local v4    # "args":Landroid/os/Bundle;
    .end local v7    # "screenTitleRes":I
    :cond_5
    if-eqz v10, :cond_7

    const-string v5, "|"

    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 351
    const/16 v5, 0x7c

    invoke-virtual {v10, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 352
    .local v14, "idx":I
    const/4 v5, 0x0

    invoke-virtual {v10, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 353
    .local v9, "act":Ljava/lang/String;
    const-string v5, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "act: "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v10, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 355
    .local v13, "data":Ljava/lang/String;
    const-string v5, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data: "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v15, "intent":Landroid/content/Intent;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 358
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetPkg:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 359
    .local v20, "targetPackage":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 360
    .local v19, "targetClass":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 361
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v12, "component":Landroid/content/ComponentName;
    invoke-virtual {v15, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 365
    .end local v12    # "component":Landroid/content/ComponentName;
    :cond_6
    invoke-virtual {v2, v15}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 367
    .end local v9    # "act":Ljava/lang/String;
    .end local v13    # "data":Ljava/lang/String;
    .end local v14    # "idx":I
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v19    # "targetClass":Ljava/lang/String;
    .end local v20    # "targetPackage":Ljava/lang/String;
    :cond_7
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetPkg:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 370
    .restart local v20    # "targetPackage":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 371
    .restart local v19    # "targetClass":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 372
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .restart local v12    # "component":Landroid/content/ComponentName;
    invoke-virtual {v15, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 375
    const-string v5, "com.kddi.android.au_setting_menu"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "com.kddi.android.au_setting_menu.MainActivity"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 377
    const-string v5, "mode"

    const-string v6, "Start"

    invoke-virtual {v15, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    .end local v12    # "component":Landroid/content/ComponentName;
    :cond_8
    :goto_2
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 385
    const-string v5, ":settings:fragment_args_key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v5, ":settings:show_fragment_as_subsetting"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    const-string v5, "fromSearch"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    const-string v5, "from_settings"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v11, "bundle":Landroid/os/Bundle;
    const-string v5, "extra_from_search"

    const/4 v6, 0x1

    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    const-string v5, "extra_parent_preference_key"

    move-object/from16 v0, v17

    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v5, ":settings:fragment_args_key"

    move-object/from16 v0, v17

    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v5, "extra_fragment_bundle_key"

    invoke-virtual {v15, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 394
    const-string v5, "extra_search_bundle"

    invoke-virtual {v15, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 395
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v15, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 397
    .end local v11    # "bundle":Landroid/os/Bundle;
    :cond_9
    invoke-virtual {v2, v15}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 378
    .restart local v12    # "component":Landroid/content/ComponentName;
    :cond_a
    const-string v5, "com.sec.android.app.launcher"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "com.android.launcher2.Launcher"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 380
    const-string v5, "StartEdit"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2
.end method
