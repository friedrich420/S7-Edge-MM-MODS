.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SFinderLaunchPolicy"
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "com.sec.feature.findo"

.field private static final TAG:Ljava/lang/String; = "SFinderLaunchPolicy"


# instance fields
.field private mDeniedActivities:[Ljava/lang/String;

.field private mFeatureCached:Z

.field private mFeatureEnabled:Z

.field private mLaunchSFinder:Ljava/lang/Runnable;

.field private mSFinderIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 3720
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3717
    iput-boolean v4, p0, mFeatureEnabled:Z

    .line 3718
    iput-boolean v4, p0, mFeatureCached:Z

    .line 3727
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "{com.android.phone/com.android.phone.UsimDownload}"

    aput-object v1, v0, v4

    iput-object v0, p0, mDeniedActivities:[Ljava/lang/String;

    .line 3731
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V

    iput-object v0, p0, mLaunchSFinder:Ljava/lang/Runnable;

    .line 3721
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, mSFinderIntent:Landroid/content/Intent;

    .line 3722
    iget-object v0, p0, mSFinderIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3724
    iget-object v0, p0, mSFinderIntent:Landroid/content/Intent;

    const-string v1, "callername"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3725
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 3711
    invoke-direct {p0, p1}, <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .prologue
    .line 3711
    invoke-direct {p0}, launch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .prologue
    .line 3711
    iget-object v0, p0, mSFinderIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .prologue
    .line 3711
    invoke-direct {p0}, isLaunchable()Z

    move-result v0

    return v0
.end method

.method private ensureFeatureCached()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3752
    iget-boolean v1, p0, mFeatureCached:Z

    if-nez v1, :cond_c

    .line 3753
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_d

    .line 3754
    const/4 v0, 0x0

    .line 3761
    :cond_c
    :goto_c
    return v0

    .line 3757
    :cond_d
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.findo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, mFeatureEnabled:Z

    .line 3758
    iput-boolean v0, p0, mFeatureCached:Z

    goto :goto_c
.end method

.method private isDeniedActivity()Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 3765
    iget-object v7, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 3767
    .local v5, "topActivity":Landroid/content/ComponentName;
    if-nez v5, :cond_c

    .line 3779
    :cond_b
    :goto_b
    return v6

    .line 3771
    :cond_c
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 3773
    .local v1, "cmpName":Ljava/lang/String;
    iget-object v0, p0, mDeniedActivities:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_14
    if-ge v3, v4, :cond_21

    aget-object v2, v0, v3

    .line 3774
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 3773
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 3779
    .end local v2    # "entry":Ljava/lang/String;
    :cond_21
    const/4 v6, 0x0

    goto :goto_b
.end method

.method private isLaunchable()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3783
    invoke-direct {p0}, ensureFeatureCached()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3809
    :goto_7
    return v0

    .line 3787
    :cond_8
    iget-boolean v1, p0, mFeatureEnabled:Z

    if-nez v1, :cond_14

    .line 3788
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: feature is disabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    :cond_14
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-nez v1, :cond_23

    .line 3790
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: mBootCompleted=false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3797
    :cond_23
    invoke-direct {p0}, isDeniedActivity()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3798
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: isDeniedActivity()=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3799
    :cond_32
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_43

    .line 3800
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: device is not provisioned yet!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3801
    :cond_43
    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 3802
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "isLaunchable: keyguard is on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3803
    :cond_56
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_66

    iget-object v1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 3804
    :cond_66
    const-string v1, "SFinderLaunchPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLaunchable: isFactoryMode()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAutomaticTestMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3806
    :cond_97
    const/4 v0, 0x1

    goto/16 :goto_7
.end method

.method private launch()Z
    .registers 3

    .prologue
    .line 3813
    invoke-direct {p0}, ensureFeatureCached()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3814
    const/4 v0, 0x0

    .line 3822
    :goto_7
    return v0

    .line 3817
    :cond_8
    invoke-direct {p0}, isLaunchable()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3818
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3819
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3822
    :cond_20
    iget-boolean v0, p0, mFeatureEnabled:Z

    goto :goto_7
.end method
