.class public Lcom/android/settings/vpn2/LockdownConfigFragment;
.super Landroid/app/DialogFragment;
.source "LockdownConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/LockdownConfigFragment$TitleAdapter;
    }
.end annotation


# static fields
.field private static mAlwaysOnProfile:Lcom/android/internal/net/VpnProfile;


# instance fields
.field private mCurrentIndex:I

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mAlwaysOnProfile:Lcom/android/internal/net/VpnProfile;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/LockdownConfigFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/vpn2/LockdownConfigFragment;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/net/VpnProfile;)Lcom/android/internal/net/VpnProfile;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 54
    sput-object p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mAlwaysOnProfile:Lcom/android/internal/net/VpnProfile;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/vpn2/LockdownConfigFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/vpn2/LockdownConfigFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mProfiles:Ljava/util/List;

    return-object v0
.end method

.method private static getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v1

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 82
    .local v0, "value":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    .line 86
    const-string v3, "LOCKDOWN_VPN"

    invoke-static {p1, v3}, Lcom/android/settings/vpn2/LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "lockdownKey":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    invoke-static {p1, v3}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mProfiles:Ljava/util/List;

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mTitles:Ljava/util/List;

    .line 90
    iget-object v3, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mTitles:Ljava/util/List;

    const v4, 0x7f0e0cd6

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iput v5, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mCurrentIndex:I

    .line 93
    iget-object v3, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 94
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mCurrentIndex:I

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mTitles:Ljava/util/List;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-void
.end method

.method public static show(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/vpn2/VpnSettings;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/android/settings/vpn2/LockdownConfigFragment;

    invoke-direct {v0}, Lcom/android/settings/vpn2/LockdownConfigFragment;-><init>()V

    .line 74
    .local v0, "dialog":Lcom/android/settings/vpn2/LockdownConfigFragment;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "lockdown"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/vpn2/LockdownConfigFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/vpn2/LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 104
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 106
    .local v4, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p0, v4, v11}, Lcom/android/settings/vpn2/LockdownConfigFragment;->initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V

    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 111
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    const v11, 0x7f0e0cd4

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 113
    const v11, 0x7f04022c

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 114
    .local v10, "view":Landroid/view/View;
    const v11, 0x102000a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 115
    .local v6, "listView":Landroid/widget/ListView;
    new-instance v11, Lcom/android/settings/vpn2/LockdownConfigFragment$1;

    invoke-direct {v11, p0}, Lcom/android/settings/vpn2/LockdownConfigFragment$1;-><init>(Lcom/android/settings/vpn2/LockdownConfigFragment;)V

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    new-instance v8, Lcom/android/settings/vpn2/LockdownConfigFragment$TitleAdapter;

    iget-object v11, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-direct {v8, v1, v11}, Lcom/android/settings/vpn2/LockdownConfigFragment$TitleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 121
    .local v8, "tAdapter":Lcom/android/settings/vpn2/LockdownConfigFragment$TitleAdapter;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 122
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v11

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v12

    add-int v9, v11, v12

    .line 126
    .local v9, "totalHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v8}, Lcom/android/settings/vpn2/LockdownConfigFragment$TitleAdapter;->getCount()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 127
    const/4 v11, 0x0

    invoke-virtual {v8, v3, v11, v6}, Lcom/android/settings/vpn2/LockdownConfigFragment$TitleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 128
    .local v5, "listItem":Landroid/view/View;
    instance-of v11, v5, Landroid/view/ViewGroup;

    if-eqz v11, :cond_0

    .line 129
    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/View;->measure(II)V

    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v9, v11

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v5    # "listItem":Landroid/view/View;
    :cond_1
    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 135
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget v11, p0, Lcom/android/settings/vpn2/LockdownConfigFragment;->mCurrentIndex:I

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 138
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 140
    const v11, 0x104000a

    new-instance v12, Lcom/android/settings/vpn2/LockdownConfigFragment$2;

    invoke-direct {v12, p0, v6, v4, v1}, Lcom/android/settings/vpn2/LockdownConfigFragment$2;-><init>(Lcom/android/settings/vpn2/LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    return-object v11
.end method
