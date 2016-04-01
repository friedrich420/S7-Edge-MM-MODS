.class public Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
.super Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListAdapter"
.end annotation


# static fields
.field private static final MAX_SERVICE_TARGETS:I = 0x4

.field public static final TARGET_BAD:I = -0x1

.field public static final TARGET_CALLER:I = 0x0

.field public static final TARGET_SERVICE:I = 0x1

.field public static final TARGET_STANDARD:I = 0x2


# instance fields
.field private final mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLateFee:F

.field private final mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .registers 22
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    .line 785
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    .line 772
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mServiceTargets:Ljava/util/List;

    .line 773
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mCallerTargets:Ljava/util/List;

    .line 775
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, mLateFee:F

    .line 777
    new-instance v1, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    iput-object v1, p0, mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    .line 787
    if-eqz p4, :cond_ee

    .line 788
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 790
    .local v12, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p1, Lcom/android/internal/app/ChooserActivity;->mExtraIntentList:Ljava/util/List;

    if-eqz v1, :cond_42

    iget-object v1, p1, Lcom/android/internal/app/ChooserActivity;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_42

    .line 791
    iget-object v1, p1, Lcom/android/internal/app/ChooserActivity;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 795
    :cond_42
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_43
    move-object/from16 v0, p4

    array-length v1, v0

    if-ge v10, v1, :cond_ee

    .line 796
    aget-object v3, p4, v10

    .line 797
    .local v3, "ii":Landroid/content/Intent;
    if-nez v3, :cond_4f

    .line 795
    :goto_4c
    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    .line 800
    :cond_4f
    const/4 v1, 0x0

    invoke-virtual {v3, v12, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 801
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v9, :cond_6f

    .line 802
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 807
    :cond_6f
    const-string v1, "application/vnd.samsung.android.memo"

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 808
    iget-object v1, p1, Lcom/android/internal/app/ChooserActivity;->mExtraIntentList:Ljava/util/List;

    if-eqz v1, :cond_9c

    .line 809
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mExtraIntentList added: intent="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v1, p1, Lcom/android/internal/app/ChooserActivity;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    :cond_9c
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 816
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 817
    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 819
    .local v13, "userManager":Landroid/os/UserManager;
    instance-of v1, v3, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_cf

    move-object v11, v3

    .line 820
    check-cast v11, Landroid/content/pm/LabeledIntent;

    .line 821
    .local v11, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 822
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 823
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 824
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 825
    iget v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    iput v1, v4, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 827
    .end local v11    # "li":Landroid/content/pm/LabeledIntent;
    :cond_cf
    invoke-virtual {v13}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 828
    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 829
    const/4 v1, 0x0

    iput v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 831
    :cond_db
    iget-object v8, p0, mCallerTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v4, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    move-object v7, v3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4c

    .line 835
    .end local v3    # "ii":Landroid/content/Intent;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v10    # "i":I
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "userManager":Landroid/os/UserManager;
    :cond_ee
    return-void
.end method

.method private insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V
    .registers 7
    .param p1, "chooserTargetInfo"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .prologue
    .line 970
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v2

    .line 971
    .local v2, "newScore":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, mServiceTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_b
    if-ge v1, v0, :cond_26

    .line 972
    iget-object v4, p0, mServiceTargets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .line 973
    .local v3, "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_23

    .line 974
    iget-object v4, p0, mServiceTargets:Ljava/util/List;

    invoke-interface {v4, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 979
    .end local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :goto_22
    return-void

    .line 971
    .restart local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 978
    .end local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_26
    iget-object v4, p0, mServiceTargets:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method private pruneServiceTargets()V
    .registers 4

    .prologue
    .line 983
    iget-object v2, p0, mServiceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_24

    .line 984
    iget-object v2, p0, mServiceTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .line 985
    .local v0, "cti":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 987
    iget-object v2, p0, mServiceTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 983
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 990
    .end local v0    # "cti":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_24
    return-void
.end method


# virtual methods
.method public addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V
    .registers 12
    .param p1, "origTarget"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const v8, 0x3f733333    # 0.95f

    .line 934
    invoke-virtual {p0, p1}, getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v3

    .line 935
    .local v3, "parentScore":F
    iget-object v6, p0, mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {p2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 936
    const/4 v2, 0x0

    .line 937
    .local v2, "lastScore":F
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_12
    if-ge v1, v0, :cond_38

    .line 938
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    .line 939
    .local v4, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v5

    .line 940
    .local v5, "targetScore":F
    mul-float/2addr v5, v3

    .line 941
    iget v6, p0, mLateFee:F

    mul-float/2addr v5, v6

    .line 942
    if-lez v1, :cond_2a

    cmpl-float v6, v5, v2

    if-ltz v6, :cond_2a

    .line 945
    mul-float v5, v2, v8

    .line 947
    :cond_2a
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    iget-object v7, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v6, v7, p1, v4, v5}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V

    invoke-direct {p0, v6}, insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V

    .line 957
    move v2, v5

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 960
    .end local v4    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v5    # "targetScore":F
    :cond_38
    iget v6, p0, mLateFee:F

    mul-float/2addr v6, v8

    iput v6, p0, mLateFee:F

    .line 962
    iget-object v6, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity;->getPagerAdapter()Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    move-result-object v6

    if-eqz v6, :cond_55

    .line 963
    iget-object v6, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v7, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->access$100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v7

    invoke-virtual {v7}, getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ChooserActivity;->updatePagerAdapter(I)V

    .line 967
    :goto_54
    return-void

    .line 965
    :cond_55
    invoke-virtual {p0}, notifyDataSetChanged()V

    goto :goto_54
.end method

.method public getCallerTargetCount()I
    .registers 2

    .prologue
    .line 872
    iget-object v0, p0, mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 863
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, getServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 763
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayInfoCount()I
    .registers 2

    .prologue
    .line 763
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getDisplayInfoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 2

    .prologue
    .line 763
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFilteredPosition()I
    .registers 2

    .prologue
    .line 763
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 908
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 763
    invoke-virtual {p0, p1}, getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItemId(I)J
    .registers 4
    .param p1, "x0"    # I

    .prologue
    .line 763
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getKnoxWorkspace(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 763
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getKnoxWorkspace(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKnoxWorkspaceSize()I
    .registers 2

    .prologue
    .line 763
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getKnoxWorkspaceSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 2

    .prologue
    .line 763
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPositionTargetType(I)I
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 884
    const/4 v1, 0x0

    .line 886
    .local v1, "offset":I
    invoke-virtual {p0}, getCallerTargetCount()I

    move-result v0

    .line 887
    .local v0, "callerTargetCount":I
    if-ge p1, v0, :cond_9

    .line 888
    const/4 v4, 0x0

    .line 903
    :goto_8
    return v4

    .line 890
    :cond_9
    add-int/2addr v1, v0

    .line 892
    invoke-virtual {p0}, getServiceTargetCount()I

    move-result v2

    .line 893
    .local v2, "serviceTargetCount":I
    sub-int v4, p1, v1

    if-ge v4, v2, :cond_14

    .line 894
    const/4 v4, 0x1

    goto :goto_8

    .line 896
    :cond_14
    add-int/2addr v1, v2

    .line 898
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    .line 899
    .local v3, "standardTargetCount":I
    sub-int v4, p1, v1

    if-ge v4, v3, :cond_1f

    .line 900
    const/4 v4, 0x2

    goto :goto_8

    .line 903
    :cond_1f
    const/4 v4, -0x1

    goto :goto_8
.end method

.method public bridge synthetic getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 763
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v0

    return v0
.end method

.method public getServiceTargetCount()I
    .registers 3

    .prologue
    .line 876
    iget-object v0, p0, mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getStandardTargetCount()I
    .registers 2

    .prologue
    .line 880
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .registers 3

    .prologue
    .line 868
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v0

    invoke-virtual {p0}, getServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic handlePackagesChanged()V
    .registers 1

    .prologue
    .line 763
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    return-void
.end method

.method public bridge synthetic hasExtendedInfo()Z
    .registers 2

    .prologue
    .line 763
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasExtendedInfo()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasFilteredItem()Z
    .registers 2

    .prologue
    .line 763
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .registers 3
    .param p1, "x0"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 763
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 845
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListRebuilt()V
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, mServiceTargets:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 852
    invoke-direct {p0}, pruneServiceTargets()V

    .line 854
    :cond_7
    return-void
.end method

.method public bridge synthetic resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Z

    .prologue
    .line 763
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public shouldGetResolvedFilter()Z
    .registers 2

    .prologue
    .line 858
    const/4 v0, 0x1

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .registers 3
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .registers 8
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 913
    const/4 v1, 0x0

    .line 915
    .local v1, "offset":I
    invoke-virtual {p0}, getCallerTargetCount()I

    move-result v0

    .line 916
    .local v0, "callerTargetCount":I
    if-ge p1, v0, :cond_10

    .line 917
    iget-object v3, p0, mCallerTargets:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 927
    :goto_f
    return-object v3

    .line 919
    :cond_10
    add-int/2addr v1, v0

    .line 921
    invoke-virtual {p0}, getServiceTargetCount()I

    move-result v2

    .line 922
    .local v2, "serviceTargetCount":I
    sub-int v3, p1, v1

    if-ge v3, v2, :cond_24

    .line 923
    iget-object v3, p0, mServiceTargets:Ljava/util/List;

    sub-int v4, p1, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_f

    .line 925
    :cond_24
    add-int/2addr v1, v2

    .line 927
    if-eqz p2, :cond_2e

    sub-int v3, p1, v1

    invoke-super {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    goto :goto_f

    :cond_2e
    sub-int v3, p1, v1

    invoke-virtual {p0, v3}, getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v3

    goto :goto_f
.end method
