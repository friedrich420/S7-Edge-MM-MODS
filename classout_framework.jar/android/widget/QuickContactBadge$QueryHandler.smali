.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .registers 3
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 340
    iput-object p1, p0, this$0:Landroid/widget/QuickContactBadge;

    .line 341
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 342
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 25
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 346
    const/4 v13, 0x0

    .line 347
    .local v13, "lookupUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 348
    .local v5, "createUri":Landroid/net/Uri;
    const/4 v15, 0x0

    .line 349
    .local v15, "trigger":Z
    if-eqz p2, :cond_67

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v9, p2

    .line 351
    .local v9, "extras":Landroid/os/Bundle;
    :goto_9
    packed-switch p1, :pswitch_data_19a

    .line 386
    :cond_c
    :goto_c
    if-eqz p3, :cond_11

    .line 387
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v0, v13}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 394
    if-eqz v15, :cond_ef

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v16

    if-eqz v16, :cond_ef

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static/range {v18 .. v18}, Landroid/widget/QuickContactBadge;->access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/QuickContactBadge;->mPrioritizedMimeType:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/widget/QuickContactBadge;->access$200(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v16 .. v20}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_66
    :goto_66
    return-void

    .line 349
    .end local v9    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_67
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    goto :goto_9

    .line 353
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v9    # "extras":Landroid/os/Bundle;
    :pswitch_6d
    const/4 v15, 0x1

    .line 354
    if-eqz v9, :cond_7d

    if-eqz v9, :cond_7f

    :try_start_72
    const-string/jumbo v16, "uri_content"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_7f

    .line 355
    :cond_7d
    const/4 v5, 0x0

    .line 356
    goto :goto_c

    .line 358
    :cond_7f
    const-string/jumbo v16, "tel"

    const-string/jumbo v17, "uri_content"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 362
    :pswitch_91
    if-eqz p3, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 363
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 364
    .local v6, "contactId":J
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 365
    .local v12, "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 366
    goto/16 :goto_c

    .line 371
    .end local v6    # "contactId":J
    .end local v12    # "lookupKey":Ljava/lang/String;
    :pswitch_b3
    const/4 v15, 0x1

    .line 372
    const-string/jumbo v16, "mailto"

    const-string/jumbo v17, "uri_content"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 377
    :pswitch_c6
    if-eqz p3, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 378
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 379
    .restart local v6    # "contactId":J
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 380
    .restart local v12    # "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_e5
    .catchall {:try_start_72 .. :try_end_e5} :catchall_e8

    move-result-object v13

    goto/16 :goto_c

    .line 386
    .end local v6    # "contactId":J
    .end local v12    # "lookupKey":Ljava/lang/String;
    :catchall_e8
    move-exception v16

    if-eqz p3, :cond_ee

    .line 387
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_ee
    throw v16

    .line 398
    :cond_ef
    if-eqz v5, :cond_66

    .line 400
    new-instance v10, Landroid/content/Intent;

    const-string v16, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 403
    .local v10, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_163

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->access$300(Landroid/widget/QuickContactBadge;)Landroid/content/Context;

    move-result-object v16

    const-string v17, "android.permission.GET_TASKS"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v14

    .line 405
    .local v14, "permissionResult":I
    if-nez v14, :cond_163

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->access$400(Landroid/widget/QuickContactBadge;)Landroid/content/Context;

    move-result-object v16

    const-string v17, "activity"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 407
    .local v4, "am":Landroid/app/ActivityManager;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .line 408
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "PackageName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "ReplacedPackageName":Ljava/lang/String;
    const-string v16, "com.android.contacts"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_163

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_163

    .line 412
    invoke-virtual {v10, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    .end local v2    # "PackageName":Ljava/lang/String;
    .end local v3    # "ReplacedPackageName":Ljava/lang/String;
    .end local v4    # "am":Landroid/app/ActivityManager;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v14    # "permissionResult":I
    :cond_163
    if-eqz v9, :cond_170

    .line 418
    const-string/jumbo v16, "uri_content"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v10, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 422
    :cond_170
    :try_start_170
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_170 .. :try_end_17f} :catch_181

    goto/16 :goto_66

    .line 423
    :catch_181
    move-exception v8

    .line 424
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x104026c

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_66

    .line 351
    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_91
        :pswitch_b3
        :pswitch_6d
    .end packed-switch
.end method
