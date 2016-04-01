.class public Lcom/android/server/PermissionDialog;
.super Lcom/android/server/BasePermissionDialog;
.source "PermissionDialog.java"


# static fields
.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_IGNORED:I = 0x4

.field static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field static final DISMISS_TIMEOUT:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "PermissionDialog"


# instance fields
.field private mChoice:Landroid/widget/CheckBox;

.field private final mCode:I

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/server/AppOpsService;

.field private mUid:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/AppOpsService;
    .param p3, "code"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/BasePermissionDialog;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v3, Lcom/android/server/PermissionDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/PermissionDialog$1;-><init>(Lcom/android/server/PermissionDialog;)V

    iput-object v3, p0, mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 63
    .local v2, "res":Landroid/content/res/Resources;
    iput-object p2, p0, mService:Lcom/android/server/AppOpsService;

    .line 64
    iput p3, p0, mCode:I

    .line 65
    iput-object p5, p0, mPackageName:Ljava/lang/String;

    .line 66
    iput p4, p0, mUid:I

    .line 68
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, setCancelable(Z)V

    .line 70
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 71
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4}, getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x110

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 74
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    iget-object v3, p0, mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_57

    .line 78
    iget-object v1, p0, mPackageName:Ljava/lang/String;

    .line 81
    :cond_57
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3a98

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 36
    iget-object v0, p0, mChoice:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/PermissionDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 36
    iget v0, p0, mCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PermissionDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 36
    iget v0, p0, mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 36
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 36
    iget-object v0, p0, mService:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 89
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x2200

    :try_start_a
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_17

    move-result-object v0

    .line 95
    if-eqz v0, :cond_16

    .line 96
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    :cond_16
    :goto_16
    return-object v3

    .line 92
    :catch_17
    move-exception v1

    .line 93
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_16
.end method
