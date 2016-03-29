.class public Lcom/android/settings/applock/PackageActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageActionReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/android/settings/applock/PackageActionReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applock/PackageActionReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateStateChanged(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "status"    # I

    .prologue
    .line 31
    invoke-static {}, Lcom/android/settings/applock/PackageInfoUtil;->getInstance()Lcom/android/settings/applock/PackageInfoUtil;

    move-result-object v0

    .line 32
    .local v0, "packageInfoUtil":Lcom/android/settings/applock/PackageInfoUtil;
    invoke-virtual {v0, p1, p3, p2}, Lcom/android/settings/applock/PackageInfoUtil;->updatePackageChanged(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    const-string v2, "applock"

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 17
    .local v1, "isReplacing":Ljava/lang/Boolean;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 18
    const/4 v2, 0x4

    invoke-direct {p0, p1, p2, v2}, Lcom/android/settings/applock/PackageActionReceiver;->updateStateChanged(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 24
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "isReplacing":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 20
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "isReplacing":Ljava/lang/Boolean;
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v2}, Lcom/android/settings/applock/PackageActionReceiver;->updateStateChanged(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method
