.class public Lcom/android/settings/ConfirmLockPattern;
.super Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPattern$1;,
        Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/ConfirmLockPattern$Stage;,
        Lcom/android/settings/ConfirmLockPattern$InternalActivity;
    }
.end annotation


# static fields
.field private static mFromPersonalPage:Z

.field private static mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    sput-object v0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic access$300()Lcom/android/settings/ConfirmLockPattern$Stage;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ConfirmLockPattern$Stage;)Lcom/android/settings/ConfirmLockPattern$Stage;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$Stage;

    .prologue
    .line 62
    sput-object p0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    return-object p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 79
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
