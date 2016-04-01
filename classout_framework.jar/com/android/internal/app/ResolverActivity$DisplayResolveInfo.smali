.class final Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final mDisplayLabel:Ljava/lang/CharSequence;

.field private final mExtendedInfo:Ljava/lang/CharSequence;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mResolvedIntent:Landroid/content/Intent;

.field private final mSourceIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 13
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "pLabel"    # Ljava/lang/CharSequence;
    .param p5, "pInfo"    # Ljava/lang/CharSequence;
    .param p6, "pOrigIntent"    # Landroid/content/Intent;

    .prologue
    .line 1429
    iput-object p1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mSourceIntents:Ljava/util/List;

    .line 1430
    iget-object v3, p0, mSourceIntents:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    iput-object p3, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1432
    iput-object p4, p0, mDisplayLabel:Ljava/lang/CharSequence;

    .line 1433
    iput-object p5, p0, mExtendedInfo:Ljava/lang/CharSequence;

    .line 1435
    new-instance v1, Landroid/content/Intent;

    if-eqz p6, :cond_3f

    .end local p6    # "pOrigIntent":Landroid/content/Intent;
    :goto_1b
    invoke-direct {v1, p6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1438
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    .line 1439
    .local v2, "selectorIntent":Landroid/content/Intent;
    if-eqz v2, :cond_25

    .line 1440
    move-object v1, v2

    .line 1443
    :cond_25
    const/high16 v3, 0x3000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1445
    iget-object v3, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1446
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1448
    iput-object v1, p0, mResolvedIntent:Landroid/content/Intent;

    .line 1449
    return-void

    .line 1435
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "selectorIntent":Landroid/content/Intent;
    .restart local p6    # "pOrigIntent":Landroid/content/Intent;
    :cond_3f
    iget-object v3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p6

    goto :goto_1b
.end method

.method private constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/content/Intent;I)V
    .registers 7
    .param p2, "other"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .prologue
    .line 1451
    iput-object p1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSourceIntents:Ljava/util/List;

    .line 1452
    iget-object v0, p0, mSourceIntents:Ljava/util/List;

    invoke-virtual {p2}, getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1453
    iget-object v0, p2, mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1454
    iget-object v0, p2, mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, mDisplayLabel:Ljava/lang/CharSequence;

    .line 1455
    iget-object v0, p2, mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 1456
    iget-object v0, p2, mExtendedInfo:Ljava/lang/CharSequence;

    iput-object v0, p0, mExtendedInfo:Ljava/lang/CharSequence;

    .line 1457
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, mResolvedIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, mResolvedIntent:Landroid/content/Intent;

    .line 1458
    iget-object v0, p0, mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1459
    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1419
    iget-object v0, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method


# virtual methods
.method public addAlternateSourceIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "alt"    # Landroid/content/Intent;

    .prologue
    .line 1511
    iget-object v0, p0, mSourceIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1512
    return-void
.end method

.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .registers 5
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 1502
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v0, v1, p0, p1, p2}, <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1507
    iget-object v0, p0, mSourceIntents:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1497
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1477
    invoke-virtual {p0}, getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1492
    :cond_b
    :goto_b
    return-object v0

    .line 1481
    :cond_c
    iget-object v1, p0, mBadge:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4c

    iget-object v1, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_4c

    iget-object v1, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_4c

    iget-object v1, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4c

    .line 1483
    iget-object v1, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v1, :cond_b

    iget-object v1, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->icon:I

    iget-object v2, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq v1, v2, :cond_b

    .line 1490
    iget-object v0, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mBadge:Landroid/graphics/drawable/Drawable;

    .line 1492
    :cond_4c
    iget-object v0, p0, mBadge:Landroid/graphics/drawable/Drawable;

    goto :goto_b
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1470
    iget-object v0, p0, mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1466
    iget-object v0, p0, mDisplayLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1523
    iget-object v0, p0, mExtendedInfo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .prologue
    .line 1462
    iget-object v0, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 1532
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 1527
    iget-object v0, p0, mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hasDisplayIcon()Z
    .registers 2

    .prologue
    .line 1519
    iget-object v0, p0, mDisplayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1515
    iput-object p1, p0, mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 1516
    return-void
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1539
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->getResolverGuideIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1540
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->getResolverGuideIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1545
    :goto_19
    const/4 v0, 0x1

    return v0

    .line 1543
    :cond_1b
    iget-object v0, p0, mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_19
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1551
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->getResolverGuideIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1552
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->getResolverGuideIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 1557
    :goto_1a
    const/4 v0, 0x1

    return v0

    .line 1555
    :cond_1c
    iget-object v0, p0, mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    goto :goto_1a
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1562
    iget-object v0, p0, mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1563
    const/4 v0, 0x0

    return v0
.end method
