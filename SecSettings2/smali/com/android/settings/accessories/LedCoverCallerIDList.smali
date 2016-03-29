.class public Lcom/android/settings/accessories/LedCoverCallerIDList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedCoverCallerIDList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;,
        Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;,
        Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;
    }
.end annotation


# instance fields
.field final PROJECTION:[Ljava/lang/String;

.field private mBackfromSelectionMode:Z

.field private mContactCount:I

.field private mContactInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContactListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

.field private mSelectedId:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    .line 78
    iput v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    .line 80
    iput v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    .line 82
    iput-boolean v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mBackfromSelectionMode:Z

    .line 301
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data15"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->PROJECTION:[Ljava/lang/String;

    .line 381
    return-void
.end method

.method private createContactList()V
    .locals 6

    .prologue
    .line 235
    const-string v1, "LedCoverCallerIDList"

    const-string v2, "createContactList()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->updateContactList()V

    .line 238
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->updateListDescription()V

    .line 240
    new-instance v1, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04011e

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 244
    .local v0, "list_view":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    return-void
.end method

.method private updateContactList()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    .line 321
    :goto_0
    const-string v3, "sec_led IS ? AND (photo_id = _id OR photo_id IS NULL)"

    .line 322
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 324
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "data_groupby"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "groupby"

    const-string v4, "contact_id"

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "data15"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v11, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 340
    const/4 v8, 0x0

    .line 342
    .local v8, "data15":[B
    if-eqz v6, :cond_1

    .line 343
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    .line 344
    const-string v0, "LedCoverCallerIDList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContactList() Selected ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-lez v0, :cond_2

    .line 347
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, "contact_id":Ljava/lang/String;
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "display_name":Ljava/lang/String;
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 351
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-direct {v1, p0, v7, v9, v8}, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;-><init>(Lcom/android/settings/accessories/LedCoverCallerIDList;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v0, "LedCoverCallerIDList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContactList() contact_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", display_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "contact_id":Ljava/lang/String;
    .end local v8    # "data15":[B
    .end local v9    # "display_name":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 331
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 332
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "LedCoverCallerIDList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-eqz v6, :cond_1

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 358
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    :goto_2
    return-void

    .line 356
    .restart local v8    # "data15":[B
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private updateListDescription()V
    .locals 5

    .prologue
    .line 361
    iget v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0f77

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0e12cf

    invoke-virtual {p0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x28

    return v0
.end method

.method public makeContactChangedToast(Ljava/lang/StringBuffer;)V
    .locals 19
    .param p1, "selection"    # Ljava/lang/StringBuffer;

    .prologue
    .line 437
    const/4 v8, 0x0

    .line 439
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "sec_led"

    aput-object v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 448
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, "SelectedID":Ljava/lang/String;
    const/4 v15, 0x0

    .line 451
    .local v15, "overwritten_contactCount":I
    const-string v16, ""

    .line 453
    .local v16, "overwritten_contactName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 454
    .local v11, "exsit_contactCount":I
    const-string v12, ""

    .line 457
    .local v12, "exsit_contactName":Ljava/lang/String;
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 460
    :cond_0
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 462
    .local v9, "callerID":Ljava/lang/String;
    if-eqz v9, :cond_8

    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 463
    add-int/lit8 v15, v15, 0x1

    .line 464
    const-string v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 473
    :cond_1
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    const/16 v17, 0x0

    .line 476
    .local v17, "overwritten_msg":Ljava/lang/String;
    const/4 v13, 0x0

    .line 478
    .local v13, "exsit_msg":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt v15, v1, :cond_2

    .line 479
    const/4 v1, 0x1

    if-ne v15, v1, :cond_9

    .line 480
    const v1, 0x7f0e12d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v16, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 488
    :goto_1
    const-string v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make Overwritten Toast [ADD] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_2
    const/4 v1, 0x1

    if-lt v11, v1, :cond_3

    .line 493
    const/4 v1, 0x1

    if-ne v11, v1, :cond_a

    .line 494
    const v1, 0x7f0e12d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 502
    :goto_2
    const-string v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make alerady exist Toast [ADD] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 506
    .local v18, "test":Z
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 507
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v14, "msg":Ljava/lang/StringBuilder;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 509
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 511
    const-string v1, "\n"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_5
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 514
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 519
    .end local v9    # "callerID":Ljava/lang/String;
    .end local v13    # "exsit_msg":Ljava/lang/String;
    .end local v14    # "msg":Ljava/lang/StringBuilder;
    .end local v17    # "overwritten_msg":Ljava/lang/String;
    .end local v18    # "test":Z
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 520
    .end local v7    # "SelectedID":Ljava/lang/String;
    .end local v11    # "exsit_contactCount":I
    .end local v12    # "exsit_contactName":Ljava/lang/String;
    .end local v15    # "overwritten_contactCount":I
    .end local v16    # "overwritten_contactName":Ljava/lang/String;
    :goto_3
    return-void

    .line 442
    :catch_0
    move-exception v10

    .line 443
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 468
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v7    # "SelectedID":Ljava/lang/String;
    .restart local v9    # "callerID":Ljava/lang/String;
    .restart local v11    # "exsit_contactCount":I
    .restart local v12    # "exsit_contactName":Ljava/lang/String;
    .restart local v15    # "overwritten_contactCount":I
    .restart local v16    # "overwritten_contactName":Ljava/lang/String;
    :cond_8
    if-eqz v9, :cond_1

    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    add-int/lit8 v11, v11, 0x1

    .line 470
    const-string v1, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 484
    .restart local v13    # "exsit_msg":Ljava/lang/String;
    .restart local v17    # "overwritten_msg":Ljava/lang/String;
    :cond_9
    const v1, 0x7f0e12d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 498
    :cond_a
    const v1, 0x7f0e12d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, v11, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 106
    const-string v2, "selected_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    .line 107
    const-string v2, "contact_count"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    .line 109
    :cond_0
    const-string v2, "LedCoverCallerIDList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated() Selected ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contact count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->createContactList()V

    .line 114
    iget v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v2, :cond_1

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "additional"

    const-string v3, "settings-phone-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v2, "support_tab"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string v2, "maxRecipientCount"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v2, "existingRecipientCount"

    iget v3, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const/16 v2, 0x3ec

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/accessories/LedCoverCallerIDList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings"

    const-string v4, "LVCS"

    const-string v5, "ADD"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    const-string v6, "LedCoverCallerIDList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityResult() requestCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v6, 0x3ec

    if-ne p1, v6, :cond_2

    if-eqz p3, :cond_2

    .line 154
    const-string v6, "result"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 156
    .local v3, "mParticipantsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 157
    .local v2, "i":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v4, "selection":Ljava/lang/StringBuffer;
    const-string v6, "_id IN ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 161
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "args":[Ljava/lang/String;
    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    add-int/lit8 v2, v2, 0x1

    .line 166
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 167
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 169
    .end local v0    # "args":[Ljava/lang/String;
    :cond_1
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v6, "LedCoverCallerIDList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityResult() [ADD] sec_led : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0, v4}, Lcom/android/settings/accessories/LedCoverCallerIDList;->makeContactChangedToast(Ljava/lang/StringBuffer;)V

    .line 176
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v5, "v":Landroid/content/ContentValues;
    const-string v6, "sec_led"

    iget v7, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v2    # "i":I
    .end local v3    # "mParticipantsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "selection":Ljava/lang/StringBuffer;
    .end local v5    # "v":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 182
    .restart local v2    # "i":I
    .restart local v3    # "mParticipantsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "selection":Ljava/lang/StringBuffer;
    .restart local v5    # "v":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v6, "LedCoverCallerIDList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQL Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v2    # "i":I
    .end local v3    # "mParticipantsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "selection":Ljava/lang/StringBuffer;
    .end local v5    # "v":Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->setHasOptionsMenu(Z)V

    .line 91
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 195
    const v0, 0x7f0e0f76

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 198
    const v0, 0x7f0e0a32

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 201
    iget v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v0, :cond_0

    .line 202
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 203
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const v1, 0x7f04011d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f0d02c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    .line 97
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 373
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x3ec

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    return v5

    .line 211
    :pswitch_0
    new-instance v7, Landroid/content/Intent;

    const-string v0, "intent.action.INTERACTION_LIST"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "additional"

    const-string v1, "settings-phone-multi"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v0, "support_tab"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    const-string v0, "maxRecipientCount"

    const/16 v1, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/accessories/LedCoverCallerIDList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v3, "LVCS"

    const-string v4, "ADD"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "intent":Landroid/content/Intent;
    :goto_1
    move v5, v8

    .line 231
    goto :goto_0

    .line 221
    :pswitch_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "selected_id"

    iget v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 226
    iput-boolean v8, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mBackfromSelectionMode:Z

    goto :goto_1

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 130
    const-string v0, "LedCoverCallerIDList"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->updateContactList()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->updateListDescription()V

    .line 136
    iget-boolean v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mBackfromSelectionMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList;->finish()V

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList;->mBackfromSelectionMode:Z

    .line 139
    return-void
.end method
