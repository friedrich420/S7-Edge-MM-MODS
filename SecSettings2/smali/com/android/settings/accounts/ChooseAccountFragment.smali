.class public Lcom/android/settings/accounts/ChooseAccountFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseAccountFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAccountGroup:Landroid/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFragmentMode:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 594
    new-instance v0, Lcom/android/settings/accounts/ChooseAccountFragment$2;

    invoke-direct {v0}, Lcom/android/settings/accounts/ChooseAccountFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/ChooseAccountFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsFragmentMode:Z

    .line 87
    new-instance v0, Lcom/android/settings/accounts/ChooseAccountFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ChooseAccountFragment$1;-><init>(Lcom/android/settings/accounts/ChooseAccountFragment;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/ChooseAccountFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accounts/ChooseAccountFragment;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/ChooseAccountFragment;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/ChooseAccountFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 11
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 553
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v4, "addAccountOptions":Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 564
    .local v9, "identityIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "SHOULDN\'T RESOLVE!"

    const-string v3, "SHOULDN\'T RESOLVE!"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 565
    const-string v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    .line 569
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 570
    const-string v0, "hasMultipleUsers"

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/accounts/SnsAccountManager;->getSnsAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 574
    .local v10, "snsAccountType":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 575
    move-object p1, v10

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v8, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 587
    return-void
.end method

.method private finishWithAccountType(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ChooseAccountFragment;->addAccount(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 23

    .prologue
    .line 304
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v14, "addedSSOAccount":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v3, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_10

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v17

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 309
    .local v12, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/accounts/ChooseAccountFragment;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 312
    .local v22, "providerName":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/accounts/ChooseAccountFragment;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 313
    .local v10, "accountAuths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 314
    .local v13, "addAccountPref":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 315
    const/4 v13, 0x0

    .line 316
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_0

    .line 317
    if-eqz v10, :cond_a

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    aget-object v3, v3, v19

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 319
    const/4 v13, 0x1

    .line 326
    .end local v19    # "k":I
    :cond_0
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1

    const-string v3, "com.amazon.account"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    const/4 v13, 0x0

    .line 329
    :cond_1
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v3, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 331
    const/4 v13, 0x0

    .line 334
    :cond_2
    const-string v3, "com.sec.ims.scab"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 335
    const/4 v13, 0x0

    .line 338
    :cond_3
    const-string v3, "com.samsung.android.coreapps"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 339
    const/4 v13, 0x0

    .line 340
    const-string v3, "ChooseAccountFragment"

    const-string v4, "Hide Easysignup account"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_4
    const-string v3, "com.amazon.venezia.billing"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 344
    const/4 v13, 0x0

    .line 345
    const-string v3, "ChooseAccountFragment"

    const-string v4, "HIDE Amazon Appstore from Verizon Devices"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 349
    const-string v3, "com.whitepages.nameid.account"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 350
    const/4 v13, 0x0

    .line 351
    const-string v3, "ChooseAccountFragment"

    const-string v4, "Hide com.whitepages.nameid.account Account Add Option"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_6
    if-eqz v13, :cond_7

    const-string v3, "com.att.aab"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 358
    const/4 v13, 0x0

    .line 359
    const-string v3, "ChooseAccountFragment"

    const-string v4, "Hide com.att.aab Account Add Option"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Web_ConfigSyncSource"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "org.mozilla.firefox"

    invoke-virtual {v12, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 367
    const/4 v13, 0x0

    .line 370
    :cond_8
    if-eqz v13, :cond_f

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v11

    .line 373
    .local v11, "accountEntry":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    if-eqz v11, :cond_c

    .line 374
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 307
    .end local v11    # "accountEntry":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    :cond_9
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 316
    .restart local v19    # "k":I
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 378
    .end local v19    # "k":I
    .restart local v11    # "accountEntry":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    :cond_b
    iget-object v3, v11, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v4, v11, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 381
    iget-object v12, v11, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    .line 382
    iget-object v3, v11, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/ChooseAccountFragment;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 386
    :goto_3
    iget-object v3, v11, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    move-object/from16 v0, v22

    invoke-direct {v4, v0, v12}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 384
    :cond_d
    iget-object v0, v11, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountLabel:Ljava/lang/String;

    move-object/from16 v22, v0

    goto :goto_3

    .line 388
    :cond_e
    iget-object v3, v11, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 394
    .end local v11    # "accountEntry":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    :cond_f
    const-string v3, "ChooseAccountFragment"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 395
    const-string v3, "ChooseAccountFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped pref "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": has no authority we need"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 400
    .end local v10    # "accountAuths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "accountType":Ljava/lang/String;
    .end local v13    # "addAccountPref":Z
    .end local v22    # "providerName":Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    # getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/accounts/ChooseAccountFragment;->finishWithAccountType(Ljava/lang/String;)V

    .line 429
    :cond_11
    :goto_5
    return-void

    .line 403
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 406
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsFragmentMode:Z

    if-nez v3, :cond_13

    const/4 v8, 0x1

    .line 407
    .local v8, "isDialogGUI":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    .line 408
    .local v21, "pref":Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;
    # getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/ChooseAccountFragment;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 413
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/android/settings/accounts/ProviderPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    # getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->name:Ljava/lang/CharSequence;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$300(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v6

    # getter for: Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/ChooseAccountFragment;->isSignedIn(Ljava/lang/String;)Z

    move-result v7

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)V

    .line 415
    .local v2, "p":Lcom/android/settings/accounts/ProviderPreference;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 406
    .end local v2    # "p":Lcom/android/settings/accounts/ProviderPreference;
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isDialogGUI":Z
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v21    # "pref":Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;
    :cond_13
    const/4 v8, 0x0

    goto :goto_6

    .line 418
    :cond_14
    const-string v3, "ChooseAccountFragment"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 419
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v16, "auths":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    aget-object v9, v15, v18

    .line 421
    .local v9, "a":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const/16 v3, 0x20

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 424
    .end local v9    # "a":Ljava/lang/String;
    :cond_15
    const-string v3, "ChooseAccountFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No providers found for authorities: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v16    # "auths":Ljava/lang/StringBuilder;
    .end local v18    # "i$":I
    .end local v20    # "len$":I
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    goto/16 :goto_5
.end method

.method private updateAuthDescriptions()V
    .locals 4

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->onAuthDescriptionsUpdated()V

    .line 300
    return-void
.end method


# virtual methods
.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 433
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 434
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 436
    .local v4, "syncAdapters":[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v4

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 437
    aget-object v3, v4, v1

    .line 438
    .local v3, "sa":Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 439
    .local v0, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .restart local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_0
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "sa":Landroid/content/SyncAdapterType;
    .end local v4    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 491
    const/4 v3, 0x0

    .line 492
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 494
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 495
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 497
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 498
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 499
    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 511
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v3

    .line 502
    .restart local v0    # "authContext":Landroid/content/Context;
    .restart local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 503
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 505
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No icon name for account type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 508
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No icon resource for account type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 520
    const/4 v3, 0x0

    .line 521
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 523
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 524
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 525
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 532
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 526
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 529
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 185
    const/16 v0, 0xa

    return v0
.end method

.method protected isSignedIn(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, "isSignedIn":Z
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 457
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 458
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 459
    const/4 v1, 0x1

    .line 462
    :cond_0
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f0c00c7

    const/4 v2, 0x0

    .line 247
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 251
    .local v11, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 252
    .local v12, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c00a2

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0c00b0

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    const v3, 0x7f0c00ac

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v4, v1, v3

    .line 255
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 257
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsFragmentMode:Z

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v11, v1, v2, v3, v5}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    .line 269
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 271
    :cond_0
    return-void

    .line 259
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 260
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 276
    const-string v0, "ChooseAccountFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    packed-switch p1, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 279
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1f7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 195
    .local v4, "fragment_bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 196
    const-string v7, "extra_fragment_mode"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsFragmentMode:Z

    .line 197
    const-string v7, "ChooseAccountFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsFragmentMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsFragmentMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    const v7, 0x7f08000c

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/ChooseAccountFragment;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 208
    .local v2, "activity":Landroid/app/Activity;
    iget-boolean v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsFragmentMode:Z

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 209
    const-string v7, "authorities"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    .line 211
    const-string v7, "account_types"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "accountTypesFilter":[Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 221
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 222
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v3, v5

    .line 223
    .local v0, "accountType":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 215
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "accountTypesFilter":[Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "authorities"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    .line 217
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "account_types"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "accountTypesFilter":[Ljava/lang/String;
    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    .line 227
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUm:Landroid/os/UserManager;

    .line 229
    iget-boolean v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mIsFragmentMode:Z

    if-eqz v7, :cond_3

    .line 230
    const-string v7, "android.intent.extra.USER"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 231
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUm:Landroid/os/UserManager;

    const-string v8, "no_modify_accounts"

    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 233
    const v7, 0x7f0e0d26

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    .line 243
    :goto_2
    return-void

    .line 239
    :cond_3
    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUm:Landroid/os/UserManager;

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 242
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->updateAuthDescriptions()V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 537
    instance-of v1, p2, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 538
    check-cast v0, Lcom/android/settings/accounts/ProviderPreference;

    .line 539
    .local v0, "pref":Lcom/android/settings/accounts/ProviderPreference;
    const-string v1, "ChooseAccountFragment"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    const-string v1, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ChooseAccountFragment;->finishWithAccountType(Ljava/lang/String;)V

    .line 544
    .end local v0    # "pref":Lcom/android/settings/accounts/ProviderPreference;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
