.class public Lcom/android/keyguard/KeyguardConstants;
.super Ljava/lang/Object;
.source "KeyguardConstants.java"


# static fields
.field public static final DEBUG_SECURE:Z

.field public static final PRIVATE_MODE_ON_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG_SECURE:Z

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.personalpage.service"

    const-string v3, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "without_verify"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardConstants;->PRIVATE_MODE_ON_INTENT:Landroid/content/Intent;

    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0
.end method
