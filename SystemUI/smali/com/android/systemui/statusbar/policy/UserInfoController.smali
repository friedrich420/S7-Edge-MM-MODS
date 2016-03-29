.class public final Lcom/android/systemui/statusbar/policy/UserInfoController;
.super Ljava/lang/Object;
.source "UserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUseDefaultAvatar:Z

.field private mUserDrawable:Landroid/graphics/drawable/Drawable;

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mCallbacks:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController$1;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController$2;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    .line 61
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v3, "profileFilter":Landroid/content/IntentFilter;
    const-string v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/UserInfoController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUseDefaultAvatar:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/UserInfoController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUseDefaultAvatar:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/UserInfoController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/UserInfoController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoController;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoController;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .locals 4

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .line 202
    .local v1, "listener":Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;->onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 204
    .end local v1    # "listener":Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
    :cond_0
    return-void
.end method

.method private queryForUserInformation()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 127
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 128
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v11, 0x0

    new-instance v12, Landroid/os/UserHandle;

    iget v13, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v11, v12}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 137
    .local v7, "currentUserContext":Landroid/content/Context;
    iget v3, v10, Landroid/content/pm/UserInfo;->id:I

    .line 138
    .local v3, "userId":I
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    .line 139
    .local v5, "isGuest":Z
    iget-object v2, v10, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 141
    .local v2, "userName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 142
    .local v9, "res":Landroid/content/res/Resources;
    const v0, 0x7f0c01a7

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0c01a6

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 146
    .local v4, "avatarSize":I
    move-object v6, v7

    .line 147
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/UserInfoController$3;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoController;Ljava/lang/String;IIZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v1, v14, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void

    .line 130
    .end local v2    # "userName":Ljava/lang/String;
    .end local v3    # "userId":I
    .end local v4    # "avatarSize":I
    .end local v5    # "isGuest":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "currentUserContext":Landroid/content/Context;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v8

    .line 131
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "UserInfoController"

    const-string v1, "Couldn\'t create user context"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 133
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v8

    .line 134
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "UserInfoController"

    const-string v1, "Couldn\'t get user info"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public reloadUserInfo()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->queryForUserInformation()V

    .line 121
    return-void
.end method
