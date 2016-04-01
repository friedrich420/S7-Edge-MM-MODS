.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePolicyData"
.end annotation


# instance fields
.field doNotAskCredentialsOnBoot:Z

.field mActivePasswordLength:I

.field mActivePasswordLetters:I

.field mActivePasswordLowerCase:I

.field mActivePasswordNonLetter:I

.field mActivePasswordNumeric:I

.field mActivePasswordQuality:I

.field mActivePasswordRecoverable:Z

.field mActivePasswordSymbols:I

.field mActivePasswordUpperCase:I

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowListRecord:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAlternativePasswordLength:I

.field mAlternativePasswordLetters:I

.field mAlternativePasswordLowerCase:I

.field mAlternativePasswordNonLetter:I

.field mAlternativePasswordNumeric:I

.field mAlternativePasswordQuality:I

.field mAlternativePasswordSymbols:I

.field mAlternativePasswordUpperCase:I

.field private mBlockListRecordInRom:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDelegatedCertInstallerPackage:Ljava/lang/String;

.field mFailedPasswordAttempts:I

.field mLastMaximumTimeToLock:J

.field mLockTaskPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPasswordOwner:I

.field mPermissionPolicy:I

.field final mRemovingAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field mRestrictionsProvider:Landroid/content/ComponentName;

.field mStatusBarDisabled:Z

.field mUserHandle:I

.field mUserSetupComplete:Z


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput v2, p0, mActivePasswordQuality:I

    .line 418
    iput v2, p0, mActivePasswordLength:I

    .line 419
    iput v2, p0, mActivePasswordUpperCase:I

    .line 420
    iput v2, p0, mActivePasswordLowerCase:I

    .line 421
    iput v2, p0, mActivePasswordLetters:I

    .line 422
    iput v2, p0, mActivePasswordNumeric:I

    .line 423
    iput v2, p0, mActivePasswordSymbols:I

    .line 424
    iput v2, p0, mActivePasswordNonLetter:I

    .line 425
    iput v2, p0, mFailedPasswordAttempts:I

    .line 428
    const v0, 0x61000

    iput v0, p0, mAlternativePasswordQuality:I

    .line 429
    iput v2, p0, mAlternativePasswordLength:I

    .line 430
    iput v2, p0, mAlternativePasswordLetters:I

    .line 431
    iput v2, p0, mAlternativePasswordUpperCase:I

    .line 432
    iput v2, p0, mAlternativePasswordLowerCase:I

    .line 433
    iput v2, p0, mAlternativePasswordNumeric:I

    .line 434
    iput v2, p0, mAlternativePasswordSymbols:I

    .line 435
    iput v2, p0, mAlternativePasswordNonLetter:I

    .line 439
    iput-boolean v2, p0, mActivePasswordRecoverable:Z

    .line 440
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mBlockListRecordInRom:Ljava/util/HashSet;

    .line 441
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mAllowListRecord:Ljava/util/HashSet;

    .line 444
    const/4 v0, -0x1

    iput v0, p0, mPasswordOwner:I

    .line 445
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mLastMaximumTimeToLock:J

    .line 446
    iput-boolean v2, p0, mUserSetupComplete:Z

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mAdminMap:Ljava/util/HashMap;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAdminList:Ljava/util/ArrayList;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRemovingAdmins:Ljava/util/ArrayList;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLockTaskPackages:Ljava/util/List;

    .line 456
    iput-boolean v2, p0, mStatusBarDisabled:Z

    .line 462
    iput-boolean v2, p0, doNotAskCredentialsOnBoot:Z

    .line 465
    iput p1, p0, mUserHandle:I

    .line 466
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 416
    iget-object v0, p0, mAllowListRecord:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 416
    iget-object v0, p0, mBlockListRecordInRom:Ljava/util/HashSet;

    return-object v0
.end method
