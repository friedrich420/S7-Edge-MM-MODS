.class final Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChooserTargetInfo"
.end annotation


# instance fields
.field private final mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mBadgeContentDescription:Ljava/lang/CharSequence;

.field private mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private final mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final mFillInFlags:I

.field private final mFillInIntent:Landroid/content/Intent;

.field private final mModifiedScore:F

.field private final mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;Landroid/content/Intent;I)V
    .registers 6
    .param p2, "other"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .prologue
    .line 644
    iput-object p1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 645
    iget-object v0, p2, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iput-object v0, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 646
    iget-object v0, p2, mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 647
    iget-object v0, p2, mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput-object v0, p0, mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 648
    iget-object v0, p2, mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 649
    iget-object v0, p2, mBadgeContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 650
    iget-object v0, p2, mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 651
    iput-object p3, p0, mFillInIntent:Landroid/content/Intent;

    .line 652
    iput p4, p0, mFillInFlags:I

    .line 653
    iget v0, p2, mModifiedScore:F

    iput v0, p0, mModifiedScore:F

    .line 654
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V
    .registers 13
    .param p2, "sourceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "chooserTarget"    # Landroid/service/chooser/ChooserTarget;
    .param p4, "modifiedScore"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 615
    iput-object p1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-object v5, p0, mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 616
    iput-object p2, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 617
    iput-object p3, p0, mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 618
    iput p4, p0, mModifiedScore:F

    .line 619
    if-eqz p2, :cond_33

    .line 620
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 621
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_33

    .line 622
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 623
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_33

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_33

    .line 624
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 625
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 626
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 630
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_33
    invoke-virtual {p3}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 632
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v1, :cond_48

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_3d
    iput-object v4, p0, mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 634
    if-eqz p2, :cond_4a

    .line 635
    iput-object v5, p0, mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 640
    :goto_43
    iput-object v5, p0, mFillInIntent:Landroid/content/Intent;

    .line 641
    iput v7, p0, mFillInFlags:I

    .line 642
    return-void

    :cond_48
    move-object v4, v5

    .line 632
    goto :goto_3d

    .line 637
    :cond_4a
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, getResolvedIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_43
.end method

.method private getBaseIntentToSend()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 680
    iget-object v2, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_14

    iget-object v2, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 682
    .local v0, "result":Landroid/content/Intent;
    :goto_a
    if-nez v0, :cond_1b

    .line 683
    const-string v2, "ChooserActivity"

    const-string v3, "ChooserTargetInfo: no base intent available to send"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v0    # "result":Landroid/content/Intent;
    :goto_13
    return-object v0

    .line 680
    :cond_14
    iget-object v2, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_a

    .line 685
    .restart local v0    # "result":Landroid/content/Intent;
    :cond_1b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 686
    .end local v0    # "result":Landroid/content/Intent;
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, mFillInIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2b

    .line 687
    iget-object v2, p0, mFillInIntent:Landroid/content/Intent;

    iget v3, p0, mFillInFlags:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 689
    :cond_2b
    iget-object v2, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->access$300(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-object v0, v1

    .local v0, "result":Ljava/lang/Object;
    goto :goto_13
.end method


# virtual methods
.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .registers 5
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 749
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v0, v1, p0, p1, p2}, <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .registers 4
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
    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v1, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v1, :cond_17

    .line 757
    iget-object v1, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_17
    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, mBadgeContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 739
    iget-object v0, p0, mBadgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 729
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiedScore()F
    .registers 2

    .prologue
    .line 657
    iget v0, p0, mModifiedScore:F

    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_a
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 670
    iget-object v0, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_b

    .line 671
    iget-object v0, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 676
    :goto_a
    return-object v0

    .line 672
    :cond_b
    iget-object v0, p0, mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_21

    .line 673
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 676
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_b

    .line 663
    iget-object v0, p0, mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 665
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_a
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 696
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 701
    invoke-direct {p0}, getBaseIntentToSend()Landroid/content/Intent;

    move-result-object v0

    .line 702
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_9

    .line 703
    const/4 v1, 0x0

    .line 708
    :goto_8
    return v1

    .line 705
    :cond_9
    iget-object v2, p0, mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 706
    iget-object v2, p0, mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 707
    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    goto :goto_8
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 713
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
