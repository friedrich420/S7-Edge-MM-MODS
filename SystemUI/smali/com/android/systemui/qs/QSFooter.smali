.class public Lcom/android/systemui/qs/QSFooter;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFooter$H;,
        Lcom/android/systemui/qs/QSFooter$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.net.vpn.SETTINGS"

.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "QSFooter"


# instance fields
.field private final mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextId:I

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsIconVisible:Z

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootView:Landroid/view/View;

.field private mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "QSFooter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSFooter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .locals 3
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/qs/QSFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSFooter$Callback;-><init>(Lcom/android/systemui/qs/QSFooter;Lcom/android/systemui/qs/QSFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    .line 195
    new-instance v0, Lcom/android/systemui/qs/QSFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooter$1;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    .line 62
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFooter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSFooter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSFooter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->handleRefreshState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->handleClick()V

    return-void
.end method

.method private createDialog()V
    .locals 8

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "deviceOwner":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "profileOwner":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "primaryVpn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileVpnName()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "profileVpn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v5

    .line 139
    .local v5, "managed":Z
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v6, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSFooter;->getTitle(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 141
    iget-object v6, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSFooter;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getPositiveButton()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getNegativeButton()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 147
    return-void
.end method

.method private getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "deviceOwner"    # Ljava/lang/String;
    .param p2, "profileOwner"    # Ljava/lang/String;
    .param p3, "primaryVpn"    # Ljava/lang/String;
    .param p4, "profileVpn"    # Ljava/lang/String;
    .param p5, "primaryUserIsManaged"    # Z

    .prologue
    const v2, 0x7f0d034c

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    if-eqz p1, :cond_1

    .line 160
    if-eqz p3, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0355

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_1
    if-eqz p3, :cond_3

    .line 168
    if-eqz p4, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0354

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p4, v2, v4

    aput-object p3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0352

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_3
    if-eqz p4, :cond_4

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0353

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p4, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_4
    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNegativeButton()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d01a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPositiveButton()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitle(Ljava/lang/String;)I
    .locals 1
    .param p1, "deviceOwner"    # Ljava/lang/String;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    const v0, 0x7f0d0347

    .line 191
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d0349

    goto :goto_0
.end method

.method private handleClick()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->collapsePanels()V

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->createDialog()V

    .line 106
    return-void
.end method

.method private handleRefreshState()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const v0, 0x7f0d0344

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void

    .line 118
    :cond_0
    const v0, 0x7f0d0346

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    .line 119
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public hasFooter()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.vpn.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "settingsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 130
    .end local v0    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    const v1, 0x7f0c010b

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 87
    return-void
.end method

.method public refreshState()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 74
    new-instance v0, Lcom/android/systemui/qs/QSFooter$H;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSFooter$H;-><init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    goto :goto_0
.end method
