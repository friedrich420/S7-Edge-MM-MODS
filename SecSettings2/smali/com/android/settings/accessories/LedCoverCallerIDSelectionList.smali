.class public Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedCoverCallerIDSelectionList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;,
        Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;,
        Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;
    }
.end annotation


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private mContactCheckBoxListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;

.field private mContactCount:I

.field private mContactInfoCheckBoxList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionsMenu:Landroid/view/Menu;

.field private mSelectActionView:Landroid/view/View;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedContactTextView:Landroid/widget/TextView;

.field private mSelectedId:I

.field private originalContentStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    .line 78
    iput v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactCount:I

    .line 80
    iput v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedId:I

    .line 82
    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 84
    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllText:Landroid/widget/TextView;

    .line 86
    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedContactTextView:Landroid/widget/TextView;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->originalContentStart:I

    .line 508
    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2
    .param p1, "isSelect"    # Z

    .prologue
    .line 371
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-virtual {v1, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->setChecked(Z)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactCheckBoxListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->notifyDataSetChanged()V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->updateSelectionState()V

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->ToggleAllCheck(Z)V

    return-void
.end method

.method private backTolist()V
    .locals 3

    .prologue
    .line 134
    const-string v0, "LedCoverCallerIDSelectionList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backTolist stack count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 137
    return-void
.end method

.method private clearselectionChecklist()V
    .locals 3

    .prologue
    .line 407
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->setChecked(Z)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 411
    return-void
.end method

.method private createContactList()V
    .locals 7

    .prologue
    .line 281
    const-string v0, "LedCoverCallerIDSelectionList"

    const-string v1, "createContactList()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->updateContactList()V

    .line 284
    new-instance v0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04011c

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;-><init>(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactCheckBoxListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 288
    .local v6, "list_view":Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactCheckBoxListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 289
    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 290
    return-void
.end method

.method private finishSelectMode()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->clearselectionChecklist()V

    .line 403
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->backTolist()V

    .line 404
    return-void
.end method

.method private get1stCheckedContactName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 393
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-virtual {v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-virtual {v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->getName()Ljava/lang/String;

    move-result-object v1

    .line 398
    .end local v0    # "index":I
    :goto_1
    return-object v1

    .line 393
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "index":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getNumOfCheckedList()I
    .locals 3

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, "numChecked":I
    iget-object v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 382
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-virtual {v2}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    add-int/lit8 v1, v1, 0x1

    .line 382
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "index":I
    :cond_1
    return v1
.end method

.method private updateContactDB(I)V
    .locals 10
    .param p1, "value"    # I

    .prologue
    .line 414
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 415
    .local v4, "selection":Ljava/lang/StringBuffer;
    const-string v6, "_id IN ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    iget-object v6, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 418
    .local v2, "listSize":I
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getNumOfCheckedList()I

    move-result v3

    .line 419
    .local v3, "numofchecked":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 420
    iget-object v6, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-virtual {v6}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->getChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 421
    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    iget-object v6, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-virtual {v6}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    add-int/lit8 v3, v3, -0x1

    .line 425
    if-lez v3, :cond_0

    .line 426
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    :cond_1
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 432
    .local v5, "v":Landroid/content/ContentValues;
    if-nez p1, :cond_2

    .line 433
    const-string v6, "LedCoverCallerIDSelectionList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateContactDB() [REMOVE] value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v6, "sec_led"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

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

    .line 448
    :goto_2
    return-void

    .line 437
    :cond_2
    const-string v6, "LedCoverCallerIDSelectionList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateContactDB() [CHANGE] value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v6, "sec_led"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v6, "LedCoverCallerIDSelectionList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQL Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateContactList()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    .line 299
    :goto_0
    const-string v3, "sec_led IS ? AND (photo_id = _id OR photo_id IS NULL)"

    .line 300
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 302
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

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

    iget v11, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 318
    const/4 v8, 0x0

    .line 320
    .local v8, "data15":[B
    if-eqz v6, :cond_1

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactCount:I

    .line 322
    const-string v0, "LedCoverCallerIDSelectionList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContactList() Selected ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactCount:I

    if-lez v0, :cond_2

    .line 325
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "contact_id":Ljava/lang/String;
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 328
    .local v9, "display_name":Ljava/lang/String;
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 329
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-direct {v1, p0, v7, v9, v8}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;-><init>(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    const-string v0, "LedCoverCallerIDSelectionList"

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

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "contact_id":Ljava/lang/String;
    .end local v8    # "data15":[B
    .end local v9    # "display_name":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 309
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 310
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "LedCoverCallerIDSelectionList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz v6, :cond_1

    .line 312
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 337
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    :goto_2
    return-void

    .line 335
    .restart local v8    # "data15":[B
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x28

    return v0
.end method

.method public makeContactChangedToast(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 567
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getNumOfCheckedList()I

    move-result v1

    .line 568
    .local v1, "count":I
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->get1stCheckedContactName()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "contactName":Ljava/lang/String;
    iget v3, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedId:I

    if-eq v3, p1, :cond_0

    if-ge v1, v6, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    if-ne v1, v6, :cond_2

    .line 574
    const v3, 0x7f0e12d1

    invoke-virtual {p0, v3}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "msg":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 581
    const-string v3, "LedCoverCallerIDSelectionList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeContactChangedToast() [CHANGE] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0e12d2

    invoke-virtual {p0, v3}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    add-int/lit8 v5, v1, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1
.end method

.method public makeMaximumNumberReachedToast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 585
    const v1, 0x7f0e12d5

    invoke-virtual {p0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 588
    const-string v1, "LedCoverCallerIDSelectionList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeMaximumNumberReachedToast() [CHANGE] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 120
    const-string v1, "selected_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedId:I

    .line 122
    :cond_0
    const-string v1, "LedCoverCallerIDSelectionList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated() Selected ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->createContactList()V

    .line 125
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 229
    const-string v3, "LedCoverCallerIDSelectionList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult() requestCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_0

    if-eqz p3, :cond_0

    .line 232
    const-string v3, "selected_id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 233
    .local v1, "id":I
    const-string v3, "contact_count"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    .local v0, "count":I
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getNumOfCheckedList()I

    move-result v2

    .line 235
    .local v2, "numofchecked":I
    add-int v3, v0, v2

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    .line 236
    const-string v3, "LedCoverCallerIDSelectionList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult() selected_id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", contact_count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", numofchecked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->makeMaximumNumberReachedToast()V

    .line 245
    .end local v0    # "count":I
    .end local v1    # "id":I
    .end local v2    # "numofchecked":I
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local v0    # "count":I
    .restart local v1    # "id":I
    .restart local v2    # "numofchecked":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->updateContactDB(I)V

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->makeContactChangedToast(I)V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->finishSelectMode()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "LedCoverCallerIDSelectionList"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->setHasOptionsMenu(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->actionBar:Landroid/app/ActionBar;

    .line 104
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 154
    const-string v0, "LedCoverCallerIDSelectionList"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 157
    iput-object p1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mOptionsMenu:Landroid/view/Menu;

    .line 158
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04011f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectActionView:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f0d0320

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllText:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$1;-><init>(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f0d031f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 181
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$2;-><init>(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f0d0321

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedContactTextView:Landroid/widget/TextView;

    .line 194
    :goto_0
    const/4 v0, 0x2

    const v1, 0x7f0e0ecf

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 196
    const/4 v0, 0x3

    const v1, 0x7f0e1201

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->updateSelectionState()V

    .line 200
    return-void

    .line 191
    :cond_0
    const-string v0, "LedCoverCallerIDSelectionList"

    const-string v1, "updateSelectMenu null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    const v2, 0x7f04011d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "mView":Landroid/view/View;
    const v2, 0x7f0d02c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    .local v1, "tv":Landroid/widget/TextView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 342
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 141
    const v1, 0x7f0d031a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 142
    .local v0, "appCheck":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactCheckBoxListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->setChecked(Z)V

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactCheckBoxListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->notifyDataSetChanged()V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->updateSelectionState()V

    .line 149
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactCheckBoxListAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 222
    :goto_0
    return v1

    .line 207
    :pswitch_0
    const-string v1, "LedCoverCallerIDSelectionList"

    const-string v3, "onOptionsItemSelected() action [CHANGE]"

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.Settings$LedCoverCallerIDSettingsActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "change_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    move v1, v2

    .line 222
    goto :goto_0

    .line 215
    :pswitch_1
    const-string v3, "LedCoverCallerIDSelectionList"

    const-string v4, "onOptionsItemSelected() action [REMOVE]"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0, v1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->updateContactDB(I)V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->finishSelectMode()V

    goto :goto_1

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateActionButtonState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "numChecked":I
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getNumOfCheckedList()I

    move-result v0

    .line 352
    const-string v1, "LedCoverCallerIDSelectionList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActionButtonState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-lez v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedContactTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1233

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 367
    :goto_1
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedContactTextView:Landroid/widget/TextView;

    const v2, 0x7f0e12d0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateActionbarState()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "numChecked":I
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getNumOfCheckedList()I

    move-result v0

    .line 253
    const-string v1, "LedCoverCallerIDSelectionList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActionbarState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-lez v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedContactTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1233

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mContactInfoCheckBoxList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 269
    :goto_1
    if-nez v0, :cond_2

    .line 270
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 271
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    :goto_2
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectedContactTextView:Landroid/widget/TextView;

    const v2, 0x7f0e12d0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 276
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public updateSelectionState()V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->updateActionButtonState()V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->updateActionbarState()V

    .line 347
    return-void
.end method
