.class public Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;
.super Landroid/app/ListFragment;
.source "AppLockSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applock/AppLockSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppLockListFragment"
.end annotation


# instance fields
.field private mActivity:Lcom/android/settings/applock/AppLockSettingsActivity;

.field private mAdapter:Lcom/android/settings/applock/PackageListAdapter;

.field mAppCategoryText:Landroid/widget/TextView;

.field mAppLockDescription:Landroid/widget/TextView;

.field private final mAppLockTypeObserver:Landroid/database/ContentObserver;

.field mContext:Landroid/content/Context;

.field private final mFragmentHandler:Landroid/os/Handler;

.field mHeadView:Landroid/view/View;

.field mLockTypeSummary:Landroid/widget/TextView;

.field mLockTypeTitle:Landroid/widget/TextView;

.field mLockTypeView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 284
    new-instance v0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment$1;-><init>(Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAppLockTypeObserver:Landroid/database/ContentObserver;

    .line 341
    new-instance v0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment$2;-><init>(Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;)V

    iput-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mFragmentHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;)Lcom/android/settings/applock/PackageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAdapter:Lcom/android/settings/applock/PackageListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->updateView()V

    return-void
.end method

.method private updateView()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mActivity:Lcom/android/settings/applock/AppLockSettingsActivity;

    # invokes: Lcom/android/settings/applock/AppLockSettingsActivity;->updateCountViewState()V
    invoke-static {v0}, Lcom/android/settings/applock/AppLockSettingsActivity;->access$800(Lcom/android/settings/applock/AppLockSettingsActivity;)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAdapter:Lcom/android/settings/applock/PackageListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applock/PackageListAdapter;->notifyDataSetChanged()V

    .line 360
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 332
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 337
    check-cast p1, Lcom/android/settings/applock/AppLockSettingsActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mActivity:Lcom/android/settings/applock/AppLockSettingsActivity;

    .line 338
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mActivity:Lcom/android/settings/applock/AppLockSettingsActivity;

    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mFragmentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/settings/applock/AppLockSettingsActivity;->setHandler(Landroid/os/Handler;)V

    .line 339
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 436
    :goto_0
    return-void

    .line 433
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mActivity:Lcom/android/settings/applock/AppLockSettingsActivity;

    const/16 v1, 0x2711

    # invokes: Lcom/android/settings/applock/AppLockSettingsActivity;->callLockType(I)V
    invoke-static {v0, v1}, Lcom/android/settings/applock/AppLockSettingsActivity;->access$300(Lcom/android/settings/applock/AppLockSettingsActivity;I)V

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x7f0d00cd
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mContext:Landroid/content/Context;

    .line 295
    new-instance v0, Lcom/android/settings/applock/PackageListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mFragmentHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applock/PackageListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAdapter:Lcom/android/settings/applock/PackageListAdapter;

    .line 296
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAdapter:Lcom/android/settings/applock/PackageListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mHeadView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mHeadView:Landroid/view/View;

    .line 305
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mHeadView:Landroid/view/View;

    const v1, 0x7f0d00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeView:Landroid/widget/LinearLayout;

    .line 306
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mHeadView:Landroid/view/View;

    const v1, 0x7f0d00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeTitle:Landroid/widget/TextView;

    .line 307
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mHeadView:Landroid/view/View;

    const v1, 0x7f0d00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeSummary:Landroid/widget/TextView;

    .line 308
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mHeadView:Landroid/view/View;

    const v1, 0x7f0d00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAppCategoryText:Landroid/widget/TextView;

    .line 309
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mHeadView:Landroid/view/View;

    const v1, 0x7f0d00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAppLockDescription:Landroid/widget/TextView;

    .line 311
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 377
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAppLockTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 379
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 364
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 365
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mActivity:Lcom/android/settings/applock/AppLockSettingsActivity;

    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mFragmentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/settings/applock/AppLockSettingsActivity;->setHandler(Landroid/os/Handler;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mActivity:Lcom/android/settings/applock/AppLockSettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/applock/AppLockSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "applock_lock_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAppLockTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mActivity:Lcom/android/settings/applock/AppLockSettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/applock/AppLockSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_lock_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAppLockTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 371
    invoke-direct {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->updateView()V

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->updateLockTypeView()V

    .line 373
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 316
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mHeadView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0e11d4

    invoke-virtual {p0, v1}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "description":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const v1, 0x7f0e11d5

    invoke-virtual {p0, v1}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAppLockDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 324
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAppCategoryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e11cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method

.method public updateCountNumberCategory(I)V
    .locals 6
    .param p1, "countNumber"    # I

    .prologue
    .line 421
    if-lez p1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAppCategoryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e11ce

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mAppCategoryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e11cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateLockTypeSummary()V
    .locals 3

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applock/AppLockUtil;->getLockType(Landroid/content/Context;)I

    move-result v0

    .line 398
    .local v0, "lockType":I
    packed-switch v0, :pswitch_data_0

    .line 418
    :goto_0
    return-void

    .line 400
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeSummary:Landroid/widget/TextView;

    const v2, 0x7f0e11d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeSummary:Landroid/widget/TextView;

    const v2, 0x7f0e11d8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeSummary:Landroid/widget/TextView;

    const v2, 0x7f0e11db

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 409
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeSummary:Landroid/widget/TextView;

    const v2, 0x7f0e11d9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 415
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeSummary:Landroid/widget/TextView;

    const v2, 0x7f0e11da

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public updateLockTypeView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 382
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mActivity:Lcom/android/settings/applock/AppLockSettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/applock/AppLockSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_lock_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 384
    .local v0, "state":I
    if-ne v0, v4, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 387
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 393
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->updateLockTypeSummary()V

    .line 394
    return-void

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 390
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 391
    iget-object v1, p0, Lcom/android/settings/applock/AppLockSettingsActivity$AppLockListFragment;->mLockTypeSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
